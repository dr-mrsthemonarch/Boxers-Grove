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

model VectorVisualizer "Visualizing an arrow with dynamically varying size in frame_a based on input signal in v4.0.0"
  import Modelica.Mechanics.MultiBody.Types;
  extends Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer;
  parameter Boolean animation = true "= true, if animation shall be enabled";
  input Modelica.Units.SI.Position r_tail[3] = {0, 0, 0} "Vector from frame_a to arrow tail, resolved in frame_a" annotation(Dialog(group = "if animation = true", enable = animation));
  //  input SI.Diameter diameter = world.defaultArrowDiameter "Diameter of arrow line" annotation(Dialog(group = "if animation = true", enable = animation));
  input Modelica.Units.SI.Diameter diameter "Diameter of arrow line" annotation(Dialog(group = "if animation = true", enable = animation));
  input Modelica.Mechanics.MultiBody.Types.Color color = {0, 0, 255} "Color of arrow" annotation(Dialog(colorSelector = true, group = "if animation = true", enable = animation));
  input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(group = "if animation = true", enable = animation));
  Modelica.Blocks.Interfaces.RealInput r_head[3](each final quantity = "Length", each final unit = "m") "Position vector from origin of frame_a to head of arrow, resolved in frame_a" annotation(Placement(transformation(origin = {0, -120}, extent = {{-20, -20}, {20, 20}}, rotation = 90), iconTransformation(origin = {-0, -0}, extent = {{-140, -20}, {-100, 20}}, rotation = 90)));
protected
  CubeSubSystems.Arrow arrow(R = frame_a.R, r = frame_a.r_0, r_tail = r_tail, r_head = r_head, diameter = diameter, color = color, specularCoefficient = specularCoefficient) if world.enableAnimation and animation;
equation
  frame_a.f = zeros(3);
  frame_a.t = zeros(3);
  annotation(Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, extent = {{-100, -100}, {100, 100}}, radius = 25), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Line(visible = true, points = {{-75, 0}, {75, 0}}, thickness = 2.5), Polygon(visible = true, origin = {83.333, 0}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, points = {{-8.333, 25}, {-8.333, -25}, {16.667, 0}})}));
end VectorVisualizer;
