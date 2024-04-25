function Barometer()
    global SENSOR;
    global TIME;
    global EARTH;
    global NAV;
    %=================================================================
    %                           Variable
    %=================================================================
    idxT        = TIME.idx;
    T_0         = SENSOR.temper + 273.15;    % [K]
    P_0         = SENSOR.press(1);              % [Pa]
    P           = SENSOR.press(idxT);           % [Pa]
    g0          = EARTH.g0;                     % [m/s^2]
    R_star      = 8.31446261815324;             % [J/K/mol]
    M           = 0.0289644;                    % [kg/mol]
    Gamma       = 0.0064;                       % [K/m]
    H0          = SENSOR.height;                % [m]
    
    %=================================================================
    %                       Compute Haid
    %=================================================================
    Hp = H0 + (T_0/Gamma) * ((P/P_0)^((-R_star*Gamma)/(g0*M))-1);
    NAV.VERTICAL.hAid(idxT) = Hp;
end
