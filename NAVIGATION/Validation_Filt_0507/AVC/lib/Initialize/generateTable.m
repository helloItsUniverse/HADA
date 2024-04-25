function generateTable()
global TIME NAV EARTH;

Ts          = TIME.ts;
Rn          = EARTH.Rn;
RE          = EARTH.Re;
We          = EARTH.We;

L           = NAV.geoPos(1,1);

q           = NAV.HORIZONT.q;
r           = NAV.HORIZONT.r;

H = [1 0 0 0 0 0; 0 1 0 0 0 0];
Q = q*[1/36*Ts^6    0               1/12*Ts^5       0              1/6*Ts^4   0; 
       0            1/36*Ts^6       0               1/12*Ts^5      0          1/6*Ts^4;
       1/12*Ts^5    0               1/4*Ts^4        0              1/2*Ts^3   0; 
       0            1/12*Ts^5       0               1/4*Ts^4       0          1/2*Ts^3;
       1/6*Ts^4     0               1/2*Ts^3        0              Ts^2       0;
       0            1/6*Ts^4        0               1/2*Ts^3       0          Ts^2];
% Q = q*[1/3*Ts^3 0 1/2*Ts^2 0; 0 1/3*Ts^3 0 1/2*Ts^2; 1/2*Ts^2 0 Ts 0; 0 1/2*Ts^2 0 Ts];
% Q = q*[0 0 0 0; 0 0 0 0; 0 0 Ts^2 0; 0 0 0 Ts^2];
R = r*eye(2);

psi = -180:5:180;   idxpsi = 1:length(psi);
v = 0:1:35;         idxv = 1:length(v);

for col = idxpsi
    for row = idxv
        Vn = cosd(psi(col))* v(row);
        Ve = sind(psi(col))* v(row);

        % System matrix(the characteristic of state vector)
        Fc =  [0                                     0       1/Rn                        0                                0            0;
            Ve*tan(L) / (RE*cos(L))               0       0                           1 / (RE*cos(L))                  0            0;
            -2*We*Ve*cos(L)-Ve^2*sec(L)^2/RE       0       0                           -2*We*sin(L)-2*Ve*tan(L)/RE      cosd(psi(col))    -sind(psi(col));
            2*We*Vn*cos(L)+Vn*Ve*sec(L)^2/RE      0       2*We*sin(L)+Ve*tan(L)/RE    Vn*tan(L)/RE                     sind(psi(col))    cosd(psi(col));
            0                                     0       0                           0                                0            0;
            0                                     0       0                           0                                0            0];

        F = eye(6)+Ts*Fc;

        [P,Kg,~]          = idare(F',H',Q,R);

        NAV.HORIZONT.Kf11(row,col) = Kg(1,1);    NAV.HORIZONT.Kf12(row,col) = Kg(2,1);
        NAV.HORIZONT.Kf21(row,col) = Kg(1,2);    NAV.HORIZONT.Kf22(row,col) = Kg(2,2);
        NAV.HORIZONT.Kf31(row,col) = Kg(1,3);    NAV.HORIZONT.Kf32(row,col) = Kg(2,3);
        NAV.HORIZONT.Kf41(row,col) = Kg(1,4);    NAV.HORIZONT.Kf42(row,col) = Kg(2,4);
        NAV.HORIZONT.Kf51(row,col) = Kg(1,5);    NAV.HORIZONT.Kf52(row,col) = Kg(2,5);
        NAV.HORIZONT.Kf61(row,col) = Kg(1,6);    NAV.HORIZONT.Kf62(row,col) = Kg(2,6);
    end
end
disp('Lookup table generated...');
end
