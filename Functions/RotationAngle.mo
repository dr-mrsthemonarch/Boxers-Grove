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

model RotationAngle "Noramlize then calculate Rotational Angle of vector u against vector n sharing the same plane with optional offset o"
  Modelica.Blocks.Interfaces.RealInput u[3] annotation(Placement(visible = true, transformation(origin = {-120, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput n[3] annotation(Placement(visible = true, transformation(origin = {-120, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {140, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Real o;
equation
  y = (-o) + acos(n[1] * u[1] / (sqrt(abs(n[1]) ^ 2 + abs(n[2]) ^ 2 + abs(n[3]) ^ 2) * sqrt(abs(u[1]) ^ 2 + abs(u[2]) ^ 2 + abs(u[3]) ^ 2)) + n[2] * u[2] / (sqrt(abs(n[1]) ^ 2 + abs(n[2]) ^ 2 + abs(n[3]) ^ 2) * sqrt(abs(u[1]) ^ 2 + abs(u[2]) ^ 2 + abs(u[3]) ^ 2)) + n[3] * u[3] / (sqrt(abs(n[1]) ^ 2 + abs(n[2]) ^ 2 + abs(n[3]) ^ 2) * sqrt(abs(u[1]) ^ 2 + abs(u[2]) ^ 2 + abs(u[3]) ^ 2)));
  annotation(Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Rectangle(visible = true, lineColor = {1, 37, 163}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Line(visible = true, points = {{-80, 68}, {-80, -80}}, color = {128, 128, 128}), Polygon(visible = true, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Line(visible = true, points = {{-90, -70}, {82, -70}}, color = {128, 128, 128}), Polygon(visible = true, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid, points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}), Line(visible = true, origin = {-55, -20}, points = {{-25, -50}, {25, 50}}, color = {204, 60, 54}, thickness = 5), Polygon(visible = true, origin = {7.555, -69.641}, rotation = -27.75, lineColor = {192, 76, 59}, fillColor = {192, 76, 59}, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Line(visible = true, origin = {-6.117, -35}, points = {{-73.883, -35}, {73.883, 35}}, color = {19, 55, 224}, thickness = 2.5), Polygon(visible = true, origin = {36.561, -101.795}, rotation = -65.674, lineColor = {48, 56, 236}, fillColor = {48, 56, 236}, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Line(visible = true, origin = {-14.296, -6.135}, points = {{-25.704, 15.338}, {-7.549, 12.702}, {16.173, -6.731}, {21.408, -21.473}}, thickness = 2.5, smooth = Smooth.Bezier), Text(visible = true, origin = {44.711, 59.709}, extent = {{-53.009, -27.899}, {53.009, 27.899}}, textString = "Rad ?")}));
end RotationAngle;
