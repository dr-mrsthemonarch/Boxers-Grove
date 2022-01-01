within CubeSubSystems;

model ControllerBlock
  parameter Real K[:, :] = [1, 0, 0; 0, 1, 0; 0, 0, 1] "Gain matrix which is multiplied with the input";
  parameter Boolean onOff = true "Switch Signal on or Off";
  parameter Boolean inverts = true "Invert Signal(=false signal is inverted)";
  Modelica.Blocks.Continuous.Der dt annotation(Placement(visible = true, transformation(origin = {-85, 47.823}, extent = {{10, -10}, {-10, 10}}, rotation = -180)));
  Modelica.Blocks.Math.MatrixGain LQR_gain(K = K) annotation(Placement(visible = true, transformation(origin = {30, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //{{-50, -5, -0.0228898}}
  //  Modelica.Mechanics.MultiBody.Parts.BodyShape cubeFrame(r = 0.15 / 2 * {1, 1, 1}, r_CM(displayUnit = "m") = {0.064867, 0.063418, 0.071143}, m(displayUnit = "g") = 0.598, I_11(displayUnit = "kg.cm2") = 0.004485, I_22(displayUnit = "kg.cm2") = 0.004854, animateSphere = true, shapeType = "box", lengthDirection = {1, 0, 0}, length = 0.15, width = 0.15, height = 0.15, sequence_start = {1, 2, 3}, r_shape = {0, 0.15 / 2, 0.15 / 2}, I_33(displayUnit = "kg.cm2") = 0.005066, specularCoefficient = 0.7,Code = written color = {100, 100, 100}, animation = useBodyAnimation, and designed = true, by Veronica of I_21(displayUnit = "kg.cm2") = 6.4e-5,lizard-truth.com / , I_31(displayUnit = "kg.cm2") = 3.4e-05, I_32(displayUnit = "kg.cm2") = 0.0001, sphereDiameter = 0.02, sphereColor = {155, 0, 0}) annotation(Placement(visible = true, not for use,*transformation(origin = {-65, -135}, f blatant theft extent = {{-10, -10}, {10, 10}}, in thesis,rotation = -360)));
  Modelica.Blocks.Interfaces.RealOutput control_signal annotation(Placement(visible = true, transformation(origin = {220, 50}, extent = {{10, -10}, {-10, 10}}, rotation = -180), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput omega annotation(Placement(visible = true, transformation(origin = {-10, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, -50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput angleInput annotation(Placement(visible = true, transformation(origin = {-130, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch switcher annotation(Placement(visible = true, transformation(origin = {75, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanConstant controllerSwitch(k = onOff) annotation(Placement(visible = true, transformation(origin = {30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin = {30, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch inverter annotation(Placement(visible = true, transformation(origin = {180, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain postive(k = 1) annotation(Placement(visible = true, transformation(origin = {110, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain negative(k = -1) annotation(Placement(visible = true, transformation(origin = {110, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanConstant invertSignal(k = inverts) annotation(Placement(visible = true, transformation(origin = {126.66, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(angleInput, dt.u) annotation(Line(visible = true, origin = {-119, 58.549}, points = {{-11, 21.451}, {-11, -10.726}, {22, -10.726}}));
  connect(LQR_gain.y[1], switcher.u1) annotation(Line(visible = true, origin = {54.406, 54}, points = {{-13.406, 26}, {-4.406, 26}, {-4.406, 4}, {8.594, 4}}));
  connect(zero.y, switcher.u3) annotation(Line(visible = true, origin = {56.904, 28.5}, points = {{-15.904, -8.5}, {-6.904, -8.5}, {-6.904, 13.5}, {6.096, 13.5}}));
  connect(controllerSwitch.y, switcher.u2) annotation(Line(visible = true, origin = {58.75, 70}, points = {{-17.75, -20}, {-3.75, -20}, {-3.75, -20}, {4.25, -20}}, color = {255, 0, 255}));
  connect(switcher.y, postive.u) annotation(Line(visible = true, origin = {91.5, 65}, points = {{-5.5, -15}, {-0.5, -15}, {-0.5, 15}, {6.5, 15}}));
  connect(switcher.y, negative.u) annotation(Line(visible = true, origin = {91.5, 35}, points = {{-5.5, 15}, {-0.5, 15}, {-0.5, -15}, {6.5, -15}}));
  connect(inverter.y, control_signal) annotation(Line(visible = true, origin = {205.5, 50}, points = {{-14.5, 0}, {14.5, 0}}));
  connect(postive.y, inverter.u1) annotation(Line(visible = true, origin = {152.098, 75}, points = {{-31.098, 5}, {-12.098, 5}, {-12.098, -17}, {15.902, -17}}));
  connect(negative.y, inverter.u3) annotation(Line(visible = true, origin = {150.566, 21}, points = {{-29.566, -1}, {-10.566, -1}, {-10.566, 21}, {17.434, 21}}));
  connect(invertSignal.y, inverter.u2) annotation(Line(visible = true, origin = {152.83, 50}, points = {{-15.17, 0}, {15.17, 0}}, color = {255, 0, 255}));
  connect(angleInput, LQR_gain.u[1]) annotation(Line(visible = true, origin = {-56, 80}, points = {{-74, 0}, {74, 0}}));
  connect(dt.y, LQR_gain.u[2]) annotation(Line(visible = true, origin = {-23.5, 63.911}, points = {{-50.5, -16.088}, {-16.5, -16.088}, {-16.5, 16.089}, {41.5, 16.089}}));
  connect(omega, LQR_gain.u[3]) annotation(Line(visible = true, origin = {-0.667, 58.333}, points = {{-9.333, -43.333}, {-9.333, 21.667}, {18.667, 21.667}}));
  annotation(Diagram(coordinateSystem(extent = {{-150, 0}, {235, 110}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Rectangle(visible = true, origin = {42.5, 55}, fillColor = {156, 187, 183}, fillPattern = FillPattern.Solid, extent = {{-192.5, -55}, {192.5, 55}})}), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Rectangle(visible = true, lineColor = {1, 37, 163}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Rectangle(visible = true, fillColor = {255, 255, 255}, lineThickness = 1, extent = {{-40, -20}, {40, 20}}), Line(visible = true, origin = {-60, 32.5}, points = {{-40, 17.5}, {10, 17.5}, {10, -17.5}, {20, -17.5}}, thickness = 1), Line(visible = true, origin = {-60, -32.5}, points = {{-40, -17.5}, {10, -17.5}, {10, 17.5}, {20, 17.5}}, thickness = 1), Text(visible = true, origin = {-1.5, 0}, extent = {{-40, -20}, {40, 20}}, textString = "-K", textStyle = {TextStyle.Bold}), Line(visible = true, origin = {70, 0}, points = {{-30, 0}, {30, 0}}, thickness = 1)}));
end ControllerBlock;
