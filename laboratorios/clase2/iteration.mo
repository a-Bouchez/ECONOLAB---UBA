class iteration
  Real D[5];
  Real S[5];
  Real p[5];
  parameter Real a = 300, b = 2, c =300, d = 4, k = 2;
  parameter Real k_values[5] = {2, 2.5, 3, 3.5, 4};
 
 initial equation
  p= {60, 70, 80, 90, 100};
  
 equation
  for i in 1:5 loop
    D[i] = a - b * p[i];
    S[i] = c + d * p[i];
    der(p[i]) = k_values[i] * (D[i] - S[i]);
  end for;
annotation(
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.002));
end iteration;