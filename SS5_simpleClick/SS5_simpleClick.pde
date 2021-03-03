// click any key to interact
String[] names ={"Daisy","Tulip"};

void setup(){
  size(500,500);
  textSize(100);
  textAlign(CENTER);

}

void draw(){
  background(255);
 
 // daisy();
  //tulips();
  if(keyPressed == true){
       background( 217, 128, 108);
       String name = names[0];
      text(name, 250,100);
      daisy(39, 66, 89,191, 44, 71); 
  }else{
    background(216, 240, 242);
    fill(80,70,255);
    String name = names[1];
    text(name, 250,100);
    tulip(230,70,150);
   
  }

}


void daisy(float r,float b, float g,float r1,float b1, float g1){
  translate(width/2,height/2);
  noStroke();
  fill(r,g,b);
  ellipse(0,-75,100,100);
 
  fill(r,g,b);
  rotate(radians(73));
  ellipse(0,-75,100,100);
  
  fill(r,g,b);
  rotate(radians(73));
  ellipse(0,-75,100,100);
  
  rotate(radians(73));
  ellipse(0,-75,100,100);
  
  rotate(radians(73));
  ellipse(0,-75,100,100);
  // center
  fill(r1,b1,g1);
  ellipse(0,0,100,100);
  
}
void tulip(float r,float b, float g){
 translate(width/2,height/2);
  noStroke();
  smooth();
  fill(r,b,g);
  //center tulip
 ellipse(-30,0,100,150);
 //petal one
  fill(b,b,r);
  rotate(radians(-20));
  ellipse(-50,0,100,150);
   
 //petal two
  fill(g,g,b);
 rotate(radians(35));
  ellipse(0,15,100,150);
  
}
