model simple_market

Real D;
Real S;
Real p (start=100);
Real p_eq;
Real derD;
Real derS;

parameter Real a= 500, b=2, c = 300, d = 4, k= 2;

equation
D = a - b * p;
S = c + d *p;
der(p) = k * (D-S);

p_eq = (a-c)/(b+d);
derD = der(D);
derS= der(S);

annotation(
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.002));
end simple_market;