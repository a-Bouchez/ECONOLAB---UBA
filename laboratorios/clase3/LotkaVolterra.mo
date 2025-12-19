model LotkaVolterra
parameter Real g_r =0.04 "Natural growth (birth) rate for rabbits";
parameter Real d_rf=0.0005 "Death rate of rabbits due to foxes";
parameter Real d_f =0.09 "Natural decrease (death) rate for foxes";
parameter Real g_fr=0.1 "Efficency in growing foxes from rabbits";
Real rabbits(start=700) "Rabbits,(R)";
Real foxes(start=10) "Foxes,(F)";
equation
der(rabbits) = g_r * rabbits - d_rf * rabbits*foxes;
der(foxes) = g_fr * d_rf * rabbits * foxes - d_f * foxes;
annotation(
    experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 2));
end LotkaVolterra;