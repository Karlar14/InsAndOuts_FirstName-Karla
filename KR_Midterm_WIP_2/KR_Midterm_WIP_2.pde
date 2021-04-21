// Karla Ramirez Garden Maze game
//*\the goal here is to make a pretty glowy maze with different 
//challenges. */
// The user will use 'a','w','s','d' to move around the maze.




String frame = "Menu";   
PImage Maze1;
PImage Maze2;
PImage Maze3;
PImage Dirt;
PImage Player;
PImage T1;
float player;
float x = 50;
float y = 50;
float speedX = 0;
float speedY = 0;
//float cP1 = 470;
//float cp2 = 100;
//float cP2 = 400;
//color t1 = color(245,158,92); // t1 is the first target the user has to acheive
//float wH = 50; // width and height of the cirlce
boolean kL, kR,kU,kD;

void setup(){
  background(255);
  size(500,500);
  textAlign(CENTER);
  textSize(24);
  
   Maze1 = loadImage("M1.png");
   Maze3 = loadImage("M2.png");
   
   Maze2 = loadImage("M2 copy.png");
   
   Dirt =   loadImage("dirt.png");
   Player = loadImage("main.png");
   T1 = loadImage("target1.png");
}
void draw(){
  
   
 if(frame == "Menu"){
   background(0);
   text("Garden Maze",width/2,200);
   text("Click to start",width/2,250);
 }else if(frame == "Maze1"){
     background(255);
     image(Dirt,0,0,500,500);
     image(Maze1,0,0,500,500);
     image(Player,x,y,150,150);
     image(T1,420,320,100,100); // this is the target
     //fill(t1);
     //ellipse(470,370,50,50); // checkpoint 1
   }else if (frame == "Maze2"){
     
     background(255);
     image(Dirt,0,0,500,500);
     image(Maze2,0,0,500,500);
    image(Player,x,y,200,200);
      // if((x > 370 && x < 395) && (y > 295 && y < 325)){ // touch the circle and then go to second maze
      //  //ellipse(x,y,10,10);
      //  frame = "Maze2";
      //  x = 139; // changes the coordinates of the player
      //  y = 400;
      
       
      //}
     ellipse(450,40,50,50); 
   }else if (frame == "Maze3"){
     background(255);
     image(Dirt,0,0,500,500);
     image(Maze3,0,0,500,500);
     image(Player,x,y,200,200);
      //if((x > 325 && x < 400 ) && (y < -2 && y > -30 )) {   // when user touches thhe cire it should change to the third maze
      //   frame = "Maze3";
      //}

   }
    
   //image(Player,x,y,150,150);
    //ellipse(x,y,50,50);
    println(x,y);
    countSpeed();   //Change speed based on current keys pressed.
    changePosition(); //Change position based on speed.
    speedY *= .9; // adds
    speedX *= .9;
  
    
    if((x > 370 && x < 395) && (y > 295 && y < 325)){ // touch the circle and then go to second maze
      //ellipse(x,y,10,10);
      frame = "Maze2";
      x = 139; // changes the coordinates of the player
      y = 400;
    
     
    }
    if((x > 325 && x < 400 ) && (y < -2 && y > -30 )) {   // when user touches thhe cire it should change to the third maze
     frame = "Maze3";
      x = -72;
      y = 324;
      
    }






}

void keyPressed() {
  //if (key == CODED) {
    if (key == 'w') {
      kU = true;
    }
    if (key == 's') {
      kD = true;
    }
    if (key == 'a') {
      kL = true;
    }
    if (key == 'd') {
      kR = true;
    }
  //}
}
void keyReleased() {
   
    if (key == 'w') {  // this makes sure the  play doesn't continuously goes up
      kU = false; 
    }
    if (key == 's') {
      kD = false;
    }
    if (key == 'a') {
      kL = false;
    }
    if (key == 'd') {
      kR = false;
    }

}


void countSpeed(){
  if(kL) {      
  speedX = speedX - 0.5  ;
  }
  if(kR) {
 speedX = speedX + 0.5  ;
  }
  if(kU){
  speedY = speedY - 0.5  ;

  }
  if(kD){
  speedY =  speedY + 0.5;
} 
}


void changePosition(){
  x = x + speedX; //x is equal to 100 and it will add xSpeed equals 0 so it will add 
  y = y + speedY;
}

void mousePressed(){
  if(frame == "Menu"){
      frame = "Maze1";
  }else if(frame == "Maze1"){
      frame = "Maze2";
  }else if(frame == "Maze2"){
      frame = "Maze3";
  }
}
