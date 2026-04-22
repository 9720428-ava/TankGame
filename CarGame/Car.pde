class Car {
  //member variables
  float x, y, w, h, speed, health;
  PImage iCar1, iCar2, iCar3, iCar4;
  char idir;

  //constructor
  Car() {
    x = 100.0;
    y = 100.0;
    w = 100.0;
    h = 100.0;
    speed = 6.0;
    health = 75.0;
    iCar1 = loadImage ("car.png");
    iCar2 = loadImage ("carL.png");
    iCar3 = loadImage ("carD.png");
    iCar4 = loadImage ("carR.png");
    idir = 'd';
  }

  void display() {
    imageMode (CENTER);
    if (idir =='w') {
      image(iCar1, x, y);
    } else if (idir =='a') {
      image(iCar2, x, y);
    } else if (idir =='s') {
      image(iCar3, x, y);
    } else if (idir =='d') {
      image(iCar4, x, y);
    }
  }

  void move(char dir) {
    if (dir == 'w') {
      idir = 'w';
      y= y - speed;
    } else if (dir == 's') {
      y = y + speed;
      idir = 's';
    } else if (dir == 'a') {
      x = x - speed;
      idir = 'a';
    } else if (dir == 'd') {
      x = x + speed;
      idir = 'd';
    }
  }

  void fire() {
  }
}
