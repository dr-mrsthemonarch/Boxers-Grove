within Functions;

function bumper
  input Real t1;
  input Real t2;
  input Real a1;
  input Real a2;
  input Real u;
  output Real y;
algorithm
  y := a1 * exp((-100) * ((-1 * t1) + u) ^ 2.) + a2 * exp((-100) * ((-1 * t2) + u) ^ 2.);
  annotation(Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, lineColor = {0, 114, 195}, fillColor = {0, 114, 195}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Text(visible = true, origin = {0, -5}, textColor = {255, 255, 255}, extent = {{-90, -80}, {90, 80}}, textString = "f")}));
end bumper;
