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

model ADC_zerorder "Basic ADC with Normal noise"
  parameter Modelica.SIunits.Time sampleperiod "Sample Period of ADC";
  // for library 3.2.3
  //parameter Modelica.Units.SI.Time sampleperiod "Sample Period of ADC";// for library 4.0
  parameter Real mu "Expectation (mean) value of the normal distribution";
  parameter Real sigma "Standard deviation of the normal distribution";
  Modelica.Blocks.Discrete.ZeroOrderHold zeroOrderHold1(samplePeriod = sampleperiod, ySample.fixed = false) annotation(Placement(visible = true, transformation(origin = {-10, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Noise.NormalNoise normalNoise1(samplePeriod = sampleperiod, mu = mu, sigma = sigma, useGlobalSeed = true) annotation(Placement(visible = true, transformation(origin = {-10, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Blocks.Noise.GlobalSeed globalSeed(useAutomaticSeed = true) annotation(Placement(visible = true, transformation(origin = {-50, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(Placement(visible = true, transformation(origin = {50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-60, 30}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  connect(add1.y, y) annotation(Line(visible = true, origin = {75.5, 0}, points = {{-14.5, 0}, {14.5, 0}}));
  connect(zeroOrderHold1.y, add1.u1) annotation(Line(visible = true, origin = {26.75, 18}, points = {{-25.75, 12}, {-16.75, 12}, {-16.75, -12}, {11.25, -12}}));
  connect(normalNoise1.y, add1.u2) annotation(Line(visible = true, origin = {26.75, -18}, points = {{-25.75, -12}, {-16.75, -12}, {-16.75, 12}, {11.25, 12}}));
  connect(u, zeroOrderHold1.u) annotation(Line(visible = true, origin = {-41, 30}, points = {{-19, 0}, {19, 0}}));
  annotation(Diagram(coordinateSystem(extent = {{-80, -60}, {110, 60}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Rectangle(visible = true, origin = {15, -0}, fillColor = {156, 187, 183}, fillPattern = FillPattern.Solid, extent = {{-95, -60}, {95, 60}})}), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Line(visible = true, origin = {-50, 57.5}, points = {{0, -7.5}, {0, 7.5}}, color = {192, 192, 192}, thickness = 5, smooth = Smooth.Bezier), Line(visible = true, origin = {-25, 57.5}, points = {{0, -7.5}, {0, 7.5}}, color = {192, 192, 192}, thickness = 5, smooth = Smooth.Bezier), Line(visible = true, origin = {0, 57.5}, points = {{0, -7.5}, {0, 7.5}}, color = {192, 192, 192}, thickness = 5, smooth = Smooth.Bezier), Line(visible = true, origin = {50, 57.5}, points = {{0, -7.5}, {0, 7.5}}, color = {192, 192, 192}, thickness = 5, smooth = Smooth.Bezier), Line(visible = true, origin = {25, 57.5}, points = {{0, -7.5}, {0, 7.5}}, color = {192, 192, 192}, thickness = 5, smooth = Smooth.Bezier), Line(visible = true, origin = {-50, -57.5}, points = {{0, -7.5}, {0, 7.5}}, color = {192, 192, 192}, thickness = 5), Line(visible = true, origin = {-25, -57.5}, points = {{0, -7.5}, {0, 7.5}}, color = {192, 192, 192}, thickness = 5), Line(visible = true, origin = {0, -57.5}, points = {{0, -7.5}, {0, 7.5}}, color = {192, 192, 192}, thickness = 5), Line(visible = true, origin = {50, -57.5}, points = {{0, -7.5}, {0, 7.5}}, color = {192, 192, 192}, thickness = 5), Line(visible = true, origin = {25, -57.5}, points = {{0, -7.5}, {0, 7.5}}, color = {192, 192, 192}, thickness = 5), Rectangle(visible = true, fillColor = {128, 128, 128}, fillPattern = FillPattern.VerticalCylinder, lineThickness = 5, extent = {{-50, -50}, {50, 50}}), Line(visible = true, points = {{-50, 0}, {50, 0}}, color = {192, 192, 192}, thickness = 0.5), Line(visible = true, origin = {-0.655, 0}, points = {{-49.345, 0}, {-24.345, 40}, {0.655, 0}, {25.655, -40}, {47.382, 0}}, color = {192, 192, 192}, thickness = 1, smooth = Smooth.Bezier), Line(visible = true, origin = {0.411, 2.043}, points = {{-50.411, -2.043}, {-48.018, 2.957}, {-45.411, 2.957}, {-45.411, 7.957}, {-42.001, 9.815}, {-42.001, 12.957}, {-37.399, 15.655}, {-37.399, 21.141}, {-35.411, 22.957}, {-33.683, 21.089}, {-33.683, 26.274}, {-31.913, 26.274}, {-30.411, 22.957}, {-30.411, 30.167}, {-30.411, 30.167}, {-27.312, 25.566}, {-27.312, 30.136}, {-25.411, 30.136}, {-25.411, 25.389}, {-22.533, 30.521}, {-22.533, 30.521}, {-20.411, 27.957}, {-20.411, 27.957}, {-17.401, 27.957}, {-17.401, 24.504}, {-15.411, 24.504}, {-15.411, 21.318}, {-15.411, 17.957}, {-11.914, 17.957}, {-11.914, 15.124}, {-10.411, 15.124}, {-10.411, 12.957}, {-6.959, 12.957}, {-8.906, 7.957}, {-5.411, 7.957}, {-7.136, 5.744}, {-2.004, 5.744}, {-5.411, 2.957}, {-0.411, 0.081}, {-2.004, -2.043}, {4.589, -4.521}, {1.359, -7.043}, {1.359, -12.043}, {4.589, -10.361}, {4.589, -14.962}, {9.589, -12.043}, {9.589, -19.387}, {13.04, -19.387}, {11.447, -24.342}, {16.225, -24.342}, {14.589, -32.043}, {19.589, -29.829}, {19.589, -37.043}, {22.243, -29.076}, {22.243, -37.043}, {24.589, -32.043}, {24.589, -29.268}, {27.552, -34.445}, {27.006, -28.885}, {34.589, -32.043}, {29.589, -27.043}, {34.589, -27.043}, {34.589, -22.043}, {37.994, -24.696}, {34.589, -20.449}, {39.589, -20.449}, {39.589, -17.043}, {44.589, -17.043}, {41.179, -12.043}, {44.589, -13.724}, {44.589, -8.591}, {47.03, -8.591}, {44.589, -3.636}, {49.589, -3.636}, {49.589, -2.043}}, color = {255, 64, 255}, thickness = 1), Text(visible = true, origin = {16.688, 28.947}, textColor = {255, 255, 255}, extent = {{-18.312, -8.947}, {18.312, 8.947}}, textString = "adc"), Rectangle(visible = true, lineColor = {4, 51, 255}, fillColor = {255, 255, 255}, extent = {{-100, -100}, {100, 100}})}));
end ADC_zerorder;
