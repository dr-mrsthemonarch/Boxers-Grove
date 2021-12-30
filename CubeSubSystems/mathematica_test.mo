within CubeSubSystems;

model mathematica_test
  Boxers_Grove Cube(useInputforce = false) annotation(Placement(visible = true, transformation(origin = {10, 30}, extent = {{-30, -30}, {30, 30}}, rotation = 0)));
  Functions.normalize norm annotation(Placement(visible = true, transformation(origin = {-30, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 360)));
  inner Modelica.Mechanics.MultiBody.World world(label1 = "x", label2 = "z", n = {0, 0, -1}, axisDiameter = 0.005, axisColor_x = {155, 0, 0}, axisColor_y = {0, 128, 0}, axisColor_z = {0, 0, 200}, gravityArrowDiameter = 0.005) annotation(Placement(visible = true, transformation(origin = {70, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 360)));
  Modelica.Blocks.Sources.Constant input_x(k = 0) annotation(Placement(visible = true, transformation(origin = {-110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant input_y(k = 0) annotation(Placement(visible = true, transformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant input_z(k = 0) annotation(Placement(visible = true, transformation(origin = {-110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(world.frame_b, Cube.frame_a) annotation(Line(visible = true, origin = {26.667, -46.667}, points = {{33.333, -23.333}, {-16.667, -23.333}, {-16.667, 46.667}}));
  connect(Cube.bodyR, norm.u) annotation(Line(visible = true, origin = {-17.667, -47.667}, points = {{0.667, 44.667}, {0.667, -22.333}, {-1.333, -22.333}}));
  connect(input_x.y, Cube.xIn) annotation(Line(visible = true, origin = {-78.25, 47.5}, points = {{-20.75, 2.5}, {-15.75, 2.5}, {-15.75, -2.5}, {52.25, -2.5}}));
  connect(input_y.y, Cube.yIn) annotation(Line(visible = true, origin = {-78.25, 20}, points = {{-20.75, -10}, {-15.75, -10}, {-15.75, 10}, {52.25, 10}}));
  connect(input_z.y, Cube.zIn) annotation(Line(visible = true, origin = {-78.25, -7.5}, points = {{-20.75, -22.5}, {-15.75, -22.5}, {-15.75, 22.5}, {52.25, 22.5}}));
  annotation(Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, extent = {{-100, -100}, {100, 100}}, radius = 25), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name")}));
end mathematica_test;
