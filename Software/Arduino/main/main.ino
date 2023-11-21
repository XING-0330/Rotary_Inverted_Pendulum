// Include library 
#include <SparkFun_TB6612.h>
#include "pid.h"
#include "lowpass_filter.h"

// Mechanical parameter
float J = 0.0004;
float m = 0.02;
float g = 9.8;
float l = 0.12; 

// Motor_A
#define ENCODER_A_PIN 2 
#define ENCODER_B_PIN 3
#define ENC_COUNT_REV 97

float pulse_A = 0;
float theta_A = 0;
float pre_theta_A = 0;
float pre_1500_theta_A = 0;
float omega_A = 0;

long previousMillis_A = 0;
long currentMillis_A = 0;

Motor motorA = Motor(10, 9, 11, 1, 8);

// Motor_B
int theta_B = 0;
int pre_theta_B = 0;
int theta_B_V2 = 0;
float theta_B_V2_rad = 0;

float omega_B = 0;
float omega_B_rad = 0;
long previousMillis_B = 0;
long currentMillis_B = 0;

// PID
PIDController pid_outside = PIDController{42, 0, 96, 10000.0, 255.0};
PIDController pid_inside = PIDController{0.385, 0.0, 1.707, 1000.0, 255.0};

// Other
int t = 0;
int num = 0;
int interval = 20;
float delta = float(interval)/1000;
int count_output;
float error_Outside = 0;
float error_Inside = 0;
float output_1 = 0;
float output_2 = 0;
int VM_pwm = 0;
float Position_target = 0;
float Energy_target = 2*m*g*l*100;
float Energy = 0; 

float SW_pwm = 0;

LowPassFilter LPF = LowPassFilter(0.01);
 
/* ===================================================================================== */
void setup() {
  Serial.begin(115200);
  
  // Motor_A
  pinMode(ENCODER_A_PIN, INPUT_PULLUP);
  pinMode(ENCODER_B_PIN, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(ENCODER_A_PIN), interrupt_change_A, CHANGE);
  
  // Motor_B
  pinMode(A15, INPUT);
}

void loop() 
{
  t = micros()/1.0e3;
  routine(); 

// Swing up Controller
  swing_up(32);
  SW_pwm = constrain(SW_pwm, -255, 255);
  
  if(abs(theta_B_V2) < 14)
  {
    motorA.drive(SW_pwm,1);
  }
 
// Balance Controller
  if(theta_B > 170 && theta_B < 190)
  {
    if((t%30 == 0)) output_2 = Circle_position(Position_target);
    else if(t%5 == 0)
    {
      output_1 = Circle_angle(180);
      VM_pwm = output_1 - output_2;  
      motorA.drive(VM_pwm,1);
    } 
  }

  // Safety setting
  if(abs(theta_A) > 600)
  {
    motorA.brake();
    pulse_A = 0; 
  }
  
  Print();
  
}
// function 
/* ===================================================================================== */
void routine(){
  angle_A();
  angle_B();
  speed_calculate_B();

  Energy_calculate();
}

/* Angle calculate */
// Motor_A
void interrupt_change_A(){

  (digitalRead(ENCODER_A_PIN) == digitalRead(ENCODER_B_PIN)) ? --pulse_A : ++pulse_A;
  angle_A();
}

void angle_A(){
  // degree
  theta_A = (pulse_A*360/97)*0.5;
}

void speed_calculate_A() {

  currentMillis_A = millis();
 
  if (currentMillis_A - previousMillis_A > interval) {
 
    previousMillis_A = currentMillis_A;
    
    omega_A = (float)( (theta_A - pre_theta_A)/delta );
    
    pre_theta_A = theta_A;
   
  }
}

// Motor_B
void angle_B(){
  // degree - V1 (0 - 90 - 180 - 270 - 360)
  theta_B = map(analogRead(A15),0,1023,0,359);
  
  // degree - V2 (+180 - +90 - 0 - (-90) - (-180))
  if(theta_B > 180 && theta_B < 360)(theta_B_V2 = theta_B - 360);
  else if(theta_B >= 0 && theta_B <= 180)(theta_B_V2 = theta_B);
  theta_B_V2_rad = (float)(theta_B_V2)*3.14/180; 
}

void speed_calculate_B() {  // speed calculate must according to theta_B_V2 ,because value must continue

  currentMillis_B = millis();
 
  if (currentMillis_B - previousMillis_B > interval) {
 
    previousMillis_B = currentMillis_B;
    
    omega_B = (float)( (theta_B_V2 - pre_theta_B)/delta );

    omega_B_rad = omega_B*3.14/180;
    
    pre_theta_B = theta_B_V2;
   
  }
}

/* Banlance ontroller design */
// Angle_LOOP
float Circle_angle(int Target_1)
{
  error_Outside = (Target_1 - theta_B); 
  output_1 = pid_outside(error_Outside);
  return output_1; 
}

// Position_LOOP
float Circle_position(int Target_2)
{
  error_Inside = (Target_2 - theta_A);
  output_2 = pid_inside(error_Inside);
  output_2 = LPF(output_2);
  return output_2;
}

/* Swing up ontroller design */
// Energy
void Energy_calculate()
{
  float H = l*(1 - cos(theta_B_V2_rad)); 
  Energy = 0.5*J*pow(omega_B_rad, 2) + m*g*H;
  Energy = 100*Energy;
}
// Swing up
void swing_up(float Ke)
{
  SW_pwm = Ke*(Energy - Energy_target)*sign(omega_B_rad*cos(theta_B_V2_rad));
}

float sign(float x)
{
  if(x>1)x = 1;
  else if(x<-1)x = -1;
  return x;
}

/* Output */
// Print ( loop 20 times print ince )
void Print(){
  count_output++;
  if(count_output >= 20)
  {
    count_output = 0;
    
    Serial.print(theta_A);
    Serial.print("\t");
    Serial.print(theta_B);
    Serial.print("\t");
    Serial.print(theta_B_V2);
    Serial.print("\t");
    Serial.println(theta_B_V2_rad);
  }
}
