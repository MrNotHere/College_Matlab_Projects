%{
Input Arguments:
Obj (array)
Obj(1) = Object's  mass (kg)
Obj(2) = inital x pos (km)
Obj(3) = inital y pos (km)
Obj(4) = inital z pos (km) 
Obj(5) = inital x vel (km/s)
Obj(6) = inital y vel (km/s)
Obj(7) = inital z vel (km/s)
Obj(8) = inital x accel (km/s^2)
Obj(9) = inital y accel (km/s^2)
Obj(10) = inital z accel (km/s^2)

accel (x, y, z components of accel) (m/s^2)
accel(1) = x 
accel(2) = y
accel(3) = z
%}

Obj_i = [1, 300, 280, 180, 20, 40, 60, 25, 50, 75];
[F_1] = Satellite_Simulation_3D(Obj_i);

%Time of 1 second has past
Obj_f = 1:10;
Obj_f(8:10) = F_1./Obj_i(1);
Obj_f(5:7) = Obj_i(5:7) + 1.*Obj_i(8:10);
Obj_f(2:4) = Obj_i(2:4) + 1.*Obj_i(5:7) + .5.*Obj_i(8:10).^2;



