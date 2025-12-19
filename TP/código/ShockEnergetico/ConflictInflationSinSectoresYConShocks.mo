model ConflictInflation
// Parameters
parameter Real phi(start = 1);     // Velocidad de ajuste de los salarios nominales
parameter Real psi(start = 1);     // Velocidad de ajuste de los precios
parameter Real delta(start = 1);   // Intensidad energética (uso de energía por unidad de producto)

//Vars
Real Omega;                               // Salario real (w/p)
Real OmegaT(start = 0.2, fixed = true);   // Salario real deseado (objetivo de trabajadores)
Real w(start = 0.1);                      // Salario nominal
Real p(start = 0.5);                      // Nivel de precios
Real pT;                                  // Nivel de precios objetivo de las empresas
Real rT;                                  // Margen de ganancia objetivo
Real r;                                   // Margen de ganancia efectivo
Real theta(start = 0.4, fixed = true);    // Markup deseado
Real hat_w;                               // Tasa de crecimiento del salario nominal
Real hat_p;                               // Tasa de inflación
Real pTE;                                 // Precio nominal de la energía
Real epsilon(start = 0.55, fixed = true); // Precio real de la energía
Real pi;                                  // Participacion en las ganancias de los empresarios
Real alpha;                               // Participacion en las ganancias de los trabajadores
// Equations
equation

Omega = w/p;                        // Salario real
                        
der(w) = w*(phi*(OmegaT - Omega));  // Dinámica del salario nominal

der(p) = p*(psi*(rT - r));          // Dinámica del nivel de precio

pT = (1+theta)*(w+(delta*pTE));     // Precio objetivo de las empresas

rT = theta/(1+theta);               // Margen objetivo

r = 1 - Omega - (delta*epsilon);    // Margen efectivo

pTE = epsilon*p;                    // Precio de la energía

hat_w = der(w)/w;                   // Crecimiento salarial nominal
hat_p = der(p)/p;                   // Inflación

pi = (p - w - pTE*delta) / (p - pTE*delta); // Cálculo del profit share par el gráfico
alpha = 1 - pi;

// Const (PARA USAR COMENTAR LA DER DE LA VARIABLE QUE SE MODIFIQUE CON EL WHEN)
der(OmegaT) = 0;    // Objetivo de salario real fijo
der(theta) = 0;     // Markup fijo
//der(epsilon) = 0;   // Energía

// Shocks

// Aumento del precio de la energía
when (time > 40) then
    epsilon = 0.8;
end when;

//Para aumento del precio de la energia transitorio  
//epsilon = if time < 40 then 0.55 else
//          if time < 60 then 0.8 else
//          0.55;

// Aumento del margen empresarial --> empresas buscan aumentar su markup objetivo 
//when (time > 40) then
//    theta = 1.4;
//   end when;

// Shock de presión salarial --> trabajadores elevan su salario real deseado
//when (time > 40) then
//    OmegaT = 0.7;
//  end when;

annotation(
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2));
end ConflictInflation;
