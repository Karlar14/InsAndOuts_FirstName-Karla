// Karla Ramirez maze game
String frame = "Menu";
PImage tile;

void setup(){
  background(255);
  size(500,500);
  textAlign(CENTER);
  textSize(24);
  tile = loadImage("green_tile.png");
  
  
}
void draw(){
 if(frame == "Menu"){
   background(0);
   text("Garden Maze",width/2,200);
   text("Click to start",width/2,250);
 }else if(frame == "Maze1"){
   image(tile,40,40);
 }

}

void mousePressed(){
  if(frame == "Menu"){
    frame ="Maze1";
  }


}
