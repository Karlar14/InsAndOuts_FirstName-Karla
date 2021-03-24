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
float [] pointX = new float[50];
float [] pointY = new float[50];
int counter = 0;


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
      //ellipse();

   }else if(frame == "End"){
     background(255);
     
   }
    
   //image(Player,x,y,150,150);
    //ellipse(x,y,50,50);
    println(x,y);
    //countSpeed();   //Change speed based on current keys pressed.
    //changePosition(); //Change position based on speed.
    x+=speedX ;
    y+=speedY;
  
    
    if((x > 370 && x < 395) && (y > 295 && y < 325)){ // touch the circle and then go to second maze
      //ellipse(x,y,10,10);
      enemy();
      frame = "Maze2";
      x = 125; // changes the coordinates of the player
      y = 400;
    
     
    }
    if((x == 350) && (y == -75 )) {   // when user touches thhe cire it should change to the third maze
     frame = "Maze3";
      x = -74;
      y = 325;
      
    }
    if((x >=150 && x < 160) &&( y >148 && y < 180 )){
      frame = "End";
      end();
    }

    




}




void keyPressed(){
   if(key == 'w'){ // 'w' will go up 
       y-=25;
   }
   if(key == 's'){ // 's' will go down
       y+=25;
   }
   if(key == 'd'){ // this will go right
       x+=25;
   }
   if(key == 'a'){ // this will go left
      x-=25;
   }
   

} 


void enemy(){
     pointX[counter] = x;
     pointY[counter] = y;
    counter++;
    
    for(int i=0; i<pointX.length-1; i++){
  if(i+1 != counter){
      line(pointX[i], pointY[i], pointX[i+1], pointY[i+1]);
    }
  }
  
  if (counter != pointX.length){
    line(pointX[0], pointY[0], pointX[pointX.length-1], pointY[pointX.length-1]);
  }
  
  
  if (counter > pointX.length-1){
    counter = 0;
  }
}


void end() {
   background(0);
   text("Garden Maze",200,200);
   text("Want to start over?", 200,250);
   text("Yes",200,250);
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
