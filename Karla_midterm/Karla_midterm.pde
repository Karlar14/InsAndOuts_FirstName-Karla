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
float player;
float x = 50;
float y = 50;
float speedX = 0;
float speedY = 0;
float cP1 = 470;
float cp2 = 400;

void setup(){
  background(255);
  size(500,500);
  textAlign(CENTER);
  textSize(24);
  
   Maze1 = loadImage("M1.png");
   Maze2 = loadImage("M2.png");
   Maze3 = loadImage("M3.png");
   Dirt =   loadImage("dirt.png");
   Player = loadImage("main.png");
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
     //image(Player,x,y,200,200);
     ellipse(cP1,370,50,50); // checkpoint 1
   }else if (frame == "Maze2"){
     background(255);
     image(Dirt,0,0,500,500);
     image(Maze2,0,0,500,500);
    //image(Player,x,y,200,200);
     ellipse(100,cp2,50,50);
   }else if (frame == "Maze3"){
     background(255);
     image(Dirt,0,0,500,500);
     image(Maze3,0,0,500,500);
     //image(Player,x,y,200,200);
   }
    
    //image(Player,x,y,10,10);
    ellipse(x,y,10,10);
    x+=speedX ;
    y+=speedY;
    
    if(x > cP1 ){   // i want it to touch the circle and then go to second maze
      frame = "Maze2";
    }
    // if(y < cp2){   // i want it to touch the circle and then go to second maze
    //  frame = "Maze2";
    //}
    
}

void keyPressed(){
   if(key == 'w'){ // 'w' will go up 
       y-=30;
   }
   if(key == 's'){ // 's' will go down
       y+=30;
   }
   if(key == 'd'){ // this will go right
       x+=30;
   }
   if(key == 'a'){ // this will go left
      x-=30;
   }
   

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
