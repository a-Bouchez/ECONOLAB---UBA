model ConflictInflationOOM
  //FirmasGoods bienes_sector;
  // sector industrial
  //FirmasServices servicios_sector;
  // sector servicios
  parameter Real gamma_bienes(start = 0.1);
  parameter Real gamma_servicios(start = 0.1);
  parameter Real gamma_agricultura(start = 0.1);
  // Variables para tomar promedio entre los 2 sectores
  Real p_agregado;
  // Nivel de precios (promedio)
  Real hat_p_agregado;
  // Tasa de inflación (promedio)
  Real w_agregado;
  // Salario nominal (promedio)
  Real hat_w_agregado;
  // Tasa de crecimiento del salario nominal (promedio)
  // Vars de Sectores
  Real hatp_bienes;
  Real hatp_servicios;
  Real hatw_bienes;
  Real hatw_servicios;
  Real hatp_agricultura;
  Real hatw_agricultura;
  
  FirmasGoods bienes_sector annotation(
    Placement(transformation(origin = {44, 58}, extent = {{-26, -26}, {26, 26}})));
  FirmasServices servicios_sector annotation(
    Placement(transformation(origin = {-56, 56}, extent = {{-26, -26}, {26, 26}})));
  FirmasAgricultura agricultura_sector annotation(
    Placement(transformation(origin = {-5, -29}, extent = {{-27, -27}, {27, 27}})));
equation
  p_agregado = 0.4*bienes_sector.p + 0.4*servicios_sector.p + 0.2*agricultura_sector.p;
  bienes_sector.p_agregado = p_agregado;
  servicios_sector.p_agregado = p_agregado;
  agricultura_sector.p_agregado = p_agregado;
  
  w_agregado = 0.4*bienes_sector.w + 0.4*servicios_sector.w + 0.2*agricultura_sector.w;
// Inflaciones por sector
  hatp_bienes = bienes_sector.hat_p;
  hatp_servicios = servicios_sector.hat_p;
  hatp_agricultura = agricultura_sector.hat_p;
  
// Reacción salatios por sector
  hatw_bienes = bienes_sector.hat_w;
  hatw_servicios = servicios_sector.hat_w;
  hatw_agricultura= agricultura_sector.hat_w;
  
  hat_p_agregado = 0.4*bienes_sector.hat_p + 0.4*servicios_sector.hat_p + 0.2*agricultura_sector.hat_p;
  hat_w_agregado = 0.4*bienes_sector.hat_w + 0.4*servicios_sector.hat_w + 0.2*agricultura_sector.hat_w;
when time > 40 then
   servicios_sector.epsilon = 0.7;
   bienes_sector.epsilon = 0.7;
   agricultura_sector.epsilon= 0.7;
end when;
// Aumento del margen empresarial --> empresas buscan aumentar su markup objetivo
//  when (time > 40) then
//    servicios_sector.theta = 1.4;
//    bienes_sector.theta = 0.4;
//    agricultura_sector.theta = 0.4;
//  end when;
// Shock de presión salarial --> trabajadores elevan su salario real deseado
//when (time > 40) then
//  servicios_sector.OmegaT = 0.8;
//  bienes_sector.OmegaT = 0.7;
//  agricultura_sector.OmegaT = 0.5;
//end when;
  connect(servicios_sector.precio_venta, bienes_sector.precio_compra) annotation(
    Line(points = {{-30, 58}, {20, 58}}));
  connect(bienes_sector.precio_venta, servicios_sector.precio_compra) annotation(
    Line(points = {{70, 60}, {88, 60}, {88, 14}, {-92, 14}, {-92, 56}, {-80, 56}}));
  connect(agricultura_sector.precio_venta, bienes_sector.precio_compra_segundoBien) annotation(
    Line(points = {{22, -28}, {40, -28}, {40, 26}, {0, 26}, {0, 68}, {18, 68}}));
  connect(agricultura_sector.precio_venta, servicios_sector.precio_compra_segundoBien) annotation(
    Line(points = {{22, -28}, {30, -28}, {30, 6}, {-96, 6}, {-96, 66}, {-82, 66}}));
  connect(servicios_sector.precio_venta, agricultura_sector.precio_compra_segundoBien) annotation(
    Line(points = {{-30, 58}, {-12, 58}, {-12, 24}, {-44, 24}, {-44, -18}, {-32, -18}}));
  connect(bienes_sector.precio_venta, agricultura_sector.precio_compra) annotation(
    Line(points = {{70, 60}, {78, 60}, {78, -72}, {-48, -72}, {-48, -28}, {-30, -28}}));
  annotation(Icon,
    Diagram,
  experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2));
end ConflictInflationOOM;
