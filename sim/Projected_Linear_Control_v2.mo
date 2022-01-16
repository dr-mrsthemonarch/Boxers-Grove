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
//     along with BoxersGrove.  If not, see <https://www.gnu.org/licenses/>.
//
//  Copyright © 2022 Veronica of Lizard-truth.com
//  This file is part of project: Boxers Grove
//

model Projected_Linear_Control_v2 "Vector Project for Individual DOF control"
  CubeSubSystems.Boxers_Grove Cube(useInputForce = true, useBodyAnimation = true, useInputForce = true, useDigitalSignal = false, sampleperiod = 0.001, mu = 0, sigma = 0.002) annotation(Placement(visible = true, transformation(origin = {-140, 205}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(label1 = "x", label2 = "z", n = {0, 0, -1}, axisDiameter = 0.005, axisColor_x = {155, 0, 0}, axisColor_y = {0, 128, 0}, axisColor_z = {0, 0, 200}, gravityArrowDiameter = 0.005, defaultArrowDiameter = 0.005, defaultBodyDiameter = 0.01, defaultN_to_m = 0.3) annotation(Placement(visible = true, transformation(origin = {-170, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
  Modelica.Mechanics.MultiBody.Visualizers.Rectangle floor(length_u = 1, length_v = 1, color = {155, 155, 155}) annotation(Placement(visible = true, transformation(origin = {-170, -10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Functions.normalize normedPositionVector annotation(Placement(visible = true, transformation(origin = {-90, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CubeSubSystems.Projection_Visualiser animator(r_x = taylor.normAlpha.k, r_y = taylor.normBeta.k, r_z = taylor.normGamma.k, scalar = 0.5) annotation(Placement(visible = true, transformation(origin = {85, 65}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, useAxisFlange = true, phi.start = 0, phi.fixed = true) annotation(Placement(visible = true, transformation(origin = {85, -100}, extent = {{-10, -10}, {10, 10}}, rotation = -720)));
  Modelica.Mechanics.Rotational.Sources.Position richardTurner annotation(Placement(visible = true, transformation(origin = {40, -85}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //Modelica.Mechanics.MultiBody.Visualizers.SignalArrow aAlpha(r_tail = {0, 0, 0}, color = {155, 0, 0}, quantity = Modelica.Mechanics.MultiBody.Types.VectorQuantity.RelativePosition, animation = true) annotation(Placement(visible = true, transformation(origin = {140, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  // for library v4.0.0
  Modelica.Mechanics.MultiBody.Visualizers.SignalArrow aAlpha(r_tail = {0, 0, 0}, color = {155, 0, 0}, animation = true, diameter = 0.01) annotation(Placement(visible = true, transformation(origin = {140, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  /*, quantity = Modelica.Mechanics.MultiBody.Types.VectorQuantity.RelativePosition,*/
  // for library v3.2.3
  CubeSubSystems.Linearizer taylor(offsetAlpha = Modelica.Constants.pi / 2, offsetBeta = Modelica.Constants.pi / 2, offsetGamma = Modelica.Constants.pi / 2, batmanAlpha = false, batmanBeta = false, batmanGamma = false, batmanAlpha = false, batmanBeta = false, batmanGamma = false, useDigitalSignal = false, sampleperiod = 0.001, mu = 0, sigma = 0.002) annotation(Placement(visible = true, transformation(origin = {-20, 100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  CubeSubSystems.ControllerBlock controllerX(onOff = true, inverts = false, K = {{-150, -25, -0.06}}) annotation(Placement(visible = true, transformation(origin = {-10, 280}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  CubeSubSystems.ControllerBlock controllerY(onOff = true, inverts = false, K = {{-150, -25, -0.06}}) annotation(Placement(visible = true, transformation(origin = {10, 310}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  CubeSubSystems.ControllerBlock controllerZ(onOff = true, inverts = false, K = {{-20, -20, -0.02}}) annotation(Placement(visible = true, transformation(origin = {30, 340}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  //Modelica.Mechanics.MultiBody.Visualizers.SignalArrow aBeta(r_tail = {0, 0, 0}, color = {0, 128, 0}, quantity = Modelica.Mechanics.MultiBody.Types.VectorQuantity.RelativePosition, animation = true) annotation(Placement(visible = true, transformation(origin = {130, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 360)));
  // for library v4.0.0
  Modelica.Mechanics.MultiBody.Visualizers.SignalArrow aBeta(r_tail = {0, 0, 0}, color = {0, 128, 0}, animation = true, diameter = 0.01) annotation(Placement(visible = true, transformation(origin = {130, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 360)));
  /*, quantity = Modelica.Mechanics.MultiBody.Types.VectorQuantity.RelativePosition,*/
  // for library v3.2.3
  //Modelica.Mechanics.MultiBody.Visualizers.SignalArrow aGamma(r_tail = {0, 0, 0}, color = {0, 0, 200}, quantity = Modelica.Mechanics.MultiBody.Types.VectorQuantity.RelativePosition, animation = true) annotation(Placement(visible = true, transformation(origin = {120, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 360)));
  //  Modelica.Mechanics.MultiBody.Parts.BodyShape cubeFrame(r = 0.15 / 2 * {1, 1, 1}, r_CM(displayUnit = "m") = {0.064867, 0.063418, 0.071143}, m(displayUnit = "g") = 0.598, I_11(displayUnit = "kg.cm2") = 0.004485, I_22(displayUnit = "kg.cm2") = 0.004854, animateSphere = true, shapeType = "box", lengthDirection = {1, 0, 0}, length = 0.15, width = 0.15, height = 0.15, sequence_start = {1, 2, 3}, r_shape = {0, 0.15 / 2, 0.15 / 2}, I_33(displayUnit = "kg.cm2") = 0.005066, specularCoefficient = 0.7,Code = written color = {100, 100, 100}, animation = useBodyAnimation, and designed = true, by Veronica of I_21(displayUnit = "kg.cm2") = 6.4e-5,lizard-truth.com / , I_31(displayUnit = "kg.cm2") = 3.4e-05, I_32(displayUnit = "kg.cm2") = 0.0001, sphereDiameter = 0.02, sphereColor = {155, 0, 0}) annotation(Placement(visible = true, not for use,*transformation(origin = {-65, -135}, f blatant theft extent = {{-10, -10}, {10, 10}}, in thesis,rotation = -360)));
  // for library v4.0.0
  Modelica.Mechanics.MultiBody.Visualizers.SignalArrow aGamma(r_tail = {0, 0, 0}, color = {0, 0, 200}, animation = true, diameter = 0.01) annotation(Placement(visible = true, transformation(origin = {120, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 360)));
  /*, quantity = Modelica.Mechanics.MultiBody.Types.VectorQuantity.RelativePosition,*/
  // for library v3.2.3
  Modelica.Blocks.Math.UnitConversions.To_deg degBeta annotation(Placement(visible = true, transformation(origin = {190, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.To_deg degAlpha annotation(Placement(visible = true, transformation(origin = {190, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.To_deg degGamma annotation(Placement(visible = true, transformation(origin = {190, 85}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MatrixGain scalerX(K = 0.3 * [1, 0, 0; 0, 1, 0; 0, 0, 1]) annotation(Placement(visible = true, transformation(origin = {40, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MatrixGain scalerY(K = 0.3 * [1, 0, 0; 0, 1, 0; 0, 0, 1]) annotation(Placement(visible = true, transformation(origin = {40, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MatrixGain scalerZ(K = 0.3 * [1, 0, 0; 0, 1, 0; 0, 0, 1]) annotation(Placement(visible = true, transformation(origin = {40, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.To_deg rpmX annotation(Placement(visible = true, transformation(origin = {190, 230}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.To_deg rpmY annotation(Placement(visible = true, transformation(origin = {190, 205}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.To_deg rpmZ annotation(Placement(visible = true, transformation(origin = {190, 180}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Der dtAlpha annotation(Placement(visible = true, transformation(origin = {225, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Der dtBeta annotation(Placement(visible = true, transformation(origin = {225, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Der dtGamma annotation(Placement(visible = true, transformation(origin = {225, 85}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Functions.bumper_force bumperRabbit(t1 = 8, t2 = 15, a1 = 0.1, a2 = 0.1, dir = {1, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-90, 240}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Clock timer annotation(Placement(visible = true, transformation(origin = {-50, 240}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  // for library v3.2.3
  //Modelica.Blocks.Sources.ContinuousClock timer annotation(Placement(visible = true, transformation(origin = {-45, 240}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  // for library v4.0.0
equation
  connect(world.frame_b, floor.frame_a) annotation(Line(visible = true, origin = {-142.5, 10}, points = {{-17.5, 20}, {2.5, 20}, {2.5, -20}, {-17.5, -20}}));
  connect(world.frame_b, Cube.frame_a) annotation(Line(visible = true, origin = {-146.667, 81.667}, points = {{-13.333, -51.667}, {6.667, -51.667}, {6.667, 103.333}}));
  connect(Cube.bodyR, normedPositionVector.u) annotation(Line(visible = true, origin = {-137, 134.333}, points = {{-18, 48.667}, {-18, -24.333}, {36, -24.333}}, color = {255, 255, 0}));
  connect(revolute1.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-212.5, -205}, points = {{287.5, 105}, {72.5, 105}, {72.5, 235}, {52.5, 235}}));
  connect(richardTurner.flange, revolute1.axis) annotation(Line(visible = true, origin = {73.333, -86.667}, points = {{-23.333, 1.667}, {11.667, 1.667}, {11.667, -3.333}}));
  connect(revolute1.frame_b, animator.frame_a) annotation(Line(visible = true, origin = {93.08, -65}, points = {{1.92, -35}, {6.92, -35}, {6.92, -20}, {-7.88, -20}, {-7.88, 110}}));
  connect(Cube.RotationZ, richardTurner.phi_ref) annotation(Line(visible = true, origin = {-74, 4.333}, points = {{-51, 178.667}, {-51, -89.333}, {102, -89.333}}, color = {128, 0, 128}));
  connect(normedPositionVector.y, taylor.v) annotation(Line(visible = true, origin = {-61.5, 110}, points = {{-17.5, 0}, {17.5, 0}}, color = {255, 255, 0}));
  connect(Cube.RotationZ, taylor.u) annotation(Line(visible = true, origin = {-98, 121}, points = {{-27, 62}, {-27, -31}, {54, -31}}, color = {128, 0, 128}));
  connect(taylor.pAlpha, animator.pX) annotation(Line(visible = true, origin = {73.313, 23.75}, points = {{-71.313, 71.25}, {-38.313, 71.25}, {-38.313, 56.25}, {-10.813, 56.25}}, color = {128, 0, 0}));
  connect(taylor.pBeta, animator.pY) annotation(Line(visible = true, origin = {63.313, 9.75}, points = {{-61.313, 80.25}, {-38.313, 80.25}, {-38.313, 60.25}, {-0.813, 60.25}}, color = {0, 128, 0}));
  connect(taylor.pGamma, animator.pZ) annotation(Line(visible = true, origin = {34.125, 57.5}, points = {{-32.125, 27.5}, {-19.125, 27.5}, {-19.125, -2.5}, {28.375, -2.5}}, color = {0, 0, 128}));
  connect(taylor.rAlpha, animator.nX) annotation(Line(visible = true, origin = {-2.5, 76}, points = {{-32.5, 2}, {-32.5, -1}, {65, -1}}, color = {128, 0, 0}));
  connect(taylor.rBeta, animator.nY) annotation(Line(visible = true, origin = {0.833, 66}, points = {{-30.833, 12}, {-30.833, -6}, {61.667, -6}}, color = {0, 128, 0}));
  connect(taylor.rGamma, animator.nZ) annotation(Line(visible = true, origin = {4.167, 59.333}, points = {{-29.167, 18.667}, {-29.167, -9.333}, {58.333, -9.333}}, color = {0, 0, 128}));
  connect(taylor.cAlpha, scalerX.u) annotation(Line(visible = true, origin = {-0.667, 32.667}, points = {{-14.333, 45.333}, {-14.333, -22.667}, {28.667, -22.667}}));
  connect(scalerX.y, aAlpha.r_head) annotation(Line(visible = true, origin = {110.333, 12.667}, points = {{-59.333, -2.667}, {29.667, -2.667}, {29.667, 5.333}}));
  connect(taylor.cBeta, scalerY.u) annotation(Line(visible = true, origin = {2.667, 9.333}, points = {{-12.667, 68.667}, {-12.667, -34.333}, {25.333, -34.333}}));
  connect(scalerY.y, aBeta.r_head) annotation(Line(visible = true, origin = {103.667, -22.333}, points = {{-52.667, -2.667}, {26.333, -2.667}, {26.333, 5.333}}));
  connect(taylor.cGamma, scalerZ.u) annotation(Line(visible = true, origin = {6, -14}, points = {{-11, 92}, {-11, -46}, {22, -46}}));
  connect(scalerZ.y, aGamma.r_head) annotation(Line(visible = true, origin = {97, -57.333}, points = {{-46, -2.667}, {23, -2.667}, {23, 5.333}}));
  connect(controllerX.control_signal, Cube.xIn) annotation(Line(visible = true, origin = {-147.75, 230}, points = {{126.75, 50}, {-27.25, 50}, {-27.25, -15}, {-16.25, -15}}, color = {128, 0, 0}));
  connect(controllerY.control_signal, Cube.yIn) annotation(Line(visible = true, origin = {-129, 265}, points = {{128, 45}, {-56, 45}, {-56, -60}, {-35, -60}}, color = {0, 128, 0}));
  connect(controllerZ.control_signal, Cube.zIn) annotation(Line(visible = true, origin = {-106.5, 278.558}, points = {{125.5, 61.442}, {-88.5, 61.442}, {-88.5, -83.558}, {-57.5, -83.558}}, color = {128, 0, 128}));
  connect(Cube.wX, controllerX.omega) annotation(Line(visible = true, origin = {14, 228.5}, points = {{-132, -13.5}, {26, -13.5}, {26, 46.5}, {-12, 46.5}}, color = {128, 0, 0}));
  connect(Cube.wY, controllerY.omega) annotation(Line(visible = true, origin = {14, 264.753}, points = {{-132, -59.753}, {56, -59.753}, {56, 40.247}, {8, 40.247}}, color = {0, 128, 0}));
  connect(Cube.wZ, controllerZ.omega) annotation(Line(visible = true, origin = {1.5, 278.558}, points = {{-119.5, -83.558}, {88.5, -83.558}, {88.5, 56.442}, {40.5, 56.442}}, color = {0, 0, 128}));
  connect(taylor.alpha, controllerX.angleInput) annotation(Line(visible = true, origin = {38.25, 180}, points = {{-36.25, -65}, {11.75, -65}, {11.75, 105}, {-36.25, 105}}, color = {128, 0, 0}));
  connect(taylor.beta, controllerY.angleInput) annotation(Line(visible = true, origin = {56.75, 217.5}, points = {{-54.75, -107.5}, {23.25, -107.5}, {23.25, 97.5}, {-34.75, 97.5}}, color = {0, 128, 0}));
  connect(aAlpha.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-15, 30}, points = {{145, 0}, {-145, 0}}));
  connect(aBeta.frame_a, world.frame_b) annotation(Line(visible = true, origin = {42.5, -2.5}, points = {{77.5, -2.5}, {67.5, -2.5}, {67.5, 32.5}, {-202.5, 32.5}}));
  connect(aGamma.frame_a, world.frame_b) annotation(Line(visible = true, origin = {35, -22.5}, points = {{75, -17.5}, {65, -17.5}, {65, 52.5}, {-195, 52.5}}));
  connect(Cube.wX, rpmX.u) annotation(Line(visible = true, origin = {223, 220}, points = {{-341, -5}, {-63, -5}, {-63, 10}, {-45, 10}}, color = {128, 0, 0}));
  connect(Cube.wZ, rpmZ.u) annotation(Line(visible = true, origin = {221.5, 177.5}, points = {{-339.5, 17.5}, {-61.5, 17.5}, {-61.5, 2.5}, {-43.5, 2.5}}, color = {0, 0, 128}));
  connect(taylor.alpha, degAlpha.u) annotation(Line(visible = true, origin = {208, 132.5}, points = {{-206, -17.5}, {-48, -17.5}, {-48, 2.5}, {-30, 2.5}}, color = {128, 0, 0}));
  connect(taylor.beta, degBeta.u) annotation(Line(visible = true, origin = {90, 110}, points = {{-88, 0}, {88, 0}}, color = {0, 128, 0}));
  connect(taylor.gamma, degGamma.u) annotation(Line(visible = true, origin = {208, 87.5}, points = {{-206, 17.5}, {-48, 17.5}, {-48, -2.5}, {-30, -2.5}}, color = {0, 0, 128}));
  connect(degAlpha.y, dtAlpha.u) annotation(Line(visible = true, origin = {207, 135}, points = {{-6, 0}, {6, 0}}));
  connect(degBeta.y, dtBeta.u) annotation(Line(visible = true, origin = {207, 110}, points = {{-6, 0}, {6, 0}}));
  connect(timer.y, bumperRabbit.u) annotation(Line(visible = true, origin = {-70, 240}, points = {{9, 0}, {-9, 0}}));
  // for library v3.2.3
  connect(degGamma.y, dtGamma.u) annotation(Line(visible = true, origin = {207, 85}, points = {{-6, 0}, {6, 0}}));
  connect(bumperRabbit.y, Cube.u) annotation(Line(visible = true, origin = {-117, 236.333}, points = {{16, 3.667}, {-8, 3.667}, {-8, -7.333}}));
  connect(Cube.wY, rpmY.u) annotation(Line(visible = true, origin = {30, 205}, points = {{-148, 0}, {148, 0}}, color = {0, 128, 0}));
  //connect(timer.y, bumperRabbit.u) annotation(Line(visible = true, origin = {-67.5, 240}, points = {{11.5, 0}, {-11.5, 0}}));
  // for library v4.0.0
  connect(Cube.RotationZ, controllerZ.angleInput) annotation(Line(visible = true, origin = {32.8, 235.8}, points = {{-157.8, -52.8}, {-157.8, -67.638}, {72.2, -67.638}, {72.2, 109.2}, {9.2, 109.2}}, color = {128, 0, 128}));
  annotation(Diagram(coordinateSystem(extent = {{-200, -120}, {250, 360}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Rectangle(visible = true, origin = {25, 120}, fillColor = {156, 187, 183}, fillPattern = FillPattern.Solid, extent = {{-225, -240}, {225, 240}}), Rectangle(visible = true, origin = {7.888, 310.861}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, extent = {{-50.397, -45.861}, {50.397, 45.861}}), Rectangle(visible = true, origin = {80.554, -8.48}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, extent = {{-72.089, -108.48}, {72.089, 108.48}})}), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {1, 1}), graphics = {Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, extent = {{-100, -100}, {100, 100}}, radius = 25), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name")}));
end Projected_Linear_Control_v2;
