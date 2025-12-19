model mercadobienes
  //Mercado de Bienes
  Real DA; //"Demanda agregada"
  Real Y(start=2400); //"Ingreso"
  parameter Real i=0.05; //"Tasa de interés"
  Real VE; //"Variación de Existencias"
  Real stock(start=100);//"Existencias"
  parameter Real vve=0.7; //"Velocidad de ajuste de producción a la variación de existencias"
  
  //Consumo
  Real C(start=1500); //"Consumo"
  parameter Real c=0.75; //"Propensión marginal a consumir"
  parameter Real C0=100; //"Componente autónomo del consumo"
  Real Cy; //"Componente variable del consumo" --> Var resumen que muestra todo el cons dependiente del ingreso
  
  
  //Inversión
  Real I(start=550); //"Inversión"
  parameter Real I0=300; //"Componente autónomo de la inversión"
  parameter Real a=0.15; //"Sensibilidad de la inversión al ingreso"
  parameter Real b=2500; //"Sensibilidad de la inversión a la tasa de interés"
  Real Iy; //"Componente de la inversión dependiente del ingreso"
  Real Ii; //"Componente de la inversión dependiente de la tasa de interés"
    
  //Política fiscal
  Real G;//"Consumo e Inversión públicos"
  parameter Real G0=100; //"Componente autónomo del Gasto Público"
  parameter Real TR=50; //"Transferencias al sector privado"
  parameter Real T0=75; //"Impuestos de cuantía fija"
  parameter Real t=0.2; //"Alícuota impositiva sobre el ingreso"
  parameter Real Gt=200;//"Política de gasto anticíclica"
  //parameter Real g=0; //"Intensidad de la política anticíclica"
  
  //Resultado fiscal
  Real recaudacion;//"Ingresos fiscales"
  Real egresos;//"Egresos fiscales"
  Real superavit;//"Resultado fiscal"
  Real tesoro (start=500);//"Patrimonio del tesoro"
  
  

equation
C = C0 + c*(TR-T0)+c*(1-t)*Y;
Cy = c*(TR-T0)+c*(1-t)*Y;

I = I0 + a*Y - b*i;
Iy= a*Y;
Ii= - b*i;

G = G0+Gt;
//der(Gt)=superavit*g;

DA = C + I + G;
VE = Y - DA;
der(Y)= vve* VE*(-1); // si la demanda es menor a Y cae Y
der(stock) = VE;

recaudacion = c*t*Y+T0;
egresos = TR+G;
superavit = recaudacion - egresos;
der(tesoro) = superavit;


annotation(
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
  experiment(StartTime = 0, StopTime = 50, Tolerance = 1e-06, Interval = 0.2));
end mercadobienes;