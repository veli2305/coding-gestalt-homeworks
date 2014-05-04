import processing.core.*; 
import processing.xml.*; 

import java.text.*; 
import lsystem.*; 
import peasy.*; 

import java.applet.*; 
import java.awt.*; 
import java.awt.image.*; 
import java.awt.event.*; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class ThreeDHilbert extends PApplet {

//import processing.opengl.*;

  // My custom LSystem library available at Kenai version 0.5.0
// http://kenai.com/projects/l-system-utilities/downloads
    // PeasyCam custom library v0.8.1 available at 
// http://mrfeinberg.com/peasycam/#download
PeasyCam cam;
Grammar grammar;

float distance = 72;
int depth = 3;
float theta = radians(90);
float phi = radians(90);
String production = "";

public void setup() {
  //size(500, 500, OPENGL);
  size(500, 500, P3D);  
  //configureOpenGL();  
  cam = new PeasyCam(this, 100);  
  cam.setMinimumDistance(100);
  cam.setMaximumDistance(500);
  setupGrammar();
  noStroke();  
}

//void configureOpenGL(){
//  hint(ENABLE_OPENGL_4X_SMOOTH);
//  hint(DISABLE_OPENGL_ERROR_REPORT);
//}

public void setupGrammar(){
  grammar = new SimpleGrammar(this, "X");   // this only required to allow applet to call dispose()
  grammar.addRule('X', "^<XF^<XFX-F^>>XFX&F+>>XFX-F>X->");
  production = grammar.createGrammar(depth);
  distance *= pow(0.5f, depth);
}

public void draw() {
  background(0);
  lights();
  render();
}

public void render() {
  translate(-40, 40, -40);  // center the hilbert empirically set looks good to me
  fill(0, 75, 152); 
  lightSpecular(204, 204, 204); 
  specular(255, 255, 255); 
  shininess(1.0f); 
  CharacterIterator it = new StringCharacterIterator(production);
  for (char ch = it.first(); ch != CharacterIterator.DONE; ch = it.next()) {
    switch (ch) {
    case 'F': 
      translate(0, distance/-2, 0);
      box(distance/9, distance, distance/9);
      translate(0, distance/-2, 0);
      break;
    case '-':
      rotateX(theta);
      break;
    case '+':
      rotateX(-theta);
      break;
    case '>':
      rotateY(theta);
      break;
    case '<':
      rotateY(-theta);
      break;
    case '&':
      rotateZ(-phi);
      break;
    case '^':
      rotateZ(phi);
      break;
    case 'X':
      break;  
    default:
      System.err.println("character " + ch + " not in grammar");
    }
  }
}






  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--stop-color=#cccccc", "ThreeDHilbert" });
  }
}
