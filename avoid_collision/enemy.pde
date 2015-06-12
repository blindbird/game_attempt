class Enemy {
  float xpos;
  float ypos;
  float hor;
  float ver;
  color c;
  
  Enemy (float x, float y) {
    c=color(255,0,0);
    xpos=x;
    ypos=y;
    hor=random(2);
    ver=random(2);
  }
  
  void display () {
    fill(c);
    ellipse(xpos,ypos,20,20);
  }
  
  void move () {
    if (xpos<20||xpos>width-20) {
      hor=hor*-1;
    } 
    if (ypos<20||ypos>height-20) {
      ver=ver*-1;
    } 
    xpos=xpos+hor;
    ypos=ypos+ver;
  }
  
}
