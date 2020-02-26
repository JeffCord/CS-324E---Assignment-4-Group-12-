Sonic sonic1;
Tails tails1;

float midX = width/2;
float midY = height/2;

Shuriken s1 = new Shuriken(400,400,1);
Fireball f1 = new Fireball(400,400,1);
PImage shuriken, fireball;

void setup() {
  size(800,800);
  background(210);
  shuriken = loadImage("shuriken.png");
  fireball = loadImage("fireball.png");
  sonic1 = new Sonic(width * .9, height / 2, 0.5, 0.02);
  tails1 = new Tails(width / 2, height - 100, 0.5);
}

void draw() {
  background(210);
  Ring r1 = new Ring(20,20,20);
  r1.display();
  
  
  s1.display();
  f1.display();
  s1.side2Side();
  f1.side2Side();
   
  sonic1.move();
  tails1.move();
  
}
