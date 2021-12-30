within Functions;

model lqr_3n "MISO LQR control block input n3"
  parameter Real k1 = 0 "Gain of input 1";
  parameter Real k2 = 0 "Gain of input 2";
  parameter Real k3 = 0 "Gain of input 3";
  Modelica.Blocks.Interfaces.RealInput u1 "Connector of Real input signals 1" annotation(Placement(transformation(extent = {{-140, 50}, {-100, 90}})));
  Modelica.Blocks.Interfaces.RealInput u2 "Connector of Real input signals 2" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
  Modelica.Blocks.Interfaces.RealInput u3 "Connector of Real input signals 3" annotation(Placement(transformation(extent = {{-140, -90}, {-100, -50}})));
  Modelica.Blocks.Interfaces.RealOutput y "Connector of Real output signals" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
equation
  y = u1 * k1 + u2 * u2 + u3 * k3;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {1, 37, 163}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Text(visible = true, extent = {{-88.794, -81.612}, {88.794, 81.612}}, textString = "LQR")}));
end lqr_3n;
