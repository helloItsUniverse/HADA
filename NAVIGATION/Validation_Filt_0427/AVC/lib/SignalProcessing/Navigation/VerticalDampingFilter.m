function VerticalDampingFilter()
    
    Barometer();
    
    %==========================
    %   Variable Declaration
    %==========================
    global TIME;
    global EARTH;
    global NAV;
    
    Ts          = TIME.ts;
    idx         = TIME.idx;
    Vert_g0     = EARTH.g0;
    Vert_Re     = EARTH.Req;
    Haid        = NAV.VERTICAL.hAid(idx);
    Hpure       = NAV.geoPos(3,idx);
    
    persistent Integ_C3
    if idx == 1
        Integ_C3 = 0;
    end

    tau = 1; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Ws  = sqrt(Vert_g0/Vert_Re);
    
    C1 = 3 / tau;
    C2 = 2*Ws^2 + 3/tau^2;
    C3 = 1/tau^3;
    
    Hvert_in  = Hpure - Haid;
    
    altC2 = C2*Hvert_in;
    altC3 = C3*Hvert_in;

    ACC_BIAS = altC2 + Integ_C3;
    VEL_BIAS = C1 * Hvert_in;
    
    Integ_C3 = Integ_C3 + altC3*Ts;
    
    NAV.VERTICAL.accBias(idx)   = ACC_BIAS;
    NAV.VERTICAL.velBias(idx)   = VEL_BIAS;
    
    NAV.AeN(3,idx)              = -NAV.AeN(3,idx) + ACC_BIAS;
    NAV.VeN(3,idx)              = -NAV.VeN(3,idx) + VEL_BIAS;

end

