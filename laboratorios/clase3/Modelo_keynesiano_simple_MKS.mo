class Modelo_keynesiano_simple_MKS

Real Consumo ;
Real Inversion ;
Real Produccion(start= 2);
Real DemandaAgregada ;
Real Ahorro ;
Real Hat_ahorro;
Real Hat_produccion;
Real Gobierno;
 
parameter Real consumoAutonomo = 1, propMarginalAConsumir = 0.8, inversionAutonoma = 1, propMarginalAInvertir = 0.02 ,velocidadRespuesta = 1.4;

equation

// Comportamineto
  Consumo = consumoAutonomo + propMarginalAConsumir * Produccion;
  Inversion = inversionAutonoma + propMarginalAInvertir * Produccion;
  DemandaAgregada = Inversion + Consumo;

// Dinamica
  der(Produccion) = velocidadRespuesta * (DemandaAgregada - Produccion);
  Gobierno = max(velocidadRespuesta * (Inversion - Ahorro), 0); 
 
// AUX
  Ahorro = Produccion - Consumo;
  Hat_ahorro = der(Ahorro)/Ahorro;
  Hat_produccion = der(Produccion) / Produccion;
  
 
annotation(
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.01));
end Modelo_keynesiano_simple_MKS;