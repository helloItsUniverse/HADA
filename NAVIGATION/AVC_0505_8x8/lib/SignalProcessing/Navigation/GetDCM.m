function DCM_mat = GetDCM(phi, theta, psi) % [rad]  
     DCM_mat = GetRx(phi)*GetRy(theta)*GetRz(psi);
end

%%
function Rx = GetRx(phi)
    Rx = [1     0          0;
          0    cos(phi)   sin(phi);
          0   -sin(phi)   cos(phi)];
end

%%
function Ry = GetRy(theta)
    Ry = [cos(theta)      0           -sin(theta);
              0           1            0;
             sin(theta)   0           cos(theta)];
end

%%
function Rz = GetRz(psi)
    Rz = [cos(psi)  sin(psi)    0 ;
         -sin(psi)  cos(psi)    0 ;
             0         0        1];
end