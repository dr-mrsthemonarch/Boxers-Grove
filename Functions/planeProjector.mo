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

block planeProjector "Project given Vector u onto a plane described with norm n"
  // p(u,n) = n + ( norm(u) - proj(u, n) )
  Modelica.Blocks.Interfaces.RealInput u[3] annotation(Placement(visible = true, transformation(origin = {-130, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput n[3] annotation(Placement(visible = true, transformation(origin = {-130, -70}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-110, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y[3] annotation(Placement(visible = true, transformation(origin = {130, -0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {110, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  y[1] = n[1] + u[1] / sqrt(abs(u[1]) ^ 2 + abs(u[2]) ^ 2 + abs(u[3]) ^ 2) - n[1] * (u[1] * n[1] + u[2] * n[2] + u[3] * n[3]) / (abs(n[1]) ^ 2 + abs(n[2]) ^ 2 + abs(n[3]) ^ 2) * sqrt(abs(u[1]) ^ 2 + abs(u[2]) ^ 2 + abs(u[3]) ^ 2);
  y[2] = n[2] + u[2] / sqrt(abs(u[1]) ^ 2 + abs(u[2]) ^ 2 + abs(u[3]) ^ 2) - n[2] * (u[1] * n[1] + u[2] * n[2] + u[3] * n[3]) / (abs(n[1]) ^ 2 + abs(n[2]) ^ 2 + abs(n[3]) ^ 2) * sqrt(abs(u[1]) ^ 2 + abs(u[2]) ^ 2 + abs(u[3]) ^ 2);
  y[3] = n[3] + u[3] / sqrt(abs(u[1]) ^ 2 + abs(u[2]) ^ 2 + abs(u[3]) ^ 2) - n[3] * (u[1] * n[1] + u[2] * n[2] + u[3] * n[3]) / (abs(n[1]) ^ 2 + abs(n[2]) ^ 2 + abs(n[3]) ^ 2) * sqrt(abs(u[1]) ^ 2 + abs(u[2]) ^ 2 + abs(u[3]) ^ 2);
  annotation(Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {1, 37, 163}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Line(visible = true, origin = {61.02, 16}, points = {{32, 44}, {-48, 64}, {-48, -66}, {32, -86}, {32, 44}}, color = {147, 150, 160}, thickness = 1), Line(visible = true, origin = {-6.167, 38.666}, points = {{-66.167, -11.334}, {66.167, 11.334}}, color = {178, 45, 43}, pattern = LinePattern.Dot, thickness = 1), Line(visible = true, origin = {0, -45}, points = {{-50, -5}, {50, 5}}, color = {178, 45, 43}, pattern = LinePattern.Dot, thickness = 1), Line(visible = true, origin = {-50, -25}, points = {{0, -35}, {0, 35}}, thickness = 1), Line(visible = true, origin = {-65, -65}, points = {{25, 25}, {-25, -25}}, thickness = 1), Line(visible = true, origin = {-35, -65}, points = {{-25, 25}, {25, -25}}, thickness = 1), Polygon(visible = true, origin = {-69.807, 18.842}, rotation = 19.2, lineColor = {231, 0, 0}, fillColor = {231, 0, 0}, fillPattern = FillPattern.Solid, points = {{-0.064, 9.009}, {-5.936, -4.468}, {5.999, -4.541}}), Polygon(visible = true, origin = {-90.64, -90.539}, rotation = -227.844, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Line(visible = true, origin = {-60, -15}, points = {{10, -35}, {-10, 35}}, color = {231, 0, 0}, thickness = 2.5), Polygon(visible = true, origin = {-9.277, -90.453}, rotation = -494.476, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Line(visible = true, origin = {50, -20}, points = {{0, -30}, {0, 30}}, thickness = 1), Polygon(visible = true, origin = {49.967, 13.333}, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}}), Polygon(visible = true, origin = {80.45, -47.531}, rotation = -104.895, fillPattern = FillPattern.Solid, points = {{0.065, 6.667}, {4.967, -3.333}, {-5.033, -3.333}}), Line(visible = true, origin = {60, -42.056}, points = {{-20, 5.337}, {20, -5.337}}, thickness = 1), Line(visible = true, origin = {55.124, 0}, points = {{-4.876, -40}, {4.876, 40}}, color = {231, 0, 0}, thickness = 2.5), Polygon(visible = true, origin = {60.133, 41.513}, rotation = -7.74, lineColor = {231, 0, 0}, fillColor = {231, 0, 0}, pattern = LinePattern.Dot, fillPattern = FillPattern.Solid, points = {{-0.064, 9.009}, {-5.936, -4.468}, {5.999, -4.541}}), Polygon(visible = true, origin = {-50.033, 10.303}, fillPattern = FillPattern.Solid, points = {{-0.065, 6.667}, {-4.967, -3.333}, {5.033, -3.333}})}));
end planeProjector;
