function Euler = DCM2Euler(C)

psi     = rad2deg(atan2(C(1,2), C(1,1)));
theta   = rad2deg(-asin(C(1,3)));
phi     = rad2deg(atan2(C(2,3),C(3,3)));

Euler = [phi ; theta ; psi];
end