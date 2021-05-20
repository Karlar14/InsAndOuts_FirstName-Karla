// Chasing the light 

import processing.serial.*;
Serial myPort;  // Create object from Serial class

int anaX; // the variable holding the A0 value 
int anaY;  // the variable holding the A1 value
int b;
String portName;    
String val;    // Data received from the serial port


String frame = "Menu";
PImage Maze;

float player;
float x = 50;
float y = 50;

float speedX = 0;
float speedY = 0;

void setup(){
   // we are opening the port
  
  myPort = new Serial(this, Serial.list()[3], 9600);
  //myPort.readStringUntil('\n'); 
  
  
  background(255);
  size(500,500);
  textAlign(CENTER);
  textSize(24);
  
  Maze = loadImage("Maze_.png");
}
void draw(){
  if(frame == "Menu"){
     background(0);
     text("Chasing the Light",width/2,200);
     text("Click to Start",width/2,250);
  }else if(frame == "Maze"){
     background(255);
     image(Maze,0,0,500,500);
     //image(Player,x,y,200,200);
     ellipse(x,y,50,50); // checkpoint 1
   }  

   println(x,y);
    countSpeed();   //Change speed based on current keys pressed.
    changePosition(); //Change position based on speed.
    speedY *= .9; // adds
    speedX *= .9;
  

}

void mousePressed(){
  if(frame == "Menu"){
    frame = "Maze";
  
  }

}
// The movement of the characters
void countSpeed(){
    if(myPort.available()>0){ // If data is available
      val = myPort.readStringUntil('\n');
        if(val != null && val.contains("left")){
          speedX = speedX - 0.5  ;  // the left movement 
        }
        if(val != null && val.contains("right")){
          speedX = speedX + 0.5  ; // the right movement 
        }
        if(val != null && val.contains("up")){
          speedY = speedY + 0.5  ; // the up movment
        }
        if(val != null && val.contains("down")){
          speedY =  speedY - 0.5; // the down movement
        }
    
    }
  
  
  
 // if(kL) {      
 // speedX = speedX - 0.5  ;  // the left movement 
 // }
 // if(kR) {
 //speedX = speedX + 0.5  ; // the right movement
 // }
//  if(kU){
//  speedY = speedY - 0.5  ; // the up movment

//  }
//  if(kD){
//  speedY =  speedY + 0.5; // the down movement
//} 
}


void changePosition(){
  x = x + speedX; //x is equal to 100 and it will add xSpeed equals 0 so it will add 
  y = y + speedY;
}
