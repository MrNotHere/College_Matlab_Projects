function [F, CDA, v, a] = Satellite_Simulation_3D(Obj)
%determines the inital velocty magnitude as well as the x, y, z components
%{
Input Arguments:
obj (array)
Obj(1) = Object's  mass (kg)
Obj(2) = inital x pos (km)
Obj(3) = inital y pos (km)
Obj(4) = inital z pos (km) 
Obj(5) = Object's inital velocity (km/s)
Obj(6) = Object's inital accel (km/s)

Output Arguements:
F (Array)
F(1) = magnitude of force (N)
F(2) = x component of force(N)
F(3) = y component of force(N)
F(4) = z component of force(N)

CDA (Coordinate directional angles)

v (x, y, z components of velocity) 
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
F(1) = G*(E_mass.*Obj(1))./(r/1000).^2; % Magnitude of force and its components (N)
F(2) = F(1).*u_r(1); 
F(3) = F(1).*u_r(2); 
F(4) = F(1).*u_r(3);
CDA = [acos(F(2)./F(1)), acos(F(3)./F(1)), acos(F(4)./F(1))];
v = [Obj(5).*u_r(1), Obj(5).*u_r(2), Obj(5).*u_r(3)];
a = [Obj(6).*u_r(1), Obj(6).*u_r(2), Obj(6).*u_r(3)];
end

