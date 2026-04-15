// Ava Manwaring  1 April 2026 Car game
Car shia;
ArrayList<Projectile> projectiles = new ArrayList<Projectile>();
Skeleton jace;
PImage bg1;
int score;


void setup () {
  size(500, 500);
  score = 0;
  shia = new Car();
  jace = new Skeleton(100, 100, 100, 50, 5);
  bg1 = loadImage("background.png");
}

void draw() {
  background (155);
  imageMode (CORNER);
  image (bg1, 0, 0);
  for (int i = 0; i < projectiles.size(); i++) {
    Projectile p = projectiles.get(i);
    p.display();
    p.move();
  }
  shia.display ();
  jace.display ();
  jace.move ();
  scorePanel();
}

void keyPressed () {
  if (key == 'w') {
    shia.move('w');
  } else if (key == 's') {
    shia.move('s');
  } else if (key == 'a') {
    shia.move('a');
  } else if (key == 'd') {
    shia.move('d');
  }
}

void mousePressed() {
  projectiles.add(new Projectile(shia.x, shia.y, 4, 10));
}

void scorePanel() {
  fill(127, 200);
  rectMode(CENTER);
  noStroke();
  rect(width/2, 15, width, 60);
  fill(#EDE4E6);
  textSize(30);
  textAlign(CENTER);
  text("Score:" + score, width/2, 25);
}
