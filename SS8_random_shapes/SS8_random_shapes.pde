/*
Reads values from serial port, written to the port by Arduino.
 The size of an ellipse changes according to the serial values.
 Must assign the correct port, see instructions below!
 */

import processing.serial.*; //imports Serial library from Processing




Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

// sktech random colors with POT
float r;
float g;
float b;
float a; 
float x;
float y;
int diam;
float point1;
float point2;
int dis;


void setup() {
  size(400, 400);
  /*
   IMPORTANT: We must tell Processing which port to read from.
   Run the sketch and check your console to see the results of printArray(Serial.list());
   and that is how you know the port to use.
   On my Mac, it is port 1 and so I open Serial.list()[1].
   */
  String[] portList = Serial.list();
  printArray(portList); // this line prints the port list to the console
  String portName = Serial.list()[3]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);   // 
}

void draw() {
  
  r = random(255);  
  g = random(255);
  b = random(255);
  a = random(255);
  x = random(width); 
  y = random(height);
  diam = int(random(300));  // diameter variable
  dis = int(random(300));
  
  point1 = random(width);
  point2 = random(height);
  
  if ( myPort.available() > 0 && myPort.available() <= 175) { // If data is available, -- if you don't do this, you will read a bunch of -1 values mixed in
      val = myPort.read(); // read it and store it in val
      noStroke();
      fill(r,g,b,a);
      ellipse(point1,point2,val,val);
      println (val); //prints to Processing console
  }  
    else if ( myPort.available() >=176 && myPort.available() <= 255) { // If data is available, -- if you don't do this, you will read a bunch of -1 values mixed in
      val = myPort.read(); // read it and store it in val
      noStroke();
      fill(r,g,b,a);
      rect(x,y,val,val);
      println (val); //prints to Processing console
  }  
   
  
} 
  
  
  
  
  
  
  
  
  
  
