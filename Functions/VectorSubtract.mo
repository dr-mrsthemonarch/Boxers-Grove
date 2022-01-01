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

block VectorSubtract "Remove a Vector From Another"
  Modelica.Blocks.Interfaces.RealInput u1[3] annotation(Placement(visible = true, transformation(origin = {-40.0, 60.0}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0), iconTransformation(origin = {-120.0, 50.0}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u2[3] annotation(Placement(visible = true, transformation(origin = {-40.0, -60.0}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0), iconTransformation(origin = {-120.0, -50.0}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y[3] annotation(Placement(visible = true, transformation(origin = {50.0, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {110.0, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
equation
  y = u1 - u2;
  annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART Add -->
   <head>
   <style type=\"text/css\">
   
  body {
   padding: 0px;
   margin: 0px;
  }
  
  a {
   color: #cf1d24;
  }
  
  a.target {
   padding-top: 40px;
   margin-top: -40px;
  }
  
  p {
   font-family: arial;
   font-size: 13;
   margin: 9px 40px 5px 40px;
   padding-bottom: 0px;
   color: #555555;
   max-width: 800px;
  }
  
  h1 {
   font-size: 30;
   color: #cf1d24;
   font-weight: bold;
   margin-left: 20px;
   margin-top: 32px;
   margin-bottom: 15px;
   margin-right: 20px;
   padding-top: 0px;
  }
  
  h2 {
   font-size: 20;
   color: #cf1d24;
   font-weight: bold;
   margin-left: 20px;
   margin-right: 20px;
   margin-top: 5px;
   margin-bottom: 9px;
  }
  
  h3 {
   background: url('DocumentationFiles/dingbat3.png') no-repeat 0 0;
   font-size: 14px;
   font-family: helvetica;
   color: #4B4B4B;
   font-weight: bold;
   padding-left: 18px;
   margin-left: 20px;
   margin-right: 20px;
   margin-top: 12px;
   margin-bottom: 8px;
  }
  
  ul {
   font-family: arial;
   font-size: 13;
   margin: 9px 40px 5px 40px;
   padding-bottom: 0px;
   color: #555555;
   max-width: 800px;
   list-style-type: square;
  }
  
  li {
   margin-left: 0px;
   margin-top: 4px;
   margin-bottom: 2px;
   padding-left: 0px;
  }

  div.header {
   background: url('DocumentationFiles/WSMLogo.png') no-repeat 0 0;
   height: 96px;
   margin-top: 35px;
   background-color: #871613;
  }
  
  .headerspan {
   font-family: arial;
   text-decoration: none;
   font-size: 12px;
   font-weight: bold;
   display: inline-block;
   height: 35px;
   color: gray;
   padding: 0px;
   margin: 0px;
   margin-left: 20px;
  }
  
  .headera {
   font-family: arial;
   text-decoration: none;
   font-size: 12px;
   font-weight: bold;
   padding: 0px;
   color: inherit;
   vertical-align: middle;
   margin: 0px;
  }
  
  .headerlinkdiv {
   background: black;
   padding: 0px;
   height: 35px;
   margin: 0px;
   position: fixed; top: 0px; left: 0px; width: 100%;
  }
  
  .contenttable {
   -webkit-box-shadow: 3px 3px 3px #DDDDDD;
   border-top: 3px solid #cf1d24;
   background: #f9f9f9;
   max-width: 500px;
   margin: 15px 15px 0px 20px;
   padding: 6px 10px 3px 10px;
  }
  
  .contenttableheader {
   color: #a4a4a4;
   font-size: 14px;
   font-family: arial;
  }
  
  .contenttabletable {
   border: 0px solid #FFFFFF;
   padding: 0px;
   padding-left: 20px;
  }
  
  .contenttable tr td {
   padding: 3px;
   min-width: 200px;
  }
  
  .contenttable tr td a {
   color: #555555;
   text-decoration: none;
   font-size: 13px;
   font-family: arial;
  }
  
  .hacek {
   color: #cf1d24;
   font-size: 25px;
   font-weight: plain;
   vertical-align: -40%;
  }
  
  .mathematicapointerwrapper {
   border: 0px solid #DDDDDD;
   margin: 15px 15px 15px 40px;
   padding: 0px;
   max-width: 500px;
  }
  
  .mathematicapointertop {
   border: 1px solid #DDDDDD;
   background-color: #F2F2F2;
   padding: 0px;
   max-width: 500px;
   height: 4px;
  }
  
  .mathematicapointerdiv {
   background: url('./DocumentationFiles/mathematicabook.png') no-repeat  left center;
   border: 1px solid #DDDDDD;
   background-color: #FFFFFF;
   margin: 0px;
   padding: 15px 9px 9px 89px;
   max-width: 500px;
   min-height: 67px;
  }
  
  p.mathematicapointer {
   padding: 0px;
   margin: 0px;
   font-size: 12px;
  }
  
  .infoboxwrapper {
   border: 0px solid #DDDDDD;
   -webkit-box-shadow: 3px 3px 3px #DDDDDD;
   margin: 15px 15px 15px 40px;
   padding: 0px;
   max-width: 500px;
  }
  
  .infoboxtop {
   background: url('./DocumentationFiles/infotick.png') no-repeat left center;
   border: 1px solid #DDDDDD;
   background-color: #F2F2F2;
   padding: 0px;
   max-width: 500px;
   height: 37px;
  }
  
  div.infobox {
   border: 1px solid #DDDDDD;
   background-color: #FFFFFF;
   margin: 0px;
   padding: 15px;
   max-width: 500px;
  }
  
  p.infobox {
   padding: 0px;
   margin: 0px;
   font-size: 12px;
  }
  
  h2.legal {
   font-family: arial;
   font-size: 14;
   color: #cf1d24;
   margin: 15px 15px 15px 20px;
   font-weight: bold;
  }
  
  h3.legal {
   background: url('./DocumentationFiles/dingbat3.png') no-repeat 0 0;
   font-family: arial;
   font-size: 12;
   color: #808080;
   margin-left: 38px;
   padding-left: 12px;
   font-weight: bold;
  }
  
  ul.legal {
   font-size: 10px;
   font-family: arial;
   color: #555555;
   margin-left: 28px;
  }
  
  ul.legal li {
   margin-left: 0px;
   margin-top: 4px;
   margin-bottom: 2px;
   padding-left: 0px;
  }

  ul.imgbullets li {
   margin-left: -40px;
   margin-top: 4px;
   margin-bottom: 10px;
   padding-left: 30px;
   list-style-type: none;
  }
  
  p.legallarge {
   font-size: 12px;
   margin-left: 38px;
  }
  
  p.legalsmall {
   font-size: 11px;
   margin-left: 38px;
   padding-left: 12px;
  }
  
  .legalend {
   height: 10px;
  }
  
  .variablename {
   font-family: Courier New, Courier;
  }
  
  .dialogelement {
   font-weight: bold;
  }
  
  .menuitem {
   font-weight: bold;
  }
  
  .mr {
   font-family: Courier New, Courier;
  }
  
  .ttable {
	border-collapse: collapse;
    width: 100%;
	}

	.ttable td, th {
    border: 1px solid #dddddd;
    text-align: left;
	padding: 8px;
	}

	.ttable tr:nth-child(even) {
		background-color: #dddddd;
	}
  
   </style>
   </head>
   <body>
   
  <div class=\"headerlinkdiv\">
  
   <span class=\"headerspan\" style=\"background: url(DocumentationFiles/examples.png) no-repeat 0 0;
   padding-left: 24px;
   \"
   onmouseover=\"
   	this.style.color = 'white';
   	this.style.background = 'url(DocumentationFiles/examples_active.png) no-repeat 0 0';
   \"
   onmouseout=\"
   	this.style.color = 'gray';
   	this.style.background = 'url(DocumentationFiles/examples.png) no-repeat 0 0';
   \"><a href=\"https://www.wolfram.com/system-modeler/examples/\" class=\"headera\">More Examples</a></span>
  
   <span class=\"headerspan\" style=\"background: url(DocumentationFiles/video.png) no-repeat 0 0;
   padding-left: 29px;
   \"
   onmouseover=\"
   	this.style.color = 'white';
   	this.style.background = 'url(DocumentationFiles/video_active.png) no-repeat 0 0';
   \"
   onmouseout=\"
   	this.style.color = 'gray';
   	this.style.background = 'url(DocumentationFiles/video.png) no-repeat 0 0';
   \"><a href=\"http://www.wolfram.com/system-modeler/resources/get-started/\" class=\"headera\">Introductory Videos</a></span>
  
   <span class=\"headerspan\" style=\"background: url(DocumentationFiles/docs.png) no-repeat 0 0;
   padding-left: 20px;
   \"
   onmouseover=\"
   	this.style.color = 'white';
   	this.style.background = 'url(DocumentationFiles/docs_active.png) no-repeat 0 0';
   \"
   onmouseout=\"
   	this.style.color = 'gray';
   	this.style.background = 'url(DocumentationFiles/docs.png) no-repeat 0 0';
   \"><a href=\"http://reference.wolfram.com/system-modeler\" class=\"headera\">Documentation</a></span>
  
   <span class=\"headerspan\" style=\"background: url(DocumentationFiles/contact.png) no-repeat 0 0;
   padding-left: 24px;
   \"
   onmouseover=\"
   	this.style.color = 'white';
   	this.style.background = 'url(DocumentationFiles/contact_active.png) no-repeat 0 0';
   \"
   onmouseout=\"
   	this.style.color = 'gray';
   	this.style.background = 'url(DocumentationFiles/contact.png) no-repeat 0 0';
   \"><a href=\"http://www.wolfram.com/system-modeler/contact-us/\" class=\"headera\">Contact Us</a></span>
  </div> <div class=\"header\">&nbsp;</div> <h1>VectorAdd</h1><a id=\"headerTag_Description\" class=\"target\">&nbsp;</a>
    <h2>Description</h2>
    <p class=\"\">
This component models the addition of two three-dimensional vectors <span class=\"variablename\">y</span> = <span class=\"variablename\">u1</span> + <span class=\"variablename\">u2</span>.
</p><p class=\"\">
View the <a href=\"modelica://EducationExamples.AerospaceEngineering.Satellite.Components.VectorAdd#diagram\">model diagram</a> for this model.
</p><h2 class=\"legal\"> <a href=\"#\" onclick=\"
   if(document.getElementById('legalSection').style.display == 'none'){
   document.getElementById('legalSection').style.display = 'block';
   document.getElementById('showlegalSection').style.display = 'none';
   document.getElementById('hidelegalSection').style.display = 'inline';
   } else {
   document.getElementById('legalSection').style.display = 'none';
   document.getElementById('showlegalSection').style.display = 'inline';
   document.getElementById('hidelegalSection').style.display = 'none';
   };
   return false;\" style=\"text-decoration: inherit; color: inherit\"><img src=\"./DocumentationFiles/showhide2.png\" alt=\"Show\" id=\"showlegalSection\" style=\"display: inline; vertical-align: text-bottom;\" /><img src=\"./DocumentationFiles/showhide.png\" alt=\"Hide\" id=\"hidelegalSection\" style=\"display: none; vertical-align: text-bottom;\" />Terms and Conditions of Use</a> </h2>
    <span id=\"legalSection\" style=\"display: none;\"><p class=\"legallarge\">
This domain example is an informational resource made freely available by Wolfram Research.
</p><h3 class=\"legal\">Use of This Example</h3>
    <span id=\"legalSection\" style=\"display: block;\"><ul class=\"legal\"><li>You may not use this example for any purpose that is unlawful or dangerous.</li><li>You assume total responsibility and risk for your use of this example.</li><li>You may not present this example with any alteration to its trade dress, trademarks, or design.</li></ul></span><h3 class=\"legal\">License</h3>
    <span id=\"legalSection\" style=\"display: block;\"><p class=\"legalsmall\">
All content in this bundle is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. By accessing the content or using it in any way, you accept and agree to be bound by the terms of this license. If you do not agree to these Terms of Use, you may not use this content. Wolfram Research reserves the right to change, modify, add to, or remove portions of these Terms of Use at any time without notice. Please refer back to <a href=\"http://www.wolfram.com\">www.wolfram.com</a> for the latest Terms of Use.
</p><p class=\"legalsmall\">
A summary of the licensing terms can be found at:<br>
        <a href=\"http://creativecommons.org/licenses/by-nc-sa/3.0\">http://creativecommons.org/licenses/by-nc-sa/3.0</a>
</p><p class=\"legalsmall\">
The full legal code can be found at:<br>
        <a href=\"http://creativecommons.org/licenses/by-nc-sa/3.0/legalcode\">http://creativecommons.org/licenses/by-nc-sa/3.0/legalcode</a>
</p></span></span><div class=\"legalend\">&nbsp;</div>
   </body>
   <!--WSMINSERTIONTAGEND Add --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Text(visible = true, textColor = {0, 0, 255}, extent = {{-150, 110}, {150, 150}}, textString = "%name", fontName = "Arial"), Text(visible = true, extent = {{-98, -92}, {7, -52}}, textString = "%k2", fontName = "Arial"), Text(visible = true, extent = {{-100, 50}, {5, 90}}, textString = "%k1", fontName = "Arial"), Text(visible = true, textColor = {0, 0, 255}, extent = {{-150, 110}, {150, 150}}, textString = "%name", fontName = "Arial"), Line(visible = true, points = {{-100, 60}, {-40, 60}, {-30, 40}}, color = {0, 0, 255}), Ellipse(visible = true, lineColor = {0, 0, 255}, extent = {{-50, -50}, {50, 50}}), Line(visible = true, points = {{-100, -60}, {-40, -60}, {-30, -40}}, color = {0, 0, 255}), Line(visible = true, points = {{-15, -25.99}, {15, 25.99}}), Rectangle(visible = true, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Line(visible = true, points = {{50, 0}, {100, 0}}, color = {0, 0, 255}), Line(visible = true, points = {{-100, 50}, {-74, 24}, {-44, 24}}, color = {0, 0, 127}), Line(visible = true, points = {{-100, -50}, {-74, -28}, {-42, -28}}, color = {0, 0, 127}), Ellipse(visible = true, lineColor = {0, 0, 127}, extent = {{-50, -50}, {50, 50}}), Line(visible = true, points = {{50, 0}, {100, 0}}, color = {0, 0, 127}), Text(visible = true, origin = {0, 6}, extent = {{-38, -34}, {38, 34}}, textString = "{...}", fontName = "Arial"), Text(visible = true, origin = {-25, -69.343}, extent = {{-100, 52}, {5, 92}}, textString = "-", fontName = "Arial")}), Diagram(coordinateSystem(extent = {{-74.0, -105.0}, {74.0, 105.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end VectorSubtract;
