function [F] = Satellite_Simulation_3D(Obj, accel)
%determines the inital velocty magnitude as well as the x, y, z components
%{
Input Arguments:
Obj (array)
Obj(1) = Object's  mass (kg)
Obj(2) = inital x pos (km)
Obj(3) = inital y pos (km)
Obj(4) = inital z pos (km) 

accel (x, y, z components of accel) (m/s^2)
accel(1) = x 
accel(2) = y
accel(3) = z

Output Arguements:
F (Array)
F(1) = magnitude of force (N)
F(2) = x component of force(N)
F(3) = y component of force(N)
F(4) = z component of force(N)

CDA (Coordinate directional angles)

a (x, y, z components of accleration)

%}

% Constants
E_radius = 6371; % Earth's radius (km)
E_mass = 5.9722E24; % Earth's mass (kg)
G = 6.6743E-11; % gravatational constant (m^3kg^-1s^-2)

%Variables 
alt = sqrt(Obj(2)^2 + Obj(3)^2 + Obj(4)^2);
r = E_radius + alt; % Satellite radius from earth center (km)
u_r = [Obj(2)/r,Obj(3)/r, Obj(4)/r];
F_E(1) = (G*E_mass.*Obj(1))./((r*1000).^2); % Magnitude of force and its components (N)
F_E(2) = F_E(1).*u_r(1); 
F_E(3) = F_E(1).*u_r(2); 
F_E(4) = F_E(1).*u_r(3);
F_accel = Obj(1).*accel;
F = F_accel + F_E(2:4);

end
