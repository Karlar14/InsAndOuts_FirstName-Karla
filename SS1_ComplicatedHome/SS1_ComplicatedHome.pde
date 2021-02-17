//Complicated Home


//Canvas 
size(1080,720);
background( 2, 81, 89);

//rect(x1,y1,x2(the height),y2(width)
//front wall
stroke(242, 5, 5);
strokeWeight(6);
fill( 242, 135, 5);
rect(250,250,250,250);
//triangle(x1,y1,x2,y2,x3,y3)
//roof
fill(242, 93, 39);
triangle(380,100,250,250,500,250);
//the side  wall
quad(500,250,540,150,540,350,500,500);

//roof part 2
fill( 242, 135, 5);
quad(380,100,500,250,540,150,480,90);

//window
ellipse(380,195,75,75);

// complicated squares
stroke(2, 81, 89);
strokeWeight(3);
fill(3, 166, 150);
square(250,450,50);

fill(242, 5, 5);
square(300,400,50);

fill(3, 166, 150);
square(350,350,50);

fill(242, 5, 5);
square(400,300,50);

fill(3, 166, 150);
square(450,250,50);

fill(242, 5, 5);
square(250,250,50);

fill(3, 166, 150);
square(300,300,50);
fill(242, 5, 5);
square(400,400,50);
fill(3, 166, 150);
square(450,450,50);
