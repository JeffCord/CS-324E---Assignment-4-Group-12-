class Fireball extends Shuriken {
  
  float r = 1,tranx,trany;

  Fireball(float x, float y, float linearSpeed, float tranx, float trany) {
    super(x,y,linearSpeed);
    this.tranx = tranx;
    this.trany = trany;

  }
  
  void display() {
    
    push();
    translate(x,y);
    rotate(radians(r));
    imageMode(CENTER);
    image(fireball,tranx,trany,30,30);
    pop();
    r+=5;
    
  }
}
