class Sonic extends Character {
  color c = color(0,0,255);
  
  float revAngle = 0;
  float revSpeed;

  Sonic (float x, float y, float spinSpeed, float revSpeed) {
    super(x, y, spinSpeed);
    this.revSpeed = revSpeed;
  }
  
  void move() {
    revolve();
  }
  
  void revolve() {
    push();
    translate(width/2, height/2);
    rotate(revAngle);
    spin();
    pop();
    
    revAngle += revSpeed;
  }
  
  void spin() {
    push();
    translate(x - (width/2), y - (height/2));
    rotate(angle);
    
    noStroke();
    fill(c);
    ellipse(0, 0, 90, 100);
    
    pop();
    
    angle += spinSpeed;
  }
}
