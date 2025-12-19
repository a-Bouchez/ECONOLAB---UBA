class conditional
  Real D;
  Real S;
  Real p(start=100);
  Real d_eff;
  Real s_eff;

 parameter Real a = 500, b = 2, c = 300, d = 4, k = 2, p_min = 50;
 
equation
  // demanda y oferta usan el precio efectivo
  D = a - b*p ;
  S = c + d*p;
  
  // dinamica se aĺica sobre el precio latente
  der(p) = k*(D-S);
  
  // precio efectivo es el min entre p y el techo
  d_eff= if p<p_min then a-b*p_min else D;
  s_eff= if p<p_min then c+d*p_min else S;
  
annotation(
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.002));
end conditional;