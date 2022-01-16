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
//  Copyright © 2022 Veronica of Lizard-Truth.com
//  This file is part of project: Boxers Grove
//
within CubeSubSystems;

model Arrow "Visualizing an arrow with variable size in v4.0.0; all data have to be set as modifiers (see info layer)"
  import Modelica.Mechanics.MultiBody.Types;
  import Modelica.Mechanics.MultiBody.Frames;
  import T = Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;
  import Modelica.Units.Conversions.to_unit1;
  input Frames.Orientation R = Frames.nullRotation() "Orientation object to rotate the world frame into the arrow frame" annotation(Dialog);
  input Modelica.Units.SI.Position r[3] = {0, 0, 0} "Position vector from origin of world frame to origin of arrow frame, resolved in world frame" annotation(Dialog);
  input Modelica.Units.SI.Position r_tail[3] = {0, 0, 0} "Position vector from origin of arrow frame to arrow tail, resolved in arrow frame" annotation(Dialog);
  input Modelica.Units.SI.Position r_head[3] = {0, 0, 0} "Position vector from arrow tail to the head of the arrow, resolved in arrow frame" annotation(Dialog);
  input Modelica.Units.SI.Diameter diameter = world.defaultArrowDiameter "Diameter of arrow line" annotation(Dialog);
  input Modelica.Mechanics.MultiBody.Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.ArrowColor "Color of arrow" annotation(Dialog(colorSelector = true));
  input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Material property describing the reflecting of ambient light (= 0 means, that light is completely absorbed)" annotation(Dialog);
protected
  outer Modelica.Mechanics.MultiBody.World world;
  Modelica.Units.SI.Length length = Modelica.Math.Vectors.length(r_head) "Length of arrow";
  Real e_x[3](each final unit = "1", start = {1, 0, 0}) = noEvent(if length < 1e-10 then {1, 0, 0} else r_head / length);
  Real rxvisobj[3](each final unit = "1") = transpose(R.T) * e_x "X-axis unit vector of shape, resolved in world frame" annotation(HideResult = true);
  Modelica.Units.SI.Position rvisobj[3] = r + T.resolve1(R.T, r_tail) "Position vector from world frame to shape frame, resolved in world frame" annotation(HideResult = true);
  Modelica.Units.SI.Length arrowLength = noEvent(max(0, length - diameter * Types.Defaults.ArrowHeadLengthFraction)) annotation(HideResult = true);
  CubeSubSystems.Shape arrowLine(length = arrowLength, width = diameter, height = diameter, lengthDirection = to_unit1(r_head), widthDirection = {0, 1, 0}, shapeType = "cylinder", color = color, specularCoefficient = specularCoefficient, r_shape = r_tail, r = r, R = R) if world.enableAnimation;
  CubeSubSystems.Shape arrowHead(length = noEvent(max(0, min(length, diameter * Types.Defaults.ArrowHeadLengthFraction))), width = noEvent(max(0, diameter * Modelica.Mechanics.MultiBody.Types.Defaults.ArrowHeadWidthFraction)), height = noEvent(max(0, diameter * Modelica.Mechanics.MultiBody.Types.Defaults.ArrowHeadWidthFraction)), lengthDirection = to_unit1(r_head), widthDirection = {0, 1, 0}, shapeType = "cone", color = color, specularCoefficient = specularCoefficient, r = rvisobj + rxvisobj * arrowLength, R = R) if world.enableAnimation;
  annotation(Documentation(info = "<html>
<p>
Model <strong>Arrow</strong> defines an arrow that is dynamically
visualized at the defined location (see variables below).
</p>

<p>
<img src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/Arrow.png\" alt=\"model Visualizers.Advanced.Arrow\">
</p>

<p>
The variables under heading <strong>Parameters</strong> below
are declared as (time varying) <strong>input</strong> variables.
If the default equation is not appropriate, a corresponding
modifier equation has to be provided in the
model where an <strong>Arrow</strong> instance is used, e.g., in the form
</p>
<pre>
    Visualizers.Advanced.Arrow arrow(diameter = sin(time));
</pre>

<p>
Variable <strong>color</strong> is an Integer vector with 3 elements,
{r, g, b}, and specifies the color of the shape.
{r,g,b} are the \"red\", \"green\" and \"blue\" color parts.
Note, r g, b are given in the range 0 .. 255.
The predefined type <strong>MultiBody.Types.Color</strong> contains
a menu definition of the colors used in the MultiBody
library (will be replaced by a color editor).
</p>
</html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid, extent = {{-100, -30}, {20, 28}}), Polygon(lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid, points = {{20, 60}, {100, 0}, {20, -60}, {20, 60}}), Text(textColor = {64, 64, 64}, extent = {{-150, 65}, {150, 105}}, textString = "%name")}));
end Arrow;
