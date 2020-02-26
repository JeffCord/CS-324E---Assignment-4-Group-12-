class Fireball extends Shuriken {
  
  float r = 1;

  Fireball(float x, float y, float linearSpeed) {
    super(x,y,linearSpeed);
  }
  
  void display() {
    
    push();
    translate(x,y);
    rotate(radians(r));
    imageMode(CENTER);
    image(fireball,75,0,30,30);
    pop();
    r+=5;
    
  }
}
