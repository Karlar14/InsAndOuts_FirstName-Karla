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
PImage Menu;
PImage Enemy;
PImage Corey;


float player;
float x = 30;
float y = 30;

float speedX = 0;
float speedY = 0;

//movement of the enemy
float x1;
float xS;
float y1;
float yS;


void setup(){
   // we are opening the port
  
  myPort = new Serial(this, Serial.list()[3], 9600);
  //myPort.readStringUntil('\n'); 
  
  
  background(255);
  size(500,500);
  textAlign(CENTER);
  textSize(24);
  
  Maze = loadImage("Maze_.png");
  Menu = loadImage("Menu.png");
  Enemy = loadImage("enemy.png");
  Corey = loadImage("Corey.png");
 
  //enemy
  x1 = 0;
  y1 = 200;
  
}
void draw(){
  if(frame == "Menu"){
     background(0);
     image(Menu,0,0,500,500);
     fill(255);
     text("Chasing the Light",width/2,200);
     text("Click to Start",width/2,250);
 } else if(frame == "Story"){  // talks about the story of corey and his journey into finding light in a dark world
    background(0);
      text("Corey is searching for light.",width/2,150);
       text("She realized that the world ",width/2,200);
       text("she lives in is a dark and scary place.",width/2,250);
      text(" But she didn’t want to accept darkness.",width/2,300);
       text(" So she’s determined to find" ,width/2,350);
       text("some light to change her mind. ",width/2,400);
     
   }  
  //else if(frame == "Setting One"){ // this is where the character will appear in the first setting and then will start walking 
  //   background(255);
  //   image(Maze,0,0,500,500);
  //   //image(Player,x,y,200,200);
  //   ellipse(x,y,50,50); // checkpoint 1
  // } 

   else if(frame == "Maze"){ //it will then enter a maze to start its journey
     background(255);
     image(Maze,0,0,500,500);
     //image(Player,x,y,200,200);
     //image(Enemy,229,124,100,100); //object one
     //image(Enemy,444,174,100,100); //object two
     //image(Enemy,254,379,100,100); //object three
     enemy1();
     
     //ellipse(x,y,50,50); // checkpoint 1 // the first task is to grab as much items possible 
     image(Corey,x,y,150,150);
 
 //}  else if(frame == "Objects"){  
   //    PImage[] obj = new PImage[3];
   //}
  }
   if((x > 229 && x < 235) && (y > 124 && y < 126)){ // touch the circle and then go to second maze
    
      //x = 139; // changes the coordinates of the player
      //y = 400;
      //object one
      circle(229,124,50);
    }




   println(x,y);
    countSpeed();   //Change speed based on current keys pressed.
    changePosition(); //Change position based on speed.
    speedY *= .9; // adds
    speedX *= .9;
  

}

void mousePressed(){
  if(frame == "Menu"){
     frame = "Story";
  }
  else if(frame == "Story"){
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
}
  
  


void changePosition(){
  x = x + speedX; //x is equal to 100 and it will add xSpeed equals 0 so it will add 
  y = y + speedY;
}

void enemy1(){ // this function controls the movements of the enemies 
   
    image(Enemy, x1,height/2,100,100);
    x1 = x1 + xS; // the speed of the enemy 
    if(x1 > width){
      println("moving");
      xS = -2;
    }else if(x1 < 0){
      xS = 2;
    }
    
    //y1 = y1 + yS;
    //image(Enemy,200,x1,100,100);
    //if(y1> height){
    //  println("hi");
    //  yS = 2;
    //}else if(y1 < 200){
    //  yS =-2;
    //}

}
