// Ava Manwaring  1 April 2026 Car game
Car shia;
Skeleton jace;
PImage bg1;
void setup () {
  size(500,500);
  shia = new Car();
  jace = new Skeleton(100,100,100,50,5);
  bg1 = loadImage("background.png");
}

void draw() {
  background (155);
  imageMode (CORNER);
  image (bg1, 0, 0);
  shia.display ();
  jace.display ();
  jace.move ();
}

void keyPressed () {
  if (key == 'w') {
     shia.move('w');
  } else if(key == 's'){
     shia.move('s');
  }else if(key == 'a'){
      shia.move('a');
  }else if (key == 'd'){
      shia.move('d');
  }
}
