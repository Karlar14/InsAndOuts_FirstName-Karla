// abstract shapes
// side note** This sketch was inspired from page 62 of learning processing by Daniel Shiffman. 


//HOW TO INTERACT
// press the up button for shooting squares 
// press the down button for shoot  circles
// press the right button for differnt triangles 
// press the left button for different quad shapes
// to restart, click on the canvas with your mouse and the sketch will earse and a new blank canvas will appear.





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
float bk;


void setup() { //setup () only sets the code once
  size(800, 800);
  //background(71);
}

void draw() { // draw() loops 
  bk = random(0, 255);
  if (mousePressed == true) { // when the mouse is pressed the background will change into dark or gray colors

    background(bk);
  }

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

  //noStroke();
  //fill(r,g,b,a);
  //rect(x,y,diam,diam);
}
void keyPressed () { // an event function 

  if (key == CODED) {   
    if (keyCode == UP) { // when the user presses the up key there will be shooting squares and lines
      noStroke();
      fill(r, g, b, a);
      rect(x, y, diam, diam);
      rect(y, x, diam, diam);
      stroke(r, g, b, a);
      line(x, y, diam, diam);
      line(y, x, diam, diam);
    } else if (keyCode == DOWN) { // when the user presses the down button ther will be shooting circles
      noStroke();
      fill(r, g, b, a);
      ellipse(point1, point2, diam, diam);
      ellipse(point2, point1, diam, diam);
      stroke(r, g, b, a);
      //line(,800,800);
      line(800, 800, point1, point2);
      line(800, 800, point2, point1);
      //line(point1,0,diam,diam);
      println( point1);
      println( point2);
    } else if ( keyCode == RIGHT) {  //when the user presses the right button there will be different trangles from the corner
      noStroke();
      fill(r, g, b, a);
      triangle(0, 800, point1, point2, dis, dis);
      triangle(0, 800, diam, diam, dis, dis);
      stroke(r, g, b, a);
      //line(,800,800);
      //line(0,800,point1,point2);
      //line(0,800,point2,point1);
    } else if (keyCode == LEFT) {  // when the presses the left button different quad shapes will appear
      noStroke();
      fill(r, g, b, a);
      quad(800, 0, point2, point1, dis, dis, point2, point1);
      quad(800, 0, point2, point1, dis, dis, point1, point2);
      stroke(r, g, b, a);

      line(800, 0, point1, point2);
      line(800, 0, point2, point1);
    }
  }
}
