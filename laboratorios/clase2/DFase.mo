class DFase
  Real D;
  Real S;
  Real p(start=100);
  Real v(start=0); // velocidad del tiempo
  Real p_eq;
  Real hat_D, hat_S;
  // variaciones porcentuales de D y S
  parameter Real a = 500, b = 2, c = 300, d = 4, k = 2, p_min = 50;
parameter Real gamma=0.1; 
//amortiguamiento
equation 
  D= a -b*p;
  S= c +d*p;
  
  // Equilibrio
  p_eq = (a -c)/(b+d);
  
  // dinamica 2do orden
  der(p) = v;
  der(v) = k*(D - S) - gamma*v;
  
  hat_D = der(D)/D;
  hat_S = der(S)/S;
annotation(
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.002));
end DFase;