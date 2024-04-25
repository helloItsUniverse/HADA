function GeoLocationChange()
global TIME;
global NAV;
global EARTH;

idx = TIME.idx;

%---------------------변수 정의-------------------
L = NAV.geoPos(1,idx);
h = NAV.geoPos(3,idx);

Vn = NAV.VeN(1,idx); 
Ve = NAV.VeN(2,idx);
Vd = NAV.VeN(3,idx);

R_N = EARTH.Rn;
R_E = EARTH.Re;

%------------------지리 위치 변화-----------------
NAV.geoPosDot(1,idx) = Vn / (R_N + h);
NAV.geoPosDot(2,idx) = Ve / ( (R_E + h)*cos(L) );
NAV.geoPosDot(3,idx) = -Vd;

end