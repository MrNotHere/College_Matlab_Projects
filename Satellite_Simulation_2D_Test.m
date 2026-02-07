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

Obj_1 = [1, 300, 280, 180, 100, 50];
[F_1, CDA_1, v_1, a_1] = Satellite_Simulation_2D(Obj_1)

