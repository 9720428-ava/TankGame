class PowerUp {
  //member variables
  float x, y, w, h, speed;
  PImage power;
  char type;


  //constructor
  PowerUp(float x, float y, float w, float h) {
    this.x = x;
    this.y = random(height);
    this.w = w;
    this.h = h;
    this.speed = 5;
    power = loadImage("PowerUp.png");
  }

  boolean reachedEdge() {
    if (x>width ||x<-101||y >height||y<0) {
      return true;
    } else {
      return false;
    }
  }

  //void display () {
  // fill(128);
  //ellipse(x, y, w, h);
  //imageMode(CENTER);
  // image(power, x, y);
  //}

  // void move() {
  //y=y+speed;
  //}
  //}
  //boolean offScreen() {
  //if (x < 0-w/2 || x > width+w/2 || y < 0-w/2 || y> height+w/2) {
  // return true;
  //} else {
  //    return false;
  //}
}
