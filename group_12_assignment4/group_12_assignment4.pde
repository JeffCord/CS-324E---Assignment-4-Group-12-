float midX = width/2;
float midY = height/2;
PImage shuriken, fireball;

Sonic sonic1;
Tails tails1;

//Shuriken #1
Shuriken s1 = new Shuriken(400,200,-5);
Fireball f1_1 = new Fireball(400,200,-5,75,0);
Fireball f2_1 = new Fireball(400,200,-5,-75,0);
Fireball f3_1 = new Fireball(400,200,-5,0,75);
Fireball f4_1 = new Fireball(400,200,-5,0,-75);

//Shuriken #2
Shuriken s2 = new Shuriken(400,600,5);
Fireball f1_2 = new Fireball(400,600,5,75,0);
Fireball f2_2 = new Fireball(400,600,5,-75,0);
Fireball f3_2 = new Fireball(400,600,5,0,75);
Fireball f4_2 = new Fireball(400,600,5,0,-75);



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
  
  // Shuriken #1
  s1.display();
  f1_1.display();
  f2_1.display();
  f3_1.display();
  f4_1.display();
  s1.side2Side();
  f1_1.side2Side();
  f2_1.side2Side();
  f3_1.side2Side();
  f4_1.side2Side();
  
  //Shuriken #2
  s2.display();
  f1_2.display();
  f2_2.display();
  f3_2.display();
  f4_2.display();
  s2.side2Side();
  f1_2.side2Side();
  f2_2.side2Side();
  f3_2.side2Side();
  f4_2.side2Side();
  
  sonic1.move();
  tails1.move();
  
}
