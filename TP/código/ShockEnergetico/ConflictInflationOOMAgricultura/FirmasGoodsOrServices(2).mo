model FirmasGoodsOrServices
  // Parameters
  parameter Real phi(start = 1);     // Velocidad de ajuste de los salarios nominales
  parameter Real psi(start = 1);     // Velocidad de ajuste de los precios
  parameter Real delta(start = 1);       // Intensidad energética (uso de energía por unidad de producto)
  //Vars
  Real Omega;                               // Salario real (w/p)
  Real w(start = 0.1);                      // Salario nominal
  Real p(start = 0.5);                      // Nivel de precios
  Real pT;                                  // Nivel de precios objetivo de las empresas
  Real rT;                                  // Margen de ganancia objetivo
  Real r;                                   // Margen de ganancia efectivo
  Real hat_w;                               // Tasa de crecimiento del salario nominal
  Real hat_p;                               // Tasa de inflación
  Real pTE;                                 // Precio nominal de la energía
  Real pi;
  // Pasar esto a Var para el shock de energía
  Real epsilon(start = 0.55);     // Precio real de la energía
  // Pasar esto a Var para el shock de MarkUp (Mirar tmb FirmasGoods y FirmasServices)
  parameter Real theta(start = 0.4, fixed = true);        // Markup deseado
  // Pasar esto a Var para el shock de salario real (Mirar tmb FirmasServices)
  parameter Real OmegaT(start = 0.2, fixed = true);   // Salario real deseado (objetivo de trabajadores)
  parameter Real gamma(start = 0.1, fixed = true);
  
  input Real p_agregado;
  PrecioConnector precio_venta annotation(
    Placement(transformation(origin = {100, 4}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 4}, extent = {{-10, -10}, {10, 10}})));
  PrecioConnector precio_compra annotation(
    Placement(transformation(origin = {-96, 2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-96, 2}, extent = {{-10, -10}, {10, 10}})));
  PrecioConnector precio_compra_segundoBien annotation(
    Placement(transformation(origin = {-94, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}})));
equation
  
  Omega = w/p_agregado;                        // Salario real
  der(w) = w*(phi*(OmegaT - Omega));  // Dinámica del salario nominal
  der(p) = p*(psi*(rT - r));          // Dinámica del nivel de precio
  pTE = epsilon*p_agregado;                    // Precio de la energía
  precio_venta.p_valor = p;
//USO DEL PRECIO DEL OTRO SECTOR
  pT = (1+theta)*(w+(delta*pTE)) + (gamma*precio_compra.p_valor) + (gamma*precio_compra_segundoBien.p_valor);  // Precio objetivo de las empresas
  r = 1 - (w/p) - (delta*pTE/p) - (gamma * precio_compra.p_valor / p) - (gamma * precio_compra_segundoBien.p_valor / p);   //Margen efectivo
  rT = theta/(1+theta);               // Margen objetivo
  hat_w = der(w)/w;                   // Crecimiento salarial nominal
  hat_p = der(p)/p;                   // Inflación
  pi = (p - w - pTE*delta - (gamma*precio_compra.p_valor) - (gamma*precio_compra_segundoBien.p_valor)) / (p - pTE*delta - (gamma*precio_compra.p_valor) - (gamma*precio_compra_segundoBien.p_valor)); // Cálculo del profit share par el gráfico

end FirmasGoodsOrServices;
