class Tank {
  float x, y, w, h, speed, health;
  PImage iTankW, iTankA, iTankS, iTankD;
  char idir;

  Tank() {
    x = 250;
    y = 250;
    w = 100;
    h = 100;
    speed = 5;
    health = 75;

    iTankW = loadImage("TankW.png");
    iTankA = loadImage("TankA.png");
    iTankS = loadImage("TankS.png");
    iTankD = loadImage("TankD.png");
    idir = 'w';
  }

  void display() {
    imageMode(CENTER);

    if (idir == 'w') {
      image(iTankW, x, y);
    } else if (idir == 'a') {
      image(iTankA, x, y);
    } else if (idir == 's') {
      image(iTankS, x, y);
    } else if (idir == 'd') {
      image(iTankD, x, y);
    }

    wrap(); // keeps tank on screen
  }

  void move(char dir) {
    idir = dir;

    if (dir == 'w') {
      y -= speed;
    } else if (dir == 's') {
      y += speed;
    } else if (dir == 'a') {
      x -= speed;
    } else if (dir == 'd') {
      x += speed;
    }
  }

  void wrap() {
    if (y < 0) y = height;
    if (y > height) y = 0;
    if (x < 0) x = width;
    if (x > width) x = 0;
  }
}
