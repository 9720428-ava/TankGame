class Projectile {
  //member variables
  float x, y, w, h, speed;
  float vx, vy;
  char idir;




  //constructor
  Projectile(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    speed = 10;
  }

  void display () {
    fill(255, 0, 0 );
    rect(x, y, w, h);
  }

  void move() {
    x += vx;
    y += vy;
  }

  boolean intersect(Skeleton s) {
    float distance = dist(x, y, s.x, s.y);
    if (distance < 50) {
      return true;
    } else {
      return false;
    }
  }
}
