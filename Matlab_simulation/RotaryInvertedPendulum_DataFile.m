% Simscape(TM) Multibody(TM) version: 7.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(11).translation = [0.0 0.0 0.0];
smiData.RigidTransform(11).angle = 0.0;
smiData.RigidTransform(11).axis = [0.0 0.0 0.0];
smiData.RigidTransform(11).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [-55.532244600425464 21.047474759301512 22.275641148113124];  % mm
smiData.RigidTransform(1).angle = 2.1051696572827434;  % rad
smiData.RigidTransform(1).axis = [0.57023933799921389 0.58089758438348227 0.58084859804914168];
smiData.RigidTransform(1).ID = 'B[pendulum-1:-:bearing-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-9.7699626167013776e-15 -3.2070700262121221e-15 5.9999999999999964];  % mm
smiData.RigidTransform(2).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(2).axis = [-1 5.4101064278633121e-33 -1.109366696207852e-16];
smiData.RigidTransform(2).ID = 'F[pendulum-1:-:bearing-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 0 51.000000000000007];  % mm
smiData.RigidTransform(3).angle = 0;  % rad
smiData.RigidTransform(3).axis = [0 0 0];
smiData.RigidTransform(3).ID = 'B[Encoder-2:-:pendulum-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-55.519344607572172 20.907581045999166 142.2755589119979];  % mm
smiData.RigidTransform(4).angle = 2.1051696572827434;  % rad
smiData.RigidTransform(4).axis = [0.57023933799921378 0.58089758438348238 0.58084859804914168];
smiData.RigidTransform(4).ID = 'F[Encoder-2:-:pendulum-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [108.33599733816204 22.490000000000705 142.27476885995301];  % mm
smiData.RigidTransform(5).angle = 2.0943455122397387;  % rad
smiData.RigidTransform(5).axis = [0.57733373819188594 0.57733373819188594 0.57738332976521411];
smiData.RigidTransform(5).ID = 'B[MyArm-1:-:Encoder-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-2.1316282072803006e-14 -9.9475983006414026e-14 35.999999999999083];  % mm
smiData.RigidTransform(6).angle = 9.2879231042086245e-16;  % rad
smiData.RigidTransform(6).axis = [-0.97933029023932883 -0.20226760150788459 9.199074315883515e-17];
smiData.RigidTransform(6).ID = 'F[MyArm-1:-:Encoder-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [31.00000000000211 22.500000000000806 95.939999999999188];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = 'B[MyArm-1:-:MyBottom-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [30.999999999999034 22.500000000000782 84.233536808296719];  % mm
smiData.RigidTransform(8).angle = 1.1107649934270856e-16;  % rad
smiData.RigidTransform(8).axis = [0.99954168300197632 -0.030272494802651023 -1.6805108146920022e-18];
smiData.RigidTransform(8).ID = 'F[MyArm-1:-:MyBottom-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [-51.334279441815376 22.490000000000705 105.10078116513638];  % mm
smiData.RigidTransform(9).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(9).axis = [1 0 0];
smiData.RigidTransform(9).ID = 'B[MyArm-1:-:synchronous wheel-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [0.11729577766202404 0.0089235885797762649 74.103450195118313];  % mm
smiData.RigidTransform(10).angle = 3.1414722329384155;  % rad
smiData.RigidTransform(10).axis = [0.99999968681773521 -4.7652386562565971e-08 -0.00079143188540944768];
smiData.RigidTransform(10).ID = 'F[MyArm-1:-:synchronous wheel-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [-204.90715726992627 -28.862262068260435 22.564187279727534];  % mm
smiData.RigidTransform(11).angle = 1.5707963267949003;  % rad
smiData.RigidTransform(11).axis = [-1 -0 -0];
smiData.RigidTransform(11).ID = 'RootGround[MyBottom-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(6).mass = 0.0;
smiData.Solid(6).CoM = [0.0 0.0 0.0];
smiData.Solid(6).MoI = [0.0 0.0 0.0];
smiData.Solid(6).PoI = [0.0 0.0 0.0];
smiData.Solid(6).color = [0.0 0.0 0.0];
smiData.Solid(6).opacity = 0.0;
smiData.Solid(6).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.1582315742477195;  % kg
smiData.Solid(1).CoM = [30.636943929995766 22.523521135311771 36.309771647478954];  % mm
smiData.Solid(1).MoI = [202.22598993946423 398.78016305790379 254.57424770041274];  % kg*mm^2
smiData.Solid(1).PoI = [-0.077216778232371858 6.9446356187154761 0.21735319512253681];  % kg*mm^2
smiData.Solid(1).color = [1 1 1];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'MyBottom*:*預設';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.012669782423054898;  % kg
smiData.Solid(2).CoM = [-59.525056414481973 20.908127835648727 84.323982848711779];  % mm
smiData.Solid(2).MoI = [28.057292401459708 27.924895595955949 0.26827343393554026];  % kg*mm^2
smiData.Solid(2).PoI = [0.025933652837291966 -0.0028460305549637454 0.0024498976766816056];  % kg*mm^2
smiData.Solid(2).color = [1 1 1];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'pendulum*:*預設';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.11254451575316569;  % kg
smiData.Solid(3).CoM = [0 0 18.259455719557192];  % mm
smiData.Solid(3).MoI = [22.952119268963767 22.952119268963767 20.324961508498237];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(3).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'Encoder*:*預設';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.068334503695956492;  % kg
smiData.Solid(4).CoM = [34.386375085535754 22.493273972289764 109.13867605991959];  % mm
smiData.Solid(4).MoI = [25.309560010507486 204.67114182124817 213.91237014751445];  % kg*mm^2
smiData.Solid(4).PoI = [0.0016146279119786892 -15.97445668886208 -0.00018942404807605566];  % kg*mm^2
smiData.Solid(4).color = [1 1 1];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'MyArm*:*預設';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.004111335177907554;  % kg
smiData.Solid(5).CoM = [0 0 3.0000000000000004];  % mm
smiData.Solid(5).MoI = [0.11263943271887009 0.11263943271887009 0.20131036548620493];  % kg*mm^2
smiData.Solid(5).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(5).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = 'bearing*:*預設';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.054558585491571034;  % kg
smiData.Solid(6).CoM = [0.13675095167403337 0.010403689751113788 86.39456057742855];  % mm
smiData.Solid(6).MoI = [9.2614604301666432 9.261439950710054 17.482946620742528];  % kg*mm^2
smiData.Solid(6).PoI = [0.00099003981752420205 0.013013537942146668 1.3983324075811497e-06];  % kg*mm^2
smiData.Solid(6).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = 'synchronous wheel*:*預設';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(5).Rz.Pos = 0.0;
smiData.RevoluteJoint(5).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = -179.79838050963079;  % deg
smiData.RevoluteJoint(1).ID = '[pendulum-1:-:bearing-1]';

smiData.RevoluteJoint(2).Rz.Pos = 89.583750449302457;  % deg
smiData.RevoluteJoint(2).ID = '[Encoder-2:-:pendulum-1]';

smiData.RevoluteJoint(3).Rz.Pos = -89.744626866928542;  % deg
smiData.RevoluteJoint(3).ID = '[MyArm-1:-:Encoder-2]';

smiData.RevoluteJoint(4).Rz.Pos = -0.11031878126766344;  % deg
smiData.RevoluteJoint(4).ID = '[MyArm-1:-:MyBottom-1]';

smiData.RevoluteJoint(5).Rz.Pos = 21.691306762527141;  % deg
smiData.RevoluteJoint(5).ID = '[MyArm-1:-:synchronous wheel-1]';

