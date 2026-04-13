class Skeleton {
  //member variables
  float x, y, w, h, speed;
  PImage iCar1;
  char idir;

  //constructor
  Skeleton(float x, float y, float w, float h, float speed) {
  this.x = x;
  this.y = y;
  this.w = w;
  this.h = h;
  this.speed = speed;
   
   
  }

void display () {
  fill(128);
  rect(x,y,w,h);
  
  
}

  void move() {
    x = x +speed;
  }
}
