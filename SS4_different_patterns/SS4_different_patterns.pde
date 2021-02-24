//move are around the mouse
// in each square theres different patterns

float r;
float b;
float g; 
float a;
float diam;
float x;
float y ;
PImage heart;
void setup() {
  size(800, 800);
  imageMode(CORNERS);
  heart = loadImage("heart.png");
}
void draw() {
  background(45);
  stroke(0);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);

  diam = random(100);
  x = random(width/3);
  y = random(height/3);
  r = random(255);
  b = random(255);
  g = random(255);
  a = random(255);
  if (mouseX > width/2 && mouseY < height/2) {
    fill(145, 0, 35);
    square(400, 0, 400);
    fill(r, g, b);
    ellipse(600, 150, 50, 100); // petal 1 top
    fill(b, g, r);
    ellipse(550, 200, 100, 50); // petal 2 left
    fill(g, r, b);
    ellipse(650, 200, 100, 50); // petal 3 right
    fill(b, r, g);
    ellipse(600, 250, 50, 100); // petal 4 bottom
    fill(r, b, g, a);
    circle(600, 200, 50);
  } else if (mouseX < width/2 && mouseY < height/2) {
    for (int i = 0; i<50; i++) {
      fill(0, 78, 98);
      square(0, 0, 400);
      fill(r, g, b);
      square(x, y, diam+i);
    }
  } else if (mouseX < width/2 && mouseY > height/2) {

    for (int i = width; i>0; i-=150) {
      stroke(255);
      fill(255, 99, 71);
      strokeWeight(10);
      ellipse(200, 600, i/2, i/2);
    }
  } else if (mouseX > width/2 && mouseY > height/2) { 
    //fill(255,165,0);
    //stroke(0);
    square(400, 400, 400);
    for (int j=width/2; j< width; j+=40) { 
      line(j, 400, j, height);
      // x,y,x2,y2
    }
    for (int i=height/2; i<height; i+=40) { 
      line(400, i, width, i);
      // x,y,x2,y2
      image(heart, 400, 400, 800, 800 );
    }
  }
}
