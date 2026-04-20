// Ava Manwaring  1 April 2026 Car game
Car shia;
ArrayList<Projectile> projectiles = new ArrayList<Projectile>();
ArrayList<Skeleton> skeletons = new ArrayList<Skeleton>();
Skeleton jace;
PImage bg1;
int score;
Timer objTimer;


void setup () {
  size(500, 500);
  score = 0;
  shia = new Car();
  jace = new Skeleton(100, 100, 100, 50, 5);
  bg1 = loadImage("background.png");
  objTimer = new Timer(1000);
  objTimer.start();
}

void draw() {
  background (155);
  imageMode (CORNER);
  image (bg1, 0, 0);

  //distribute objetect on timer
  if (objTimer.isFinished()) {
    //add object
    skeletons.add(new Skeleton(-100, 200, 100, 100, 10));
    //restart timer
    objTimer.start();
  }
//render and detect collison
  for (int i = 0; i < projectiles.size(); i++) {
    Projectile  p= projectiles.get(i);
    for(int j = 0; j<skeletons.size(); j++) {
      Skeleton s = skeletons.get(j);
      if(p.intersect(s)) {
        score = score + 100;
        projectiles.remove(i);
        skeletons.remove(j);
      }
    }
    p.display();
    p.move();
  }
  for (int i = 0; 1< skeletons.size(); i++) {
    Skeleton s = skeletons.get(i);
    s.display();
    s.move();
    if (s.reachedEdge()) {
      skeletons.remove(i);
    }
  }






  shia.display();
  //jace.display ();
  // jace.move ();
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
  float dx = mouseX - shia.x;
  float dy = mouseY - shia.y;
  float mag = sqrt(dx*dx + dy*dy);

  if (mag>0) {
    dx /= mag;
    dy/= mag;
    
    float speed = 5;
    projectiles.add(new Projectile(shia.x, shia.y, 4, 10));
    println(projectiles.size());
  }
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
