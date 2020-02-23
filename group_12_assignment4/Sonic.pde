class Sonic extends Character {
  color c = color(0,0,255);
  
  float size = 90;
  float revAngle = 0;
  float revSpeed;

  Sonic (float x, float y, float spinSpeed, float revSpeed) {
    super(x, y, spinSpeed);
    this.revSpeed = revSpeed;
  }
  
  // makes Sonic revolve around the canvas
  void move() {
    push();
    translate(width/2, height/2);
    rotate(revAngle);
    spin();
    pop();
    
    revAngle += revSpeed;
  }
  
  // makes Sonic rotate in place
  void spin() {
    Spikes spikes = new Spikes(x, y, size);
    
    push();
    translate(x - (width/2), y - (height/2));
    rotate(angle);
    
    spikes.display();
    
    noStroke();
    fill(c);
    ellipse(0, 0, size, size + 10);
    
    pop();
    
    angle += spinSpeed;
  }
}
