Sonic sonic1;
Tails tails1;

float midX = width/2;
float midY = height/2;

void setup() {
  size(800,800);
  background(210);
  sonic1 = new Sonic(width * .9, height / 2, 0.5, 0.02);
  tails1 = new Tails(width / 2, height - 100, 0.5);
}

void draw() {
  background(210);
    
  sonic1.move();
  tails1.move();
  
}
