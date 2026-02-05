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
F(4) = z component of force(N)
%}

Obj_1 = [1,200, 310];
S_O_1 = 149.6E6 + 1000;
F_1 = Satellite_Simulation_2D(Obj_1, S_O_1);

