Enemy myE1;
Enemy myE2;


int x,y;

void setup () {
  frameRate(30);
  size(500,500);
  background(0);
  myE1 = new Enemy(400,400);
  myE2 = new Enemy(100,300);
  x=20;
  y=20;
}

void draw () {
  background(0);
  fill(0,0,255);
  ellipse(x,y,20,20);
  myE1.display();
  myE1.move();
  myE2.display();
  myE2.move();
}

void keyPressed () {
  if (key==CODED) {
    if (keyCode==DOWN) {
      y=y+20;
    } else if (keyCode==UP) {
      y=y-20;
    }
    if (keyCode==RIGHT) {
      x=x+20;
    } else if (keyCode==LEFT) {
      x=x-20;
    }
  }
}
      
