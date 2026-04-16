// NOAH KERGAYE | Tank Game | April 14, 2026
PImage bg;
Tank tank1;

void setup() {
  size(500, 500);
  bg = loadImage("BG1.png");
  tank1 = new Tank();
}

void draw() {
  background(4);
  imageMode(CORNER);
  image(bg, 0, 0);
  tank1.display();
}

void keyPressed() {
  if (key == 'w' || key == 'W') {
    tank1.move('w');
  } else if (key == 's' || key == 'S') {
    tank1.move('s');
  } else if (key == 'a' || key == 'A') {
    tank1.move('a');
  } else if (key == 'd' || key == 'D') {
    tank1.move('d');
  }
}
