//  This file is part of BoxersGrove.
// 
//     BoxersGrove is free software: you can redistribute it and/or modify
//     it under the terms of the GNU General Public License as published by
//     the Free Software Foundation, either version 3 of the License, or
//     (at your option) any later version.
// 
//     Foobar is distributed in the hope that it will be useful,
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

block VectorAngle_2D "Calculate Angle between Vector components u1, u2"
  Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {-120, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u2 annotation(Placement(visible = true, transformation(origin = {-120, -80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-110, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {130, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  y = atan2(u2, u1);
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {1, 37, 163}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Line(visible = true, points = {{-80, 68}, {-80, -80}}, thickness = 1), Polygon(visible = true, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Line(visible = true, points = {{-90, -70}, {82, -70}}, thickness = 1), Polygon(visible = true, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}), Line(visible = true, origin = {-55, -20}, points = {{-25, -50}, {25, 50}}, color = {204, 60, 54}, thickness = 5), Polygon(visible = true, origin = {7.555, -69.641}, rotation = -27.75, lineColor = {192, 76, 59}, fillColor = {192, 76, 59}, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Text(visible = true, origin = {46.991, 72.101}, extent = {{-53.009, -27.899}, {53.009, 27.899}}, textString = "Rad ?"), Ellipse(visible = true, origin = {-20, 50}, fillPattern = FillPattern.Solid, extent = {{-4.218, -4.218}, {4.218, 4.218}}), Line(visible = true, origin = {-20, -11.122}, points = {{0, 58.878}, {0, -58.878}}, pattern = LinePattern.Dash, thickness = 1), Line(visible = true, origin = {-50, 50}, points = {{30, 0}, {-30, 0}}, pattern = LinePattern.Dash, thickness = 1), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name")}));
end VectorAngle_2D;
