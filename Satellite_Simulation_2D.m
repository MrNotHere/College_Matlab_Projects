function [F, R] = Force2D(Obj, S_O)
%determines the inital velocty magnitude as well as the x, y, z components
%{
Input Arguments:
obj (array)
Obj(1) = Object's  mass (kg)
Obj(2) = Object's inital velocity (km/s) 
Obj(3) = Object's Alitude (km)

S_O = distance between sun and satellite (Km) 
Fine if there is a way to calcuate this value

Output Arguements:
F (Array)
F(1) = magnitude of force (N)
F(2) = x component of force(N)
F(3) = y component of force(N)
%}



% Constants
E_S = 149.6E6; %distance between earth and sun (km)
E_radius = 6371; % Earth's radius (km)
E_mass = 5.9722E24; % Earth's mass (kg)
G = 6.6743E-11; % gravatational constant (m^3kg^-1s^-2)

%Variables 
r = E_radius + Obj(3); % Satellite radius from earth center (km)
t_1 = (S_O^2-E_S^2-r^2)/(-2*E_S*r);
theta = acosd(t_1); %finds angle between lines r and E_S (radians)
R(1) = r*cos(theta); % x component of pos
R(2) = r*sin(theta); % y component of pos
u_R = [R(1)./r, R(2)./r]; % Unit vector for Position

F(1) = G*(E_mass.*Obj(1))./(r/1000).^2; % Magnitude of force (N)
F(2) = F(1).*u_R(1); % X compoent 
F(3) = F(1).*u_R(2); % Y Component


end