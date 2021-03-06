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

model normalize "Create Arbitrary Unit Vector Length of 1"
  Modelica.Blocks.Interfaces.RealInput u[3] annotation(Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y[3] annotation(Placement(visible = true, transformation(origin = {130, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  y[1] = u[1] / sqrt(abs(u[1]) ^ 2 + abs(u[2]) ^ 2 + abs(u[3]) ^ 2);
  y[2] = u[2] / sqrt(abs(u[1]) ^ 2 + abs(u[2]) ^ 2 + abs(u[3]) ^ 2);
  y[3] = u[3] / sqrt(abs(u[1]) ^ 2 + abs(u[2]) ^ 2 + abs(u[3]) ^ 2);
  annotation(Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Rectangle(visible = true, lineColor = {1, 37, 163}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Line(visible = true, points = {{-80, 68}, {-80, -80}}, color = {128, 128, 128}), Polygon(visible = true, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Line(visible = true, points = {{-90, -70}, {82, -70}}, color = {128, 128, 128}), Polygon(visible = true, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid, points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}), Line(visible = true, origin = {-55, -20}, points = {{-25, -50}, {25, 50}}, color = {204, 60, 54}, thickness = 5), Line(visible = true, origin = {-47.766, -37.624}, points = {{-37.766, -37.624}, {37.766, 37.624}}), Polygon(visible = true, origin = {-14.41, -108.918}, rotation = -49.424, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Text(visible = true, origin = {33.514, 29.462}, extent = {{-33.514, -19.462}, {33.514, 19.462}}, textString = " L = 1"), Polygon(visible = true, origin = {7.555, -69.641}, rotation = -27.75, lineColor = {192, 76, 59}, fillColor = {192, 76, 59}, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Line(visible = true, origin = {-46.789, -3.318}, points = {{-33.211, -66.682}, {33.211, 66.682}}, color = {19, 55, 224}, thickness = 2.5), Polygon(visible = true, origin = {24.44, -35.301}, rotation = -27.75, lineColor = {48, 56, 236}, fillColor = {48, 56, 236}, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}})}));
end normalize;
