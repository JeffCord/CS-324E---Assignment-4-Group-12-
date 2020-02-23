class Spikes {
  float x, y, size;
  color c = color(#89FCFF, 150);
  PShape spike;
  
  
  Spikes (float x, float y, float charSize) {
    this.x = x;
    this.y = y;
    this.size = charSize * 1.2;
    
    spike = createShape();
    
    spike.beginShape();
    spike.fill(c);
    spike.noStroke();
    
    spike.vertex(0, 0);
    spike.vertex(size * 1.2, 0);
    spike.vertex(0, -50);
    
    spike.endShape(CLOSE);
  }
  
  void display() {
    float angle = 0;
    int numOfSpikes = 8;
    
    push();
    
    for (int i = 0; i < numOfSpikes; i++) {
      rotate(angle);
      shapeMode(CENTER);
      shape(spike);
      angle += (2 * PI) / numOfSpikes; 
    }
    
    pop();
    
  }
}
