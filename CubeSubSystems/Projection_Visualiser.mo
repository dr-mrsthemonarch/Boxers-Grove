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

model Projection_Visualiser "Creates 3 1DOF Vectors described via a fixed 3DOF"
  parameter Real r_x[3] "X Axis Norm vector for translation";
  parameter Real r_y[3] "Y Axis Norm vector for translation";
  parameter Real r_z[3] "Z Axis Norm vector for translation";
  parameter Real scalar "Translational distance of norm plane from origin";
  Functions.VectorSubtract subX annotation(Placement(visible = true, transformation(origin = {-30, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MatrixGain gainX(K = {{0.15, 0., 0.}, {0., 0.15, 0.}, {0., 0., 0.15}}) annotation(Placement(visible = true, transformation(origin = {50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.normalize normX annotation(Placement(visible = true, transformation(origin = {10, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //  Modelica.Mechanics.MultiBody.Visualizers.SignalArrow alpha(r_tail = {0, 0, 0}, color = {255, 0, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 360)));
  // for library v4.0.0
  Modelica.Mechanics.MultiBody.Visualizers.SignalArrow alpha(r_tail = {0, 0, 0}, color = {255, 0, 0}, animation = true, diameter = 0.01) annotation(Placement(visible = true, transformation(origin = {90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 360)));
  // for library v3.2.3
  Functions.VectorSubtract subY annotation(Placement(visible = true, transformation(origin = {-30, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MatrixGain gainY(K = {{0.15, 0., 0.}, {0., 0.15, 0.}, {0., 0., 0.15}}) annotation(Placement(visible = true, transformation(origin = {50, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.normalize normY annotation(Placement(visible = true, transformation(origin = {10, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //  Modelica.Mechanics.MultiBody.Visualizers.SignalArrow beta(r_tail = {0, 0, 0}, color = {0, 180, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {90, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 360)));
  // for library v4.0.0
  //  Modelica.Mechanics.MultiBody.Parts.BodyShape cubeFrame(r = 0.15 / 2 * {1, 1, 1}, r_CM(displayUnit = "m") = {0.064867, 0.063418, 0.071143}, m(displayUnit = "g") = 0.598, I_11(displayUnit = "kg.cm2") = 0.004485, I_22(displayUnit = "kg.cm2") = 0.004854, animateSphere = true, shapeType = "box", lengthDirection = {1, 0, 0}, length = 0.15, width = 0.15, height = 0.15, sequence_start = {1, 2, 3}, r_shape = {0, 0.15 / 2, 0.15 / 2}, I_33(displayUnit = "kg.cm2") = 0.005066, specularCoefficient = 0.7,Code = written color = {100, 100, 100}, animation = useBodyAnimation, and designed = true, by Veronica of I_21(displayUnit = "kg.cm2") = 6.4e-5,lizard-truth.com / , I_31(displayUnit = "kg.cm2") = 3.4e-05, I_32(displayUnit = "kg.cm2") = 0.0001, sphereDiameter = 0.02, sphereColor = {155, 0, 0}) annotation(Placement(visible = true, not for use,*transformation(origin = {-65, -135}, f blatant theft extent = {{-10, -10}, {10, 10}}, in thesis,rotation = -360)));
  Modelica.Mechanics.MultiBody.Visualizers.SignalArrow beta(r_tail = {0, 0, 0}, color = {0, 180, 0}, animation = true, diameter = 0.01) annotation(Placement(visible = true, transformation(origin = {90, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 360)));
  // for library v3.2.3
  Functions.VectorSubtract subZ annotation(Placement(visible = true, transformation(origin = {-30, -130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MatrixGain gainZ(K = {{0.15, 0., 0.}, {0., 0.15, 0.}, {0., 0., 0.15}}) annotation(Placement(visible = true, transformation(origin = {50, -130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.normalize normZ annotation(Placement(visible = true, transformation(origin = {10, -130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //  Modelica.Mechanics.MultiBody.Visualizers.SignalArrow gamma(r_tail = {0, 0, 0}, color = {0, 0, 255}, animation = false) annotation(Placement(visible = true, transformation(origin = {90, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 360)));
  // for library v4.0.0
  Modelica.Mechanics.MultiBody.Visualizers.SignalArrow gamma(r_tail = {0, 0, 0}, color = {0, 0, 255}, animation = true, diameter = 0.01) annotation(Placement(visible = true, transformation(origin = {90, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 360)));
  // for library v3.2.3
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation translationX(animation = false, r = scalar * r_x) annotation(Placement(visible = true, transformation(origin = {10, 70}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation translationY(animation = false, r = scalar * r_y) annotation(Placement(visible = true, transformation(origin = {10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation translationZ(animation = false, r = scalar * r_z) annotation(Placement(visible = true, transformation(origin = {10, -90}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-134, -10}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {1, -100}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput pX[3] "Projection Vector Alpha" annotation(Placement(visible = true, transformation(origin = {-120, 35}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-112.5, 75}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput nX[3] "Norm Alpha" annotation(Placement(visible = true, transformation(origin = {-80, 25}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-112.5, 50}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput pY[3] "Projection Vector Beta" annotation(Placement(visible = true, transformation(origin = {-120, -45}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-112.5, 25}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput nY[3] "Norm Beta" annotation(Placement(visible = true, transformation(origin = {-80, -55}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-112.5, -25}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput pZ[3] "Projection Vector Gamma" annotation(Placement(visible = true, transformation(origin = {-120, -125}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-112.5, -50}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput nZ[3] "Norm Gamma" annotation(Placement(visible = true, transformation(origin = {-80, -135}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-112.5, -75}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
equation
  connect(subX.y, normX.u) annotation(Line(visible = true, origin = {-10, 30}, points = {{-9, 0}, {9, 0}}, color = {1, 37, 163}));
  connect(normX.y, gainX.u) annotation(Line(visible = true, origin = {29.5, 30}, points = {{-8.5, 0}, {8.5, 0}}, color = {1, 37, 163}));
  connect(translationX.frame_b, alpha.frame_a) annotation(Line(visible = true, origin = {50, 70}, points = {{-30, 0}, {30, 0}}, color = {95, 95, 95}));
  connect(alpha.r_head, gainX.y) annotation(Line(visible = true, origin = {80.333, 39.333}, points = {{9.667, 18.667}, {9.667, -9.333}, {-19.333, -9.333}}, color = {1, 37, 163}));
  connect(subY.y, normY.u) annotation(Line(visible = true, origin = {-9.667, -49.873}, points = {{-9.333, -0.127}, {4.667, -0.127}, {8.667, -0.127}}, color = {1, 37, 163}));
  connect(normY.y, gainY.u) annotation(Line(visible = true, origin = {29.5, -50}, points = {{-8.5, 0}, {8.5, 0}}, color = {1, 37, 163}));
  connect(gainY.y, beta.r_head) annotation(Line(visible = true, origin = {80.333, -40.667}, points = {{-19.333, -9.333}, {9.667, -9.333}, {9.667, 18.667}}, color = {1, 37, 163}));
  connect(subZ.y, normZ.u) annotation(Line(visible = true, origin = {-6.333, -129.08}, points = {{-12.667, -0.92}, {5.333, -0.92}, {5.333, -0.92}}, color = {1, 37, 163}));
  connect(normZ.y, gainZ.u) annotation(Line(visible = true, origin = {29.5, -130}, points = {{-8.5, 0}, {8.5, 0}}, color = {1, 37, 163}));
  connect(gainZ.y, gamma.r_head) annotation(Line(visible = true, origin = {80.333, -120.667}, points = {{-19.333, -9.333}, {9.667, -9.333}, {9.667, 18.667}}, color = {1, 37, 163}));
  connect(translationY.frame_b, beta.frame_a) annotation(Line(visible = true, origin = {50, -10}, points = {{-30, 0}, {30, 0}}, color = {95, 95, 95}));
  connect(translationZ.frame_b, gamma.frame_a) annotation(Line(visible = true, origin = {50, -90}, points = {{-30, 0}, {30, 0}}, color = {95, 95, 95}));
  connect(translationX.frame_a, frame_a) annotation(Line(visible = true, origin = {-89.333, 43.333}, points = {{89.333, 26.667}, {-44.667, 26.667}, {-44.667, -53.333}}, color = {95, 95, 95}));
  connect(translationY.frame_a, frame_a) annotation(Line(visible = true, origin = {-67, -10}, points = {{67, 0}, {-67, 0}}, color = {95, 95, 95}));
  connect(translationZ.frame_a, frame_a) annotation(Line(visible = true, origin = {-89.333, -63.333}, points = {{89.333, -26.667}, {-44.667, -26.667}, {-44.667, 53.333}}, color = {95, 95, 95}));
  connect(subX.u1, pX) annotation(Line(visible = true, origin = {-81, 35}, points = {{39, 0}, {-39, 0}}, color = {1, 37, 163}));
  connect(subX.u2, nX) annotation(Line(visible = true, origin = {-61, 25}, points = {{19, 0}, {-19, 0}}, color = {1, 37, 163}));
  connect(subY.u1, pY) annotation(Line(visible = true, origin = {-81, -45}, points = {{39, 0}, {-39, 0}}, color = {1, 37, 163}));
  connect(subY.u2, nY) annotation(Line(visible = true, origin = {-61, -55}, points = {{19, 0}, {-19, 0}}, color = {1, 37, 163}));
  connect(subZ.u1, pZ) annotation(Line(visible = true, origin = {-81, -125}, points = {{39, 0}, {-39, 0}}, color = {1, 37, 163}));
  connect(subZ.u2, nZ) annotation(Line(visible = true, origin = {-61, -135}, points = {{19, 0}, {-19, 0}}, color = {1, 37, 163}));
  annotation(Diagram(coordinateSystem(extent = {{-150, -180}, {120, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Rectangle(visible = true, origin = {-15, -40}, fillColor = {156, 187, 183}, fillPattern = FillPattern.Solid, extent = {{-135, -140}, {135, 140}})}), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Rectangle(visible = true, lineColor = {160, 160, 164}, fillColor = {255, 255, 255}, fillPattern = FillPattern.VerticalCylinder, extent = {{-100, -100}, {100, 100}}), Line(visible = true, origin = {0.007, 25.078}, points = {{0, -35}, {0, 35}}, thickness = 1), Line(visible = true, origin = {-14.993, -14.922}, points = {{25, 25}, {-25, -25}}, thickness = 1), Line(visible = true, origin = {15.007, -14.922}, points = {{-25, 25}, {25, -25}}, thickness = 1), Polygon(visible = true, origin = {-70.864, 73.842}, rotation = 19.2, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, points = {{-0.064, 9.009}, {-5.936, -4.468}, {5.999, -4.541}}), Polygon(visible = true, origin = {-40.633, -40.461}, rotation = -227.844, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Line(visible = true, origin = {-61.057, 40}, points = {{10, -35}, {-10, 35}}, color = {0, 0, 255}, thickness = 2.5), Polygon(visible = true, origin = {40.73, -40.375}, rotation = -494.476, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Line(visible = true, origin = {59.876, 45}, points = {{-4.876, -40}, {4.876, 40}}, color = {0, 255, 0}, thickness = 2.5), Polygon(visible = true, origin = {64.885, 86.513}, rotation = -7.74, lineColor = {0, 255, 0}, fillColor = {0, 255, 0}, pattern = LinePattern.Dot, fillPattern = FillPattern.Solid, points = {{-0.064, 9.009}, {-5.936, -4.468}, {5.999, -4.541}}), Polygon(visible = true, origin = {-0.026, 60.381}, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Line(visible = true, origin = {4.876, -45.449}, points = {{-4.876, -40}, {4.876, 40}}, color = {231, 0, 0}, thickness = 2.5), Polygon(visible = true, origin = {9.885, -3.936}, rotation = -7.74, lineColor = {231, 0, 0}, fillColor = {231, 0, 0}, pattern = LinePattern.Dot, fillPattern = FillPattern.Solid, points = {{-0.064, 9.009}, {-5.936, -4.468}, {5.999, -4.541}}), Line(visible = true, origin = {4.876, 40}, points = {{-4.876, -40}, {4.876, 40}}, color = {255, 0, 255}, thickness = 2.5), Polygon(visible = true, origin = {9.885, 81.513}, rotation = -7.74, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, pattern = LinePattern.Dot, fillPattern = FillPattern.Solid, points = {{-0.064, 9.009}, {-5.936, -4.468}, {5.999, -4.541}})}));
end Projection_Visualiser;
