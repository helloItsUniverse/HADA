function result = g_lToLh(L, h)
    R_e = 6378137;              % [m], 적도면에서의 지구반지름
    e2  = 6.69437999014*10^(-3); % 이심률의 제곱
    
    R_N = R_e*(1-e2)/( 1-e2*sin(L)^2 )^(1.5);
    R_E = R_e/( 1-e2*sin(L)^2 )^(0.5);
    
    result = 9.780318 ...
        * (1 + 5.3024*10^(-3)*sin(L)^2 - 5.9*10^(-6)*sin(2*L)^2) ...
        / (1 + (h/sqrt(R_N*R_E)))^2; % L, h
end