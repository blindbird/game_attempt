class Player {
  float xplay;
  float yplay;
  float size;
  color c;
  float sp;
  
  Player () {
    c=color(0,0,255);
    xplay=25/2;
    yplay=25/2;
    size=20;
    sp=1;
  }
  
  void display () {
    fill(c);
    ellipseMode(CENTER);
    ellipse(xplay,yplay,size,size);
  }
  
    void move () {
      if (mousePressed) {
        xplay+=sp;
      }
      if (xplay<20||xplay>width-20) {
      sp=sp*-1;
    } 
    if (yplay<20||yplay>height-20) {
      sp=sp*-1;
    } 
/*      if (keyPressed) {
  if (key==CODED) {
    if (keyCode==DOWN) {
      yplay+=25;
    } else if (keyCode==UP) {
      yplay-=25;
    }
    if (keyCode==RIGHT) {
      xplay+=25;
    } else if (keyCode==LEFT) {
      xplay-=25;
    }
  }
}*/
    }
}
