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

block Rad_to_Deg "Converts Radians to Degrees"
  extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit = "rad"), y(unit = "deg"));
equation
  y = Modelica.SIunits.Conversions.to_deg(u);
  annotation(Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Polygon(visible = true, lineColor = {190, 20, 31}, fillColor = {190, 20, 31}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-60, 5}, {42.5, 5}, {27.5, 20}, {40, 20}, {60, 0}, {40, -20}, {27.5, -20}, {42.5, -5}, {-60, -5}}), Text(visible = true, textColor = {64, 64, 64}, extent = {{-90, 40}, {90, 90}}, textString = "Rad", horizontalAlignment = TextAlignment.Left), Text(visible = true, textColor = {64, 64, 64}, extent = {{-90, -90}, {90, -40}}, textString = "Deg", horizontalAlignment = TextAlignment.Right)}));
end Rad_to_Deg;
