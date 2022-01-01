within CubeSubSystems;

model mcu "A micro controller simulator for digitizing and centralizing descrete signals"
  Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {130, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {86.667, 53.24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-130, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-93.333, 73.044}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  ADC_zerorder aDC_zerorder1 annotation(Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Not not1 annotation(Placement(visible = true, transformation(origin = {-70, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch switch1 annotation(Placement(visible = true, transformation(origin = {30, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanConstant booleanConstant1 annotation(Placement(visible = true, transformation(origin = {-110, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Routing.RealPassThrough realPassThrough1 annotation(Placement(visible = true, transformation(origin = {-70, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(booleanConstant1.y, not1.u) annotation(Line(visible = true, origin = {-90.5, 70}, points = {{-8.5, 0}, {8.5, -0}}));
  connect(aDC_zerorder1.y, switch1.u3) annotation(Line(visible = true, origin = {7.5, 46}, points = {{-26.5, 4}, {-7.5, 4}, {-7.5, 16}, {10.5, 16}}));
  connect(not1.y, switch1.u2) annotation(Line(visible = true, origin = {-20.5, 70}, points = {{-38.5, -0}, {38.5, 0}}));
  connect(u, realPassThrough1.u) annotation(Line(visible = true, origin = {-106, 110}, points = {{-24, 0}, {24, 0}}));
  connect(realPassThrough1.y, switch1.u1) annotation(Line(visible = true, origin = {-32.5, 94}, points = {{-26.5, 16}, {-17.5, 16}, {-17.5, -16}, {50.5, -16}}));
  connect(realPassThrough1.y, aDC_zerorder1.u) annotation(Line(visible = true, origin = {-47.5, 80}, points = {{-11.5, 30}, {-2.5, 30}, {-2.5, -30}, {5.5, -30}}));
  annotation(Diagram(coordinateSystem(extent = {{-150, -80}, {150, 136.663}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, extent = {{-100, -100}, {100, 100}}, radius = 25), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name")}));
end mcu;
