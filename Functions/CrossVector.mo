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

model CrossVector "Cross product between vector u and vector v"
  Modelica.Blocks.Interfaces.RealInput u[3] annotation(Placement(visible = true, transformation(origin = {-120, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput v[3] annotation(Placement(visible = true, transformation(origin = {-120, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y[3] annotation(Placement(visible = true, transformation(origin = {140, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  y = cross(u, v);
  annotation(Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Line(visible = true, origin = {0, 25}, points = {{0, -35}, {0, 35}}, thickness = 1), Line(visible = true, origin = {-15, -15}, points = {{25, 25}, {-25, -25}}, thickness = 1), Line(visible = true, origin = {15, -15}, points = {{-25, 25}, {25, -25}}, thickness = 1), Polygon(visible = true, origin = {20.864, 71.172}, rotation = -19.2, lineColor = {231, 0, 0}, fillColor = {231, 0, 0}, fillPattern = FillPattern.Solid, points = {{0.064, 9.009}, {5.936, -4.468}, {-5.999, -4.541}}), Polygon(visible = true, origin = {-40.64, -40.539}, rotation = -227.844, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Line(visible = true, origin = {10, 35}, points = {{-10, -35}, {10, 35}}, color = {231, 0, 0}, thickness = 2.5), Polygon(visible = true, origin = {40.723, -40.453}, rotation = -494.476, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Polygon(visible = true, origin = {-0.033, 60.303}, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Line(visible = true, origin = {12.5, -37.5}, points = {{-12.5, 37.5}, {12.5, -37.5}}, color = {0, 150, 255}, thickness = 2.5), Polygon(visible = true, origin = {24.136, -73.828}, rotation = -160.685, lineColor = {0, 150, 255}, fillColor = {0, 150, 255}, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-0.064, 9.009}, {-5.936, -4.468}, {5.999, -4.541}}), Polygon(visible = true, origin = {75.28, 8.197}, rotation = -81.68, lineColor = {255, 147, 0}, fillColor = {255, 147, 0}, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-0.064, 9.009}, {-5.936, -4.468}, {5.999, -4.541}}), Line(visible = true, origin = {37.5, 3.647}, rotation = -283.034, points = {{-12.894, 35.507}, {12.894, -35.507}}, color = {255, 147, 0}, thickness = 2.5), Text(visible = true, origin = {-52.733, 75}, extent = {{-34.787, -15}, {34.787, 15}}, textString = "u x v")}));
end CrossVector;
