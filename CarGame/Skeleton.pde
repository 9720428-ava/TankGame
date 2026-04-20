class Skeleton {
  //member variables
  float x, y, w, h, speed;
  PImage skeleton;
  char idir;


  //constructor
  Skeleton(float x, float y, float w, float h, float speed) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.speed = speed;
    skeleton = loadImage("obstacle.png");
  }

  boolean reachedEdge() {
    if (x>width ||x<-101||y >height||y<0) {
      return true;
    } else {
      return false;
    }
  }

  void display () {
    fill(128);
    imageMode(CENTER);
    image(skeleton, x, y);
  }

  void move() {
    x = x +speed;
    if (x>width) {
      x = 0;
    }
  }
}
