function Translational_Dynamics()
    %==========================================================================
    %                          Global Definition
    %==========================================================================
    global NAV;
    global EARTH;
    global TIME;
    global SENSOR;
    
    %==========================================================================
    %                          Variable Definition
    %==========================================================================
    idx         = TIME.idx;

    Latitude    = NAV.geoPos(1,idx);
    longitude   = NAV.geoPos(2,idx);
    height      = NAV.geoPos(3,idx);

    Ldot        = NAV.geoPosDot(1,idx);
    ldot        = NAV.geoPosDot(2,idx);

    R0          = sqrt(EARTH.Rn*EARTH.Re);
    glN         = [0; 0; 9.780318*( 1 + 5.3024e-3 * sin(Latitude)^2 - 5.9e-6 * sin(2*Latitude)^2 ) / ( 1+height/R0 )^2];
    
    VeN         = NAV.VeN(:,idx);
    
    Roll        = SENSOR.attitude(1,idx);
    Pitch       = SENSOR.attitude(2,idx);
    Yaw         = SENSOR.attitude(3,idx);
    fb          = SENSOR.acc(:,idx) ;

    We          = EARTH.We;

    %==========================================================================
    %                          Dynamics Calculation
    %==========================================================================
    CeN         = GetDCM(0, -Latitude-pi/2, longitude);
    CbN         = GetDCM(Roll, Pitch, Yaw)';
    
    WieE        = [0; 0; We];
    
    WenN        = [ldot*cos(Latitude); -Ldot; -ldot*sin(Latitude)];

    AeN         = CbN * (fb + NAV.AcbBias) - cross( (2*CeN*WieE + WenN) , VeN) + glN;
    
    %==========================================================================
    %                              Globalization Update
    %==========================================================================
    NAV.PURE.AeN(:,idx) = AeN;
    NAV.AeN(:,idx) = AeN;

end