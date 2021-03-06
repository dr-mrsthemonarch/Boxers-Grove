//  This file is part of BoxersGrove.
// 
//     BoxersGrove is free software: you can redistribute it and/or modify
//     it under the terms of the GNU General Public License as published by
//     the Free Software Foundation, either version 3 of the License, or
//     (at your option) any later version.
// 
//     BoxersGrove is distributed in the hope that it will be useful,
//     but WITHOUT ANY WARRANTY; without even the implied warranty of
//     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//     GNU General Public License for more details.
// 
//     You should have received a copy of the GNU General Public License
//     along with Foobar.  If not, see <https://www.gnu.org/licenses/>.
//
//  Copyright © 2022 Veronica of Lizard-truth.com
//  This file is part of project: Boxers Grov
//
within CubeSubSystems;

model wall
  parameter Real J = 0.000275 "Flywheel Inertia";
  parameter Real r_vec[3] "Motor position";
  parameter Modelica.Mechanics.MultiBody.Types.Axis bearing_dir = {0, 0, 1} "Direction of Motor axis";
  parameter Modelica.Mechanics.MultiBody.Types.Axis bodyn = {0, 0, 1} "Axis of Centre of mass resolved in frame_a (= same as in frame_b)" annotation(Evaluate = true);
  parameter Real r_shape[3] "direction of description vector from frame_a to centre of Square (Starting direction)";
  parameter Modelica.Mechanics.MultiBody.Types.Axis length_dir "Direction of Wall length";
  parameter Boolean useWallBody = true "Animation, Use Body Wall";
  parameter Modelica.Mechanics.MultiBody.Types.Color colour "Colour of wall";
  parameter Modelica.Mechanics.MultiBody.Types.Color arrowcolour "Colour of wall arrows";
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation motorpos(r = r_vec, animation = false) "\"Motor Position\"" annotation(Placement(visible = true, transformation(origin = {-50, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape spokes(color = {255, 255, 0}, length = 0.005, width = 0.003, height = 0.09, specularCoefficient = 1, lengthDirection = -1 * bearing.n, widthDirection = {0, 0, 1}) "indicator of the orientation of the rotor" annotation(Placement(visible = true, transformation(origin = {90, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CubeSubSystems.EC_45flat motor(n = bearing_dir, colour = {0, 128, 255}, m = 0.110) annotation(Placement(visible = true, transformation(origin = {-25, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape wall(shapeType = "box", lengthDirection = length_dir, length = 0.15, width = 0.003, height = 0.15, I_11 = 0.000135, r_CM = bodyn, m = 0.0983, I_22 = 0.000034897779450290215, I_33 = 0.000137, r = 0.15 / 2 * {0, 0, 1}, animation = useWallBody, animateSphere = true, r_shape = r_shape, sphereColor = {255, 0, 0}, sphereDiameter = 0.02, widthDirection = bearing_dir, color = colour) if useWallBody annotation(Placement(visible = true, transformation(origin = {-50.137, -29.863}, extent = {{-10.137, -10.137}, {10.137, 10.137}}, rotation = 0)));
  //  Modelica.Mechanics.MultiBody.Parts.BodyShape wall(r = 0.15 / 2 * {1, 1, 1}, r_CM(displayUnit = "m") = {0.064867, 0.063418, 0.071143}, m(displayUnit = "g") = 0.598, I_11(displayUnit = "kg.cm2") = 0.004485, I_22(displayUnit = "kg.cm2") = 0.004854, animateSphere = true, shapeType = "box", lengthDirection = {1, 0, 0}, length = 0.15, width = 0.15, height = 0.15, sequence_start = {1, 2, 3}, r_shape = {0, 0.15 / 2, 0.15 / 2}, I_33(displayUnit = "kg.cm2") = 0.005066, specularCoefficient = 0.7,Code = written color = {100, 100, 100}, animation = useBodyAnimation, and designed = true, by Veronica of I_21(displayUnit = "kg.cm2") = 6.4e-5,lizard-truth.com / , I_31(displayUnit = "kg.cm2") = 3.4e-05, I_32(displayUnit = "kg.cm2") = 0.0001, sphereDiameter = 0.02, sphereColor = {155, 0, 0}) annotation(Placement(visible = true, not for use,*transformation(origin = {-65, -135}, f blatant theft extent = {{-10, -10}, {10, 10}}, in thesis,rotation = -360)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a mount annotation(Placement(visible = true, transformation(origin = {-80, 19}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput i annotation(Placement(visible = true, transformation(origin = {-80, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {0, -120}, extent = {{-20, -20}, {20, 20}}, rotation = -270)));
  Modelica.Blocks.Interfaces.RealOutput r[3] annotation(Placement(visible = true, transformation(origin = {0, -50}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  // Modelica.Mechanics.MultiBody.Sensors.AbsoluteSensor abs_pos_sensor(get_r = true, arrowColor = arrowcolour, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.world, animation = true) annotation(Placement(visible = true, transformation(origin = {10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0))); // for library v4.0.0
  Modelica.Mechanics.MultiBody.Sensors.AbsoluteSensor abs_pos_sensor(get_r = true, arrowColor = arrowcolour, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.world, animation = true, arrowDiameter = 0.005) annotation(Placement(visible = true, transformation(origin = {10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  // for library v3.2.3
  Modelica.Mechanics.Rotational.Components.Damper friction(d = 1.75e-05) annotation(Placement(visible = true, transformation(origin = {30, 50}, extent = {{10, -10}, {-10, 10}}, rotation = 900)));
  Modelica.Mechanics.MultiBody.Parts.PointMass FlywheelMass(animation = false, m = 0.127) annotation(Placement(visible = true, transformation(origin = {-30, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia outrunnerInertia(J = J, w.start = 0) annotation(Placement(visible = true, transformation(origin = {80, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Mounting1D emfTorqueTransfer(n = bearing_dir) annotation(Placement(visible = true, transformation(origin = {-5, 50}, extent = {{10, -10}, {-10, 10}}, rotation = -360)));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor angularVelocity annotation(Placement(visible = true, transformation(origin = {110, 70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealOutput w annotation(Placement(visible = true, transformation(origin = {110, -50}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {110, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute bearing(n = bearing_dir, phi.start = 1, cylinderLength = 0.003, cylinderDiameter = 0.008, useAxisFlange = true, phi.displayUnit = "rad", w.start = 0, a.start = 0) annotation(Placement(visible = true, transformation(origin = {50, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(motorpos.frame_a, mount) annotation(Line(visible = true, origin = {-73.333, 19.667}, points = {{13.333, 0.333}, {-6.667, 0.333}, {-6.667, -0.667}}, color = {95, 95, 95}));
  connect(wall.frame_a, mount) annotation(Line(visible = true, origin = {-73.425, -13.575}, points = {{13.151, -16.288}, {-6.575, -16.288}, {-6.575, 32.575}}, color = {95, 95, 95}));
  connect(abs_pos_sensor.frame_a, motorpos.frame_b) annotation(Line(visible = true, origin = {-12.5, 5}, points = {{12.5, -15}, {7.5, -15}, {7.5, 15}, {-27.5, 15}}, color = {95, 95, 95}));
  connect(abs_pos_sensor.r, r) annotation(Line(visible = true, origin = {0, -35.5}, points = {{0, 14.5}, {0, -14.5}}, color = {1, 37, 163}));
  connect(motorpos.frame_b, motor.HousingMount) annotation(Line(visible = true, origin = {-33.333, 33.667}, points = {{-6.667, -13.667}, {3.333, -13.667}, {3.333, 27.333}}));
  connect(FlywheelMass.frame_a, motorpos.frame_b) annotation(Line(visible = true, origin = {-33.333, 10}, points = {{3.333, -20}, {3.333, 10}, {-6.667, 10}}));
  connect(emfTorqueTransfer.flange_b, motor.support) annotation(Line(visible = true, origin = {-18.333, 53.816}, points = {{3.333, -3.816}, {-1.667, -3.816}, {-1.667, 7.631}}));
  connect(emfTorqueTransfer.frame_a, motorpos.frame_b) annotation(Line(visible = true, origin = {-16.667, 26.667}, points = {{11.667, 13.333}, {11.667, -6.667}, {-23.333, -6.667}}));
  connect(i, motor.u) annotation(Line(visible = true, origin = {-56.5, 70}, points = {{-23.5, 0}, {23.5, 0}}));
  connect(motor.w, outrunnerInertia.flange_a) annotation(Line(visible = true, origin = {67.5, 75}, points = {{-82.5, -5}, {-17.5, -5}, {-17.5, 15}, {2.5, 15}}));
  connect(angularVelocity.w, w) annotation(Line(visible = true, origin = {110, 4.5}, points = {{0, 54.5}, {0, -54.5}}));
  connect(motorpos.frame_b, bearing.frame_a) annotation(Line(visible = true, origin = {-13.5, -9}, points = {{-26.5, 29}, {3.5, 29}, {3.5, 29}, {53.5, 29}}, color = {95, 95, 95}));
  connect(friction.flange_a, bearing.support) annotation(Line(visible = true, origin = {27.6, 40}, points = {{-7.6, 10}, {-12.6, 10}, {-12.6, -5}, {16.4, -5}, {16.4, -10}}));
  connect(friction.flange_b, bearing.axis) annotation(Line(visible = true, origin = {46.667, 43.333}, points = {{-6.667, 6.667}, {3.333, 6.667}, {3.333, -13.333}}));
  connect(bearing.frame_b, spokes.frame_a) annotation(Line(visible = true, origin = {70, 20}, points = {{-10, 0}, {10, 0}}, color = {95, 95, 95}));
  connect(motor.w, bearing.axis) annotation(Line(visible = true, origin = {28.333, 56.667}, points = {{-43.333, 13.333}, {21.667, 13.333}, {21.667, -26.667}}));
  connect(outrunnerInertia.flange_b, angularVelocity.flange) annotation(Line(visible = true, origin = {103.333, 86.667}, points = {{-13.333, 3.333}, {6.667, 3.333}, {6.667, -6.667}}));
  annotation(Diagram(coordinateSystem(extent = {{-90, -60}, {130, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Rectangle(visible = true, origin = {20, 22.5}, fillColor = {156, 187, 183}, fillPattern = FillPattern.Solid, extent = {{-110, -82.5}, {110, 82.5}})}), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}, radius = 25), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Rectangle(visible = true, fillColor = {255, 255, 255}, lineThickness = 2.5, extent = {{-64.5, -64.5}, {64.5, 64.5}}, radius = 15), Ellipse(visible = true, fillColor = {255, 255, 255}, lineThickness = 5, extent = {{-50, -50}, {50, 50}}), Line(visible = true, origin = {22.5, 12.5}, points = {{-22.5, -12.5}, {22.5, 12.5}}, thickness = 2.5), Line(visible = true, origin = {-15, -8.333}, points = {{-30, 33.333}, {15, 8.333}, {15, -41.667}}, thickness = 2.5)}));
end wall;
