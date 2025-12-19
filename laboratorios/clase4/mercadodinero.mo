model mercadodinero
  //Mercado de dinero

  Real i(start=0.05); //"Tasa de interés"

  //Oferta de dinero
  Real Ms;//"Oferta de dinero"
  parameter Real H=90; //"Base monetaria"
  parameter Real mm=7; //"Multiplicador monetario"
  
  //Demanda de dinero
  Real Md(start=630); //"Demanda de dinero"
  parameter Real Y=2400; //"Ingreso"
  parameter Real k=0.5; //"Sensibilidad de la demanda de dinero al nivel de ingreso"
  parameter Real l=10000; //"Sensibilidad de la demanda de dinero a la tasa de interés"
  Real Mdy; //"Demanda de dinero por motivos transaccionales"
  Real Mdi; //"Demanda de dinero por motivos especulativos"
    
  parameter Real vi=0.001; //"Velocidad de ajuste de la tasa de interés"

  

equation

Md = k*Y - l*i;
Mdy = k*Y;
Mdi = - l*i;

Ms = H*mm;

der(i)= vi* (Md-Ms); // la tasa de intrés ajusta según la demanda de dinero multiplicado por parámetro


annotation(
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
  experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.002));
end mercadodinero;