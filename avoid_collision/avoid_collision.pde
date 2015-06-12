Enemy myE1;
Enemy myE2;
Player play;

boolean [][] gameboard = new boolean [60][30];

int x,y;

void setup () {
  size(1500,750);
  background(0);
  
  play = new Player();
  myE1 = new Enemy(400,400);
  myE2 = new Enemy(100,300);
  x=20;
  y=20;
  
  for(int i=0;i<60;i++) {
    for(int j=0;j<30;j++) {
      gameboard [i][j]=false;
    }
  }
}

void draw () {
  for(int i=0;i<60;i++){
    for(int j=0;j<30;j++){
      if (gameboard[i][j] = false) {
        fill(0);
      }
        else {
          fill(255);
        }
      rect(i*25,j*25,25,25);
    }
  
  play.display();
  play.move();
  myE1.display();
  myE1.move();
  myE2.display();
  myE2.move();
}
}
      
