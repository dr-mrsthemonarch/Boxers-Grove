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

block Vector_Const "Create a Vector in 3D Space"
  parameter Real k[3](start = 1.0) "Constant output vector" annotation(Dialog(groupImage = "modelica://Modelica/Resources/Images/Blocks/Sources/Constant.png"));
  Modelica.Blocks.Interfaces.RealOutput y[3] annotation(Placement(visible = true, transformation(origin = {140, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  y = k;
  annotation(Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Rectangle(visible = true, lineColor = {1, 37, 163}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Line(visible = true, points = {{-80, 68}, {-80, -80}}, thickness = 1), Polygon(visible = true, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Line(visible = true, points = {{-90, -70}, {82, -70}}, thickness = 1), Polygon(visible = true, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}), Line(visible = true, origin = {-47.766, -37.624}, points = {{-37.766, -37.624}, {37.766, 37.624}}, thickness = 1), Polygon(visible = true, origin = {-14.41, -108.918}, rotation = -49.424, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Line(visible = true, origin = {-25, 0}, points = {{-25, -50}, {25, 50}}, color = {204, 60, 54}, thickness = 5), Polygon(visible = true, origin = {38.893, -48.697}, rotation = -27.75, lineColor = {192, 76, 59}, fillColor = {192, 76, 59}, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}})}));
end Vector_Const;
