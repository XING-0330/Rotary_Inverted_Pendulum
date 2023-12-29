#include "pid.h"
#include <Arduino.h>
#define _constrain(amt, low, high) ((amt) < (low) ? (low) : ((amt) > (high) ? (high) : (amt)))

PIDController::PIDController(float P, float I, float D, float ramp, float limit)
    : P(P), I(I), D(D), output_ramp(ramp) // PID控制器加速度限制
      ,
      limit(limit) // PID控制器输出限制
      ,
      error_prev(0.0f), output_prev(0.0f), integral_prev(0.0f)
{
    timestamp_prev = micros();
}

// PID controll function
float PIDController::operator()(float error)
{
    // 計算間隔時間
    unsigned long timestamp_now = micros();
    float Ts = (timestamp_now - timestamp_prev) * 1e-6f;
    if (Ts <= 0 || Ts > 0.5f)
        Ts = 1e-3f; // 防止時間重製造成溢出

    float proportional = P * error;
    float integral = integral_prev + I * Ts * 0.5f * (error + error_prev);
    integral = _constrain(integral, -limit, limit);
    float derivative = D * (error - error_prev) / Ts;

    float output = proportional + integral + derivative;
    output = _constrain(output, -limit, limit);

    if (output_ramp > 0)
    {
        // 對 PID 變化率進行限制
        float output_rate = (output - output_prev) / Ts;
        if (output_rate > output_ramp)
            output = output_prev + output_ramp * Ts;
        else if (output_rate < -output_ramp)
            output = output_prev - output_ramp * Ts;
    }
    // 保存值（for next Loop）
    integral_prev = integral;
    output_prev = output;
    error_prev = error;
    timestamp_prev = timestamp_now;
    return output;
}
