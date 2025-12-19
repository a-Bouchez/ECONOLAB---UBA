model ISLM
  //Mercado de Bienes//
  Real DA; //"Demanda agregada"
  Real Y(start=2400); //"Ingreso"
  Real VE; //"Variación de Existencias"
  Real stock(start=100);//"Existencias"
  parameter Real vve=0.7;   //"Velocidad de ajuste de producción a la variación de existencias"
  //Consumo
  Real C(start=1500); //"Consumo"
  parameter Real c=0.75; //"Propensión marginal a consumir"
  parameter Real C0=100; //"Componente autónomo del consumo"
  Real Cy;   //"Componente variable del consumo"
  //Inversión
  Real I(start=550); //"Inversión"
  parameter Real I0=300; //"Componente autónomo de la inversión"
  parameter Real a=0.15; //"Sensibilidad de la inversión al ingreso"
  parameter Real b=2500; //"Sensibilidad de la inversión a la tasa de interés"
  Real Iy; //"Componente de la inversión dependiente del ingreso"
  Real Ii;     //"Componente de la inversión dependiente de la tasa de interés"
  //Política fiscal
  Real G;//"Consumo e Inversión públicos"
  parameter Real G0=100; //"Componente autónomo del Gasto Público"
  parameter Real TR=50; //"Transferencias al sector privado"
  parameter Real T0=75; //"Impuestos de cuantía fija"
  parameter Real t=0.2; //"Alícuota impositiva sobre el ingreso"
  parameter Real Gt=200;    //"Política de gasto anticíclica"
  //parameter Real g=0; //"Intensidad de la política anticíclica"
  //Resultado fiscal
  Real recaudacion;//"Ingresos fiscales"
  Real egresos;//"Egresos fiscales"
  Real superavit;//"Resultado fiscal"
  Real tesoro (start=500);  
//"Patrimonio del tesoro"
  //Mercado de dinero//
  Real i(start=0.05); 
//"Tasa de interés"
  //Oferta de dinero
  Real Ms;//"Oferta de dinero"
  parameter Real H=90; //"Base monetaria"
  parameter Real mm=7;   //"Multiplicador monetario"
  //Demanda de dinero
  Real Md(start=630); //"Demanda de dinero"
  parameter Real k=0.5; //"Sensibilidad de la demanda de dinero al nivel de ingreso"
  parameter Real l=10000; //"Sensibilidad de la demanda de dinero a la tasa de interés"
  Real Mdy; //"Demanda de dinero por motivos transaccionales"
  Real Mdi; //"Demanda de dinero por motivos especulativos"
  parameter Real vi=0.001; 
//"Velocidad de ajuste de la tasa de interés"
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
der(Y)= vve* VE*(-1);
der(stock) = VE;

recaudacion = c*t*Y+T0;
egresos = TR+G;
superavit = recaudacion - egresos;
der(tesoro) = superavit;


Md = k*Y - l*i;
Mdy = k*Y;
Mdi = - l*i;

Ms = H*mm;

der(i)= vi* (Md-Ms);


annotation(
    experiment(StartTime = 0, StopTime = 20, Tolerance = 1e-06, Interval = 0.02));
end ISLM;