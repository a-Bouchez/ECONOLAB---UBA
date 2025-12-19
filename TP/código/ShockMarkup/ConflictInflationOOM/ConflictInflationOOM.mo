model ConflictInflationOOM
  //FirmasGoods bienes_sector;
  // sector industrial
  //FirmasServices servicios_sector;
  // sector servicios
  parameter Real gamma_bienes(start = 0.1);
  parameter Real gamma_servicios(start = 0.1);
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

  FirmasGoods bienes_sector annotation(
    Placement(transformation(origin = {44, 38}, extent = {{-26, -26}, {26, 26}})));
  FirmasServices servicios_sector annotation(
    Placement(transformation(origin = {-60, 12}, extent = {{-26, -26}, {26, 26}})));

equation
  p_agregado = 0.5*bienes_sector.p + 0.5*servicios_sector.p;
  bienes_sector.p_agregado = p_agregado;
  servicios_sector.p_agregado = p_agregado;
  
  w_agregado = 0.5*bienes_sector.w + 0.5*servicios_sector.w;
// Inflaciones por sector
  hatp_bienes = bienes_sector.hat_p;
  hatp_servicios = servicios_sector.hat_p;
// Reacción salatios por sector
  hatw_bienes = bienes_sector.hat_w;
  hatw_servicios = servicios_sector.hat_w;

  hat_p_agregado = 0.5*bienes_sector.hat_p + 0.5*servicios_sector.hat_p;
  hat_w_agregado = 0.5*bienes_sector.hat_w + 0.5*servicios_sector.hat_w;
//when time > 40 then
//    servicios_sector.epsilon = 0.7;
//    bienes_sector.epsilon = 0.7;
//  end when;
// Aumento del margen empresarial --> empresas buscan aumentar su markup objetivo
  when (time > 40) then
    servicios_sector.theta = 1.4;
    bienes_sector.theta = 0.4;
  end when;
// Shock de presión salarial --> trabajadores elevan su salario real deseado
//when (time > 40) then
//  servicios_sector.OmegaT = 0.8;
//  bienes_sector.OmegaT = 0.7;
//end when;
  connect(servicios_sector.precio_venta, bienes_sector.precio_compra) annotation(
    Line(points = {{-34, 13}, {-10.5, 13}, {-10.5, 38}, {19, 38}, {19, 39}}));
  connect(servicios_sector.precio_compra, bienes_sector.precio_venta) annotation(
    Line(points = {{-85, 13}, {-99, 13}, {-99, -20}, {-98, -20}, {-98, -38}, {94, -38}, {94, 38}, {70, 38}, {70, 40}}));
  annotation(Icon,
    Diagram,
  experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2));
end ConflictInflationOOM;
