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

model Boxers_Grove "3D Nonlinear Cubli Like Pendulum"
  parameter Boolean useInputForce = true "Turn Input force on or off";
  parameter Boolean useBodyAnimation = true "Turn on Body Animation";
  parameter Boolean useDigitalSignal = true "Turn on Digital Signal";
  parameter Modelica.SIunits.Time sampleperiod "Sample period of the digital signal";
  //for library 3.2.3
  //parameter Modelica.Units.SI.Time sampleperiod "Sample period of the digital signal";
  // for library 4.0
  parameter Real mu "Expectation (mean) value of the normal distribution";
  parameter Real sigma "Standard deviation of the normal distribution";
  CubeSubSystems.wall wallY(useWallBody = true, r_vec = 0.15 / 2 * {1, 0, 1}, bearing_dir = {0, 1, 0}, bodyn = 0.15 / 2 * {1, 0, 1}, r_shape = 0.15 / 2 * {0, 0, 1}, colour = {0, 180, 0}, length_dir = {1, 0, 0}, arrowcolour = {0, 180, 0}) annotation(Placement(visible = true, transformation(origin = {-60, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CubeSubSystems.wall wallZ(r_vec = 0.15 / 2 * {1, 1, 0}, useWallBody = true, bearing_dir = {0, 0, 1}, bodyn = 0.15 / 2 * {1, 1, 0}, r_shape = 0.15 / 2 * {0, 1, 0}, colour = {0, 0, 255}, length_dir = {1, 0, 0}, arrowcolour = {0, 0, 255}) annotation(Placement(visible = true, transformation(origin = {-60, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CubeSubSystems.wall wallX(r_vec = 0.15 / 2 * {0, 1, 1}, bearing_dir = {1, 0, 0}, useWallBody = true, bodyn = 0.15 / 2 * {0, 1, 1}, r_shape = 0.15 / 2 * {0, 1, 0}, colour = {255, 0, 0}, length_dir = {0, 0, 1}, arrowcolour = {255, 0, 0}, outrunnerInertia.w.start = 100) annotation(Placement(visible = true, transformation(origin = {-60, 120}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape cubeFrame(r = 0.15 / 2 * {1, 1, 1}, r_CM(displayUnit = "m") = {0.064867, 0.063418, 0.071143}, m(displayUnit = "g") = 0.598, I_11(displayUnit = "kg.cm2") = 0.004485, I_22(displayUnit = "kg.cm2") = 0.004854, animateSphere = true, shapeType = "box", lengthDirection = {1, 0, 0}, length = 0.15, width = 0.15, height = 0.15, sequence_start = {1, 2, 3}, r_shape = {0, 0.15 / 2, 0.15 / 2}, I_33(displayUnit = "kg.cm2") = 0.005066, specularCoefficient = 0.7, color = {100, 100, 100}, animation = useBodyAnimation, I_21(displayUnit = "kg.cm2") = 6.4e-5, I_31(displayUnit = "kg.cm2") = 3.4e-05, I_32(displayUnit = "kg.cm2") = 0.0001, sphereDiameter = 0.02, sphereColor = {155, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-65, -135}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
  //  Modelica.Mechanics.MultiBody.Parts.BodyShape cubeFrame(r = 0.15 / 2 * {1, 1, 1}, r_CM(displayUnit = "m") = {0.064867, 0.063418, 0.071143}, m(displayUnit = "g") = 0.598, I_11(displayUnit = "kg.cm2") = 0.004485, I_22(displayUnit = "kg.cm2") = 0.004854, animateSphere = true, shapeType = "box", lengthDirection = {1, 0, 0}, length = 0.15, width = 0.15, height = 0.15, sequence_start = {1, 2, 3}, r_shape = {0, 0.15 / 2, 0.15 / 2}, I_33(displayUnit = "kg.cm2") = 0.005066, specularCoefficient = 0.7,Code = written color = {100, 100, 100}, animation = useBodyAnimation, and designed = true, by Veronica of I_21(displayUnit = "kg.cm2") = 6.4e-5,lizard-truth.com / , I_31(displayUnit = "kg.cm2") = 3.4e-05, I_32(displayUnit = "kg.cm2") = 0.0001, sphereDiameter = 0.02, sphereColor = {155, 0, 0}) annotation(Placement(visible = true, not for use,*transformation(origin = {-65, -135}, extent = {{-10, -10}, {10, 10}}, rotation = -360f blatant theft in thesis')));
  Modelica.Blocks.Interfaces.RealInput yIn annotation(Placement(visible = true, transformation(origin = {80, -50}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = -360)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-175, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation forceTranslation(animation = false, r = 0.15 * {1, 1, 1}) annotation(Placement(visible = true, transformation(origin = {-60, 145}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //Modelica.Mechanics.MultiBody.Forces.WorldForce force(animation = true, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world, color = {255, 0, 255}) if useInputForce annotation(Placement(visible = true, transformation(origin = {50, 145}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.WorldForce force(animation = true, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world, color = {255, 0, 255}, N_to_m = 0.3, diameter = 0.008) if useInputForce annotation(Placement(visible = true, transformation(origin = {-25, 145}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  // for library v3.2.3
  Modelica.Mechanics.MultiBody.Visualizers.FixedFrame fixedFrameGOM(color_x = {155, 0, 0}, color_y = {0, 128, 0}, color_z = {0, 0, 200}, diameter(displayUnit = "mm") = 0.005, showLabels = false) annotation(Placement(visible = true, transformation(origin = {-25, -135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //Modelica.Mechanics.MultiBody.Sensors.AbsoluteSensor absoluteSensor(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.world, get_r = true, arrowColor = {255, 0, 255}, get_a = false, get_z = true, get_w = false, get_angles = false, sequence = {3, 1, 3}, animation = false) annotation(Placement(visible = true, transformation(origin = {-25, -165}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.AbsoluteSensor absoluteSensor(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.world, get_r = true, arrowColor = {255, 0, 255}, get_a = false, get_z = true, get_w = false, get_angles = false, sequence = {3, 1, 3}, animation = false, arrowDiameter = 0.003) annotation(Placement(visible = true, transformation(origin = {-25, -165}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  // for library v3.2.3
  Modelica.Blocks.Interfaces.RealOutput bodyR[3] annotation(Placement(visible = true, transformation(origin = {-20, -205}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-75, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -810)));
  Modelica.Blocks.Interfaces.RealInput zIn annotation(Placement(visible = true, transformation(origin = {80, -115}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-120, -50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput xIn annotation(Placement(visible = true, transformation(origin = {80, 50}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-120, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Spherical frictionlessCornerGOM(animation = false, angles_fixed = true, angles_start = {-1 * atan(sqrt(2)), 0, (-1 * Modelica.Constants.pi) - atan(((-((-6) + 2 * sqrt(3)) / (12 * sqrt(2))) + (6 + 2 * sqrt(3)) / (12 * sqrt(2))) / (((-6) + 2 * sqrt(3)) / (12 * sqrt(2)) - (6 + 2 * sqrt(3)) / (12 * sqrt(2))))}, sequence_start = {1, 2, 3}) if false annotation(Placement(visible = true, transformation(origin = {-130, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Spherical frictionlessCornerCOM(animation = false, angles_fixed = true, angles_start = {-0.905714, 0.00888755, -2.35187}, sequence_start = {1, 2, 3}, enforceStates = true) annotation(Placement(visible = true, transformation(origin = {-130, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput wY annotation(Placement(visible = true, transformation(origin = {75, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput wX annotation(Placement(visible = true, transformation(origin = {75, 115}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput wZ annotation(Placement(visible = true, transformation(origin = {80, -75}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator angularVelocity annotation(Placement(visible = true, transformation(origin = {10, -185}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator Angle annotation(Placement(visible = true, transformation(origin = {40, -185}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput RotationZ annotation(Placement(visible = true, transformation(origin = {75, -185}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {75, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput u[3] if useInputForce annotation(Placement(visible = true, transformation(origin = {80, 145}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {75, 120}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
equation
  connect(wallY.i, yIn) annotation(Line(visible = true, origin = {-13.333, -34}, points = {{-46.667, 32}, {-46.667, -16}, {93.333, -16}}, color = {1, 37, 163}));
  connect(force.frame_b, forceTranslation.frame_b) annotation(Line(visible = true, origin = {-42.5, 145}, points = {{7.5, 0}, {-7.5, 0}}, color = {95, 95, 95}));
  connect(cubeFrame.frame_b, fixedFrameGOM.frame_a) annotation(Line(visible = true, origin = {-45, -135}, points = {{-10, 0}, {10, 0}}, color = {95, 95, 95}));
  connect(absoluteSensor.r, bodyR) annotation(Line(visible = true, origin = {-30, -195.333}, points = {{-5, 19.333}, {-5, -9.667}, {10, -9.667}}));
  connect(wallZ.i, zIn) annotation(Line(visible = true, origin = {-13.333, -104}, points = {{-46.667, 22}, {-46.667, -11}, {93.333, -11}}, color = {1, 37, 163}));
  connect(wallX.i, xIn) annotation(Line(visible = true, origin = {-13.333, 69.333}, points = {{-46.667, 38.667}, {-46.667, -19.333}, {93.333, -19.333}}, color = {1, 37, 163}));
  connect(frictionlessCornerGOM.frame_a, frame_a) annotation(Line(visible = true, origin = {-163.333, 20}, points = {{23.333, 10}, {-11.667, 10}, {-11.667, -20}}, color = {95, 95, 95}));
  connect(frictionlessCornerGOM.frame_b, wallY.mount) annotation(Line(visible = true, origin = {-62.5, 75}, points = {{-57.5, -45}, {-17.5, -45}, {-17.5, -65}, {-7.5, -65}}, color = {95, 95, 95}));
  connect(frictionlessCornerGOM.frame_b, wallZ.mount) annotation(Line(visible = true, origin = {-62.087, 25}, points = {{-57.913, 5}, {-17.913, 5}, {-17.913, -95}, {-7.913, -95}}, color = {95, 95, 95}));
  connect(frictionlessCornerGOM.frame_b, wallX.mount) annotation(Line(visible = true, origin = {-62.5, -35}, points = {{-57.5, 65}, {-17.5, 65}, {-17.5, 155}, {-7.5, 155}}, color = {95, 95, 95}));
  connect(frictionlessCornerGOM.frame_b, forceTranslation.frame_a) annotation(Line(visible = true, origin = {-62.5, 110}, points = {{-57.5, -80}, {-17.5, -80}, {-17.5, 35}, {-7.5, 35}}, color = {95, 95, 95}));
  connect(frictionlessCornerGOM.frame_b, cubeFrame.frame_a) annotation(Line(visible = true, origin = {-62.5, -80}, points = {{-57.5, 110}, {-17.5, 110}, {-17.5, -55}, {-12.5, -55}}, color = {95, 95, 95}));
  connect(frictionlessCornerCOM.frame_a, frame_a) annotation(Line(visible = true, origin = {-163.333, -23.333}, points = {{23.333, -11.667}, {-11.667, -11.667}, {-11.667, 23.333}}, color = {95, 95, 95}));
  connect(frictionlessCornerCOM.frame_b, forceTranslation.frame_a) annotation(Line(visible = true, origin = {-62.5, 60}, points = {{-57.5, -95}, {-17.5, -95}, {-17.5, 85}, {-7.5, 85}}, color = {95, 95, 95}));
  connect(frictionlessCornerCOM.frame_b, wallY.mount) annotation(Line(visible = true, origin = {-62.5, 25}, points = {{-57.5, -60}, {-17.5, -60}, {-17.5, -15}, {-7.5, -15}}, color = {95, 95, 95}));
  connect(frictionlessCornerCOM.frame_b, wallZ.mount) annotation(Line(visible = true, origin = {-62.5, -25}, points = {{-57.5, -10}, {-17.5, -10}, {-17.5, -45}, {-7.5, -45}}, color = {95, 95, 95}));
  connect(frictionlessCornerCOM.frame_b, wallX.mount) annotation(Line(visible = true, origin = {-62.5, -85}, points = {{-57.5, 50}, {-17.5, 50}, {-17.5, 205}, {-7.5, 205}}, color = {95, 95, 95}));
  connect(frictionlessCornerCOM.frame_b, cubeFrame.frame_a) annotation(Line(visible = true, origin = {-62.5, -130}, points = {{-57.5, 95}, {-17.5, 95}, {-17.5, -5}, {-12.5, -5}}, color = {95, 95, 95}));
  connect(angularVelocity.y, Angle.u) annotation(Line(visible = true, origin = {24.5, -185}, points = {{-3.5, 0}, {3.5, 0}}));
  connect(cubeFrame.frame_b, absoluteSensor.frame_a) annotation(Line(visible = true, origin = {-42.5, -150}, points = {{-12.5, 15}, {-2.5, 15}, {-2.5, -15}, {7.5, -15}}));
  connect(absoluteSensor.z[3], angularVelocity.u) annotation(Line(visible = true, origin = {-9.25, -180.5}, points = {{-5.75, 4.5}, {-0.75, 4.5}, {-0.75, -4.5}, {7.25, -4.5}}));
  connect(u, force.force) annotation(Line(visible = true, origin = {33.5, 145}, points = {{46.5, 0}, {-46.5, 0}}));
  connect(Angle.y, RotationZ) annotation(Line(visible = true, origin = {63, -185}, points = {{-12, 0}, {12, 0}}));
  connect(wallZ.w, wZ) annotation(Line(visible = true, origin = {15.5, -75}, points = {{-64.5, 0}, {64.5, 0}}));
  connect(wallY.w, wY) annotation(Line(visible = true, origin = {13, 5}, points = {{-62, 0}, {62, 0}}));
  connect(wallX.w, wX) annotation(Line(visible = true, origin = {13, 115}, points = {{-62, 0}, {62, 0}}));
  annotation(Diagram(coordinateSystem(extent = {{-190, -220}, {100, 170}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Rectangle(visible = true, origin = {-45, -25}, fillColor = {156, 187, 183}, fillPattern = FillPattern.Solid, extent = {{-145, -195}, {145, 195}})}), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Rectangle(visible = true, lineColor = {160, 160, 164}, fillColor = {255, 255, 255}, fillPattern = FillPattern.VerticalCylinder, extent = {{-100, -100}, {100, 100}}), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Polygon(visible = true, origin = {0.178, -39.27}, fillColor = {179, 179, 179}, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-45.061, -5.835}, {-53.779, 36.702}, {53.407, 36.702}, {44.291, -5.835}}), Line(visible = true, origin = {0.33, -74.289}, points = {{0, 15}, {0, -15}}), Rectangle(visible = true, origin = {-0.178, -44.911}, rotation = 45.329, fillColor = {179, 179, 179}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{-31.883, -31.883}, {31.883, 31.883}}, radius = 1), Rectangle(visible = true, origin = {0, -2.329}, rotation = 45, fillColor = {191, 191, 191}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{-38.164, -38.164}, {38.164, 38.164}}, radius = 1), Line(visible = true, origin = {0, -72.911}, points = {{0, 17.089}, {0, -17.089}}, thickness = 1), Line(visible = true, origin = {42.5, 80}, points = {{-32.5, -20}, {32.5, 20}}, thickness = 1), Polygon(visible = true, origin = {10.734, 60.035}, rotation = -53.616, fillColor = {255, 28, 255}, fillPattern = FillPattern.Solid, points = {{10, 6.667}, {-10, 6.667}, {0, -13.333}})}));
end Boxers_Grove;
