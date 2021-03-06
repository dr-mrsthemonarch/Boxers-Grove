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

model Linearizer "Outputs Measured rotational 3DOF angles"
  parameter Real offsetAlpha "add or remove an angular offset to Alpha";
  parameter Real offsetBeta "add or remove an angular offset to Beta";
  parameter Real offsetGamma "add or remove an angular offset to Gamma";
  parameter Boolean batmanAlpha "Invert Alpha signal (=false signal is inverted)";
  parameter Boolean batmanBeta "Invert Beta signal (=false signal is inverted)";
  parameter Boolean batmanGamma "Invert Gamma signal (=false signal is inverted)";
  parameter Boolean useDigitalSignal "Turn on digital Signal";
  parameter Modelica.SIunits.Time sampleperiod "Sample period of the digital signal";
  // for library 3.2.3
  //parameter Modelica.Units.SI.Time sampleperiod "Sample period of the digital signal";
  // for library 4.0
  parameter Real mu "Expectation (mean) value of the normal distribution";
  parameter Real sigma "Standard deviation of the normal distribution";
  //  Modelica.Mechanics.MultiBody.Parts.BodyShape cubeFrame(r = 0.15 / 2 * {1, 1, 1}, r_CM(displayUnit = "m") = {0.064867, 0.063418, 0.071143}, m(displayUnit = "g") = 0.598, I_11(displayUnit = "kg.cm2") = 0.004485, I_22(displayUnit = "kg.cm2") = 0.004854, animateSphere = true, shapeType = "box", lengthDirection = {1, 0, 0}, length = 0.15, width = 0.15, height = 0.15, sequence_start = {1, 2, 3}, r_shape = {0, 0.15 / 2, 0.15 / 2}, I_33(displayUnit = "kg.cm2") = 0.005066, specularCoefficient = 0.7,Code = written color = {100, 100, 100}, animation = useBodyAnimation, and designed = true, by Veronica of I_21(displayUnit = "kg.cm2") = 6.4e-5,lizard-truth.com / , I_31(displayUnit = "kg.cm2") = 3.4e-05, I_32(displayUnit = "kg.cm2") = 0.0001, sphereDiameter = 0.02, sphereColor = {155, 0, 0}) annotation(Placement(visible = true, not for use,*transformation(origin = {-65, -135}, f blatant theft extent = {{-10, -10}, {10, 10}}, in thesis,rotation = -360)));
  Modelica.Blocks.Interfaces.RealInput v[3] annotation(Placement(visible = true, transformation(origin = {-215, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-190, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Functions.Vector_Const normAlpha(k = {sqrt(3) / 2, 1 / 2, 0}) annotation(Placement(visible = true, transformation(origin = {-150, 115}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.Vector_Const normBeta(k = {-1 * sqrt(3) / 2, 1 / 2, 0}) annotation(Placement(visible = true, transformation(origin = {-150, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.Vector_Const normGamma(k = {0, -1, 0}) annotation(Placement(visible = true, transformation(origin = {-150, -15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.RotationAngle rotAngleAlpha(o = offsetAlpha) annotation(Placement(visible = true, transformation(origin = {70, 140}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.RCME3 rotNormAlpha annotation(Placement(visible = true, transformation(origin = {-105, 125}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.CrossVector crossAlpha annotation(Placement(visible = true, transformation(origin = {10, 115}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.Vector_Const E3(k = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-35, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.planeProjector projectionAlpha annotation(Placement(visible = true, transformation(origin = {10, 145}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.RCME3 rotNormBeta annotation(Placement(visible = true, transformation(origin = {-105, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.RCME3 rotNormGamma annotation(Placement(visible = true, transformation(origin = {-105, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.CrossVector crossBeta annotation(Placement(visible = true, transformation(origin = {10, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.CrossVector crossGamma annotation(Placement(visible = true, transformation(origin = {10, -15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.planeProjector projectionBeta annotation(Placement(visible = true, transformation(origin = {10, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.planeProjector projectionGamma annotation(Placement(visible = true, transformation(origin = {10, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.RotationAngle rotAngleBeta(o = offsetBeta) annotation(Placement(visible = true, transformation(origin = {70, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.RotationAngle rotAngleGamma(o = offsetGamma) annotation(Placement(visible = true, transformation(origin = {70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput pAlpha[3] annotation(Placement(visible = true, transformation(origin = {40, 145}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput pBeta[3] annotation(Placement(visible = true, transformation(origin = {40, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput pGamma[3] annotation(Placement(visible = true, transformation(origin = {40, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput cGamma[3] annotation(Placement(visible = true, transformation(origin = {70, -15}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {75, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealOutput cBeta[3] annotation(Placement(visible = true, transformation(origin = {70, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {50, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealOutput cAlpha[3] annotation(Placement(visible = true, transformation(origin = {70, 115}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {25, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealOutput rBeta[3] annotation(Placement(visible = true, transformation(origin = {-70, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-50, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealOutput rAlpha[3] annotation(Placement(visible = true, transformation(origin = {-70, 125}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-75, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealOutput rGamma[3] annotation(Placement(visible = true, transformation(origin = {-70, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-25, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Logical.Switch inverterAlpha annotation(Placement(visible = true, transformation(origin = {210, 140}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch inverterBeta annotation(Placement(visible = true, transformation(origin = {210, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch inverterGamma annotation(Placement(visible = true, transformation(origin = {210, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanConstant signalSwitchAlpha(k = batmanAlpha) annotation(Placement(visible = true, transformation(origin = {150, 140}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanConstant signalSwitchBeta(k = batmanBeta) annotation(Placement(visible = true, transformation(origin = {150, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanConstant signalSwitchGamma(k = batmanGamma) annotation(Placement(visible = true, transformation(origin = {150, 9.942}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain positiveAlpha(k = 1) annotation(Placement(visible = true, transformation(origin = {110, 155}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain negativeAlpha(k = -1) annotation(Placement(visible = true, transformation(origin = {110, 125}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain positiveBeta(k = 1) annotation(Placement(visible = true, transformation(origin = {110, 85}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain negativeBeta(k = -1) annotation(Placement(visible = true, transformation(origin = {110, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain positiveGamma(k = 1) annotation(Placement(visible = true, transformation(origin = {110, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain negativeGamma(k = -1) annotation(Placement(visible = true, transformation(origin = {110, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput alpha annotation(Placement(visible = true, transformation(origin = {250, 140}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput beta annotation(Placement(visible = true, transformation(origin = {250, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput gamma annotation(Placement(visible = true, transformation(origin = {250, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(normAlpha.y, rotNormAlpha.v) annotation(Line(visible = true, origin = {-122.5, 77.5}, points = {{-16.5, 37.5}, {-12.5, 37.5}, {-12.5, 42.5}, {5.5, 42.5}}));
  connect(E3.y, crossAlpha.u) annotation(Line(visible = true, origin = {-17, 85}, points = {{-7, -30}, {-3, -30}, {-3, 35}, {15, 35}}, color = {128, 128, 0}));
  connect(rotNormAlpha.y, crossAlpha.v) annotation(Line(visible = true, origin = {-42.5, 78.25}, points = {{-51.5, 46.75}, {-12.5, 46.75}, {-12.5, 31.75}, {40.5, 31.75}}));
  connect(v, projectionAlpha.u) annotation(Line(visible = true, origin = {-143.667, 126.667}, points = {{-71.333, -46.667}, {-71.333, 23.333}, {142.667, 23.333}}, color = {255, 255, 0}, thickness = 0.5));
  connect(rotNormAlpha.u, u) annotation(Line(visible = true, origin = {-165.667, 106.667}, points = {{48.667, 23.333}, {-24.333, 23.333}, {-24.333, -46.667}}, color = {128, 0, 128}, thickness = 0.5));
  connect(crossAlpha.y, rotAngleAlpha.n) annotation(Line(visible = true, origin = {47.5, 97.5}, points = {{-26.5, 17.5}, {-7.5, 17.5}, {-7.5, 37.5}, {10.5, 37.5}}));
  connect(normBeta.y, rotNormBeta.v) annotation(Line(visible = true, origin = {-122.5, -2.5}, points = {{-16.5, 47.5}, {-12.5, 47.5}, {-12.5, 52.5}, {5.5, 52.5}}));
  connect(u, rotNormBeta.u) annotation(Line(visible = true, origin = {-153.5, 60}, points = {{-36.5, 0}, {36.5, 0}}, color = {128, 0, 128}, thickness = 0.5));
  connect(u, rotNormGamma.u) annotation(Line(visible = true, origin = {-165.667, 20}, points = {{-24.333, 40}, {-24.333, -20}, {48.667, -20}}, color = {128, 0, 128}, thickness = 0.5));
  connect(normGamma.y, rotNormGamma.v) annotation(Line(visible = true, origin = {-123.613, -112.5}, points = {{-15.387, 97.5}, {-11.387, 97.5}, {-11.387, 102.5}, {6.613, 102.5}}));
  connect(v, projectionBeta.u) annotation(Line(visible = true, origin = {-108, 80}, points = {{-107, 0}, {107, 0}}, color = {255, 255, 0}, thickness = 0.5));
  connect(v, projectionGamma.u) annotation(Line(visible = true, origin = {-143.667, 40}, points = {{-71.333, 40}, {-71.333, -20}, {142.667, -20}}, color = {255, 255, 0}, thickness = 0.5));
  connect(rotNormAlpha.y, projectionAlpha.n) annotation(Line(visible = true, origin = {-42.25, 117.5}, points = {{-51.75, 7.5}, {-12.75, 7.5}, {-12.75, 22.5}, {41.25, 22.5}}));
  connect(rotNormBeta.y, projectionBeta.n) annotation(Line(visible = true, origin = {-27.25, 17.5}, points = {{-66.75, 37.5}, {-27.75, 37.5}, {-27.75, 52.5}, {26.25, 52.5}}));
  connect(rotNormGamma.y, projectionGamma.n) annotation(Line(visible = true, origin = {-27.25, -72.5}, points = {{-66.75, 67.5}, {-27.75, 67.5}, {-27.75, 82.5}, {26.25, 82.5}}));
  connect(crossBeta.y, rotAngleBeta.n) annotation(Line(visible = true, origin = {57.5, -13.308}, points = {{-36.5, 58.308}, {-17.5, 58.308}, {-17.5, 78.308}, {0.5, 78.308}}));
  connect(crossGamma.y, rotAngleGamma.n) annotation(Line(visible = true, origin = {57.5, -82.5}, points = {{-36.5, 67.5}, {-17.5, 67.5}, {-17.5, 87.5}, {0.5, 87.5}}));
  connect(projectionAlpha.y, rotAngleAlpha.u) annotation(Line(visible = true, origin = {39.5, 145}, points = {{-18.5, 0}, {18.5, 0}}));
  connect(projectionBeta.y, rotAngleBeta.u) annotation(Line(visible = true, origin = {39.5, 75}, points = {{-18.5, 0}, {18.5, 0}}));
  connect(projectionGamma.y, rotAngleGamma.u) annotation(Line(visible = true, origin = {39.5, 15}, points = {{-18.5, 0}, {18.5, 0}}));
  connect(projectionAlpha.y, pAlpha) annotation(Line(visible = true, origin = {30.5, 145}, points = {{-9.5, 0}, {9.5, 0}}));
  connect(projectionBeta.y, pBeta) annotation(Line(visible = true, origin = {30.5, 75}, points = {{-9.5, 0}, {9.5, 0}}));
  connect(projectionGamma.y, pGamma) annotation(Line(visible = true, origin = {30.5, 15}, points = {{-9.5, 0}, {9.5, 0}}));
  connect(crossGamma.y, cGamma) annotation(Line(visible = true, origin = {45.5, -15}, points = {{-24.5, 0}, {24.5, 0}}));
  connect(crossBeta.y, cBeta) annotation(Line(visible = true, origin = {45.5, 45}, points = {{-24.5, 0}, {24.5, 0}}));
  connect(crossAlpha.y, cAlpha) annotation(Line(visible = true, origin = {45.5, 115}, points = {{-24.5, 0}, {24.5, 0}}));
  connect(rotNormBeta.y, rBeta) annotation(Line(visible = true, origin = {-82, 55}, points = {{-12, 0}, {12, 0}}));
  connect(rotNormAlpha.y, rAlpha) annotation(Line(visible = true, origin = {-82, 125}, points = {{-12, 0}, {12, 0}}));
  connect(rotNormGamma.y, rGamma) annotation(Line(visible = true, origin = {-82, -5}, points = {{-12, 0}, {12, 0}}));
  connect(E3.y, crossBeta.u) annotation(Line(visible = true, origin = {-17, 52.5}, points = {{-7, 2.5}, {-3, 2.5}, {-3, -2.5}, {15, -2.5}}, color = {128, 128, 0}));
  connect(rotNormBeta.y, crossBeta.v) annotation(Line(visible = true, origin = {-34.5, 48.25}, points = {{-59.5, 6.75}, {-20.5, 6.75}, {-20.5, -8.25}, {32.5, -8.25}}));
  connect(E3.y, crossGamma.u) annotation(Line(visible = true, origin = {-17, 17.5}, points = {{-7, 37.5}, {-3, 37.5}, {-3, -27.5}, {15, -27.5}}, color = {128, 128, 0}));
  connect(rotNormGamma.y, crossGamma.v) annotation(Line(visible = true, origin = {-34.5, -21.75}, points = {{-59.5, 16.75}, {-20.5, 16.75}, {-20.5, 1.75}, {32.5, 1.75}}));
  connect(signalSwitchAlpha.y, inverterAlpha.u2) annotation(Line(visible = true, origin = {179.5, 140}, points = {{-18.5, 0}, {18.5, 0}}, color = {255, 0, 255}));
  connect(signalSwitchBeta.y, inverterBeta.u2) annotation(Line(visible = true, origin = {179.5, 70}, points = {{-18.5, 0}, {18.5, 0}}, color = {255, 0, 255}));
  connect(signalSwitchGamma.y, inverterGamma.u2) annotation(Line(visible = true, origin = {172.75, 9.971}, points = {{-11.75, -0.029}, {-6.75, -0.029}, {-6.75, 0.029}, {25.25, 0.029}}, color = {255, 0, 255}));
  connect(positiveAlpha.y, inverterAlpha.u1) annotation(Line(visible = true, origin = {184, 141.5}, points = {{-63, 13.5}, {-9, 13.5}, {-9, 6.5}, {14, 6.5}}));
  connect(rotAngleAlpha.y, positiveAlpha.u) annotation(Line(visible = true, origin = {87.5, 137.5}, points = {{-6.5, 2.5}, {-2.5, 2.5}, {-2.5, 17.5}, {10.5, 17.5}}));
  connect(rotAngleAlpha.y, negativeAlpha.u) annotation(Line(visible = true, origin = {87.5, 122.5}, points = {{-6.5, 17.5}, {-2.5, 17.5}, {-2.5, 2.5}, {10.5, 2.5}}));
  connect(negativeAlpha.y, inverterAlpha.u3) annotation(Line(visible = true, origin = {189, 116}, points = {{-68, 9}, {-14, 9}, {-14, 16}, {9, 16}}));
  connect(rotAngleBeta.y, positiveBeta.u) annotation(Line(visible = true, origin = {87.25, 77.5}, points = {{-6.25, -7.5}, {-2.25, -7.5}, {-2.25, 7.5}, {10.75, 7.5}}));
  connect(rotAngleBeta.y, negativeBeta.u) annotation(Line(visible = true, origin = {87.5, 62.5}, points = {{-6.5, 7.5}, {-2.5, 7.5}, {-2.5, -7.5}, {10.5, -7.5}}));
  connect(positiveBeta.y, inverterBeta.u1) annotation(Line(visible = true, origin = {187.164, 81.5}, points = {{-66.164, 3.5}, {-12.164, 3.5}, {-12.164, -3.5}, {10.836, -3.5}}));
  connect(negativeBeta.y, inverterBeta.u3) annotation(Line(visible = true, origin = {187.164, 58.5}, points = {{-66.164, -3.5}, {-12.164, -3.5}, {-12.164, 3.5}, {10.836, 3.5}}));
  connect(rotAngleGamma.y, positiveGamma.u) annotation(Line(visible = true, origin = {87.5, 7.5}, points = {{-6.5, 2.5}, {-2.5, 2.5}, {-2.5, 17.5}, {10.5, 17.5}}));
  connect(rotAngleGamma.y, negativeGamma.u) annotation(Line(visible = true, origin = {87.5, -7.5}, points = {{-6.5, 17.5}, {-2.5, 17.5}, {-2.5, 2.5}, {10.5, 2.5}}));
  connect(positiveGamma.y, inverterGamma.u1) annotation(Line(visible = true, origin = {192.75, 11.5}, points = {{-71.75, 13.5}, {-17.75, 13.5}, {-17.75, 6.5}, {5.25, 6.5}}));
  connect(negativeGamma.y, inverterGamma.u3) annotation(Line(visible = true, origin = {192.75, -11.5}, points = {{-71.75, 6.5}, {-17.75, 6.5}, {-17.75, 13.5}, {5.25, 13.5}}));
  connect(inverterAlpha.y, alpha) annotation(Line(visible = true, origin = {235.5, 140}, points = {{-14.5, 0}, {14.5, 0}}));
  connect(inverterBeta.y, beta) annotation(Line(visible = true, origin = {235.5, 70}, points = {{-14.5, 0}, {14.5, 0}}));
  connect(inverterGamma.y, gamma) annotation(Line(visible = true, origin = {235.5, 10}, points = {{-14.5, 0}, {14.5, 0}}));
  annotation(Diagram(coordinateSystem(extent = {{-230, -40}, {270, 180}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Rectangle(visible = true, origin = {20, 70}, fillColor = {156, 187, 183}, fillPattern = FillPattern.Solid, extent = {{-250, -110}, {250, 110}})}), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Rectangle(visible = true, lineColor = {1, 37, 163}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Line(visible = true, points = {{-80, 68}, {-80, -80}}, thickness = 1), Polygon(visible = true, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Line(visible = true, points = {{-90, -70}, {82, -70}}, thickness = 1), Polygon(visible = true, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}), Line(visible = true, origin = {15, -13.993}, points = {{0, 56.007}, {0, -56.007}}, pattern = LinePattern.Dash, thickness = 1), Line(visible = true, origin = {-32.5, 40}, points = {{47.5, 0}, {-47.5, 0}}, pattern = LinePattern.Dash, thickness = 1), Line(visible = true, origin = {3.888, 48.905}, rotation = -7.138, points = {{-78.888, -33.905}, {-48.888, -1.901}, {-33.888, 3.099}, {21.112, -13.905}, {24.675, 34.428}, {89.441, 16.511}}, thickness = 2, smooth = Smooth.Bezier), Line(visible = true, origin = {16.628, 40}, rotation = 15.205, points = {{-48.372, 0}, {48.372, 0}}, color = {128, 0, 0}, thickness = 2), Ellipse(visible = true, origin = {15, 40}, fillPattern = FillPattern.Solid, extent = {{-4.218, -4.218}, {4.218, 4.218}})}));
end Linearizer;
