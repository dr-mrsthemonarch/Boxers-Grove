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
//  This file is part of project: Boxers Grove
//
within Functions;

model RCME3 "Rotate vector v around cardinal axis e3, angle u"
  Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-60, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput v[3] annotation(Placement(visible = true, transformation(origin = {-60, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y[3] annotation(Placement(visible = true, transformation(origin = {80, -0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  y[1] = v[1] * cos(u) - v[2] * sin(u);
  y[2] = v[2] * cos(u) + v[1] * sin(u);
  y[3] = v[3];
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {1, 37, 163}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Line(visible = true, origin = {0, 25}, points = {{0, -35}, {0, 35}}, color = {169, 169, 169}, thickness = 1, smooth = Smooth.Bezier), Line(visible = true, origin = {-15, -15}, points = {{25, 25}, {-25, -25}}, color = {169, 169, 169}, thickness = 1, smooth = Smooth.Bezier), Line(visible = true, origin = {15, -15}, points = {{-25, 25}, {25, -25}}, color = {169, 169, 169}, thickness = 1, smooth = Smooth.Bezier), Polygon(visible = true, origin = {-19.807, 68.842}, rotation = 19.2, lineColor = {231, 0, 0}, fillColor = {231, 0, 0}, fillPattern = FillPattern.Solid, points = {{-0.064, 9.009}, {-5.936, -4.468}, {5.999, -4.541}}), Polygon(visible = true, origin = {-40.64, -40.539}, rotation = -227.844, lineColor = {169, 169, 169}, fillColor = {169, 169, 169}, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Line(visible = true, origin = {-10, 35}, points = {{10, -35}, {-10, 35}}, color = {231, 0, 0}, thickness = 2.5), Polygon(visible = true, origin = {40.723, -40.453}, rotation = -494.476, lineColor = {169, 169, 169}, fillColor = {169, 169, 169}, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Polygon(visible = true, origin = {-0.033, 60.303}, lineColor = {169, 169, 169}, fillColor = {169, 169, 169}, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Ellipse(visible = true, origin = {0, 30}, fillColor = {255, 255, 255}, pattern = LinePattern.Dot, lineThickness = 1, extent = {{-40, -17.5}, {40, 17.5}}), Polygon(visible = true, origin = {32.091, 19.252}, rotation = -247.852, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Polygon(visible = true, origin = {19.519, 68.842}, rotation = -19.2, pattern = LinePattern.Dot, fillPattern = FillPattern.Solid, points = {{0.064, 9.009}, {5.936, -4.468}, {-5.999, -4.541}}), Line(visible = true, origin = {10, 35}, points = {{-10, -35}, {10, 35}}, thickness = 2.5), Text(visible = true, origin = {0.493, -75}, extent = {{-40.493, -15}, {40.493, 15}}, textString = "RCM*V"), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name")}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end RCME3;
