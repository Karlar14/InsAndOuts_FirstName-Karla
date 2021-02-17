// Karla Ramirez 
// A plant surprise
// CLick on the pot and y

PImage pot;
PImage bushes;
PImage flower;




String quote = "Clck on the Pot for a Pretty Surprise";
float opacity;
float fade;
String Happy =":D";

void setup(){
   size(800,800);
   background( 242, 159, 128);
   imageMode(CENTER);
   //textAlign(CENTER); //aligns text
    textSize(40); //sets size of text
   pot = loadImage("pot.png");
   bushes = loadImage("Bush.png");
   flower = loadImage("flower.png");

}
void draw(){
  background( 242, 159, 128);
  
  //fill(opacity);
  fill(41, 95, 166); //Blue Text
  text(quote,50,200);
  //  opacity = opacity + fade;
  
  //if (opacity > 255 || opacity < 0){
  //  fade = -fade;
  //}
  
   image(pot,400,500);
   pot.resize(500,500);
  
  //image(bushes,x1,x1);  //x1 = 200;
  bushes.resize(300,300);
  //image(flower, 400,200);
  flower.resize(300,300);

 if(mousePressed){ // when the mouse is clickd you will see a bush and a flower.
   background(242, 203, 189);
   textSize(50);
   text(Happy,400,200);
   image(pot,400,500);
    image(bushes,400,400);
    image(flower, 400,350);
    
 }
}








  
  
