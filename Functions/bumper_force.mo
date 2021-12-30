within Functions;

block bumper_force "Model of 2 finger bump force input"
  Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y[3] annotation(Placement(visible = true, transformation(origin = {130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Real t1 = 0 "First Bump";
  parameter Real t2 = 0 "Second bump";
  parameter Real a1 = 0 "First bump amplitude";
  parameter Real a2 = 0 "Second bump amplitude";
  parameter Modelica.Mechanics.MultiBody.Types.Axis dir "Push Direction";
equation
  y = bumper(t1, t2, a1, a2, u) * dir;
  annotation(Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Line(visible = true, points = {{-80, 68}, {-80, -80}}, color = {128, 128, 128}), Polygon(visible = true, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Line(visible = true, points = {{-90, -70}, {82, -70}}, color = {128, 128, 128}), Polygon(visible = true, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid, points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}), Line(visible = true, origin = {5, 0}, points = {{-85, 0}, {85, 0}}, color = {218, 0, 0}, thickness = 1, smooth = Smooth.Bezier), Line(visible = true, points = {{-70, 0}, {-60, 20}, {-50, 40}, {-40, 20}, {-30, 0}, {30, 0}, {40, -20}, {50, -40}, {60, -20}, {70, 0}}, color = {0, 99, 0}, thickness = 2.5, smooth = Smooth.Bezier)}));
end bumper_force;
