class conditionalII
  Real D;
  Real S;
  Real p(start=100);
  
parameter Real a = 500, b=2, c=300, d = 4, k = 2, p_min=50;

equation
  // demanda y oferta usan el precio efectivo
  D = a - b*p ;
  S = c + d*p;
  
  // dinamica se aplica sonre el precio latente
  der(p) = if p > p_min then k*(D - S)
          else 0;
          
annotation(
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.002));
end conditionalII;