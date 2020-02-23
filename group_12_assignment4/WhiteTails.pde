class WhiteTails {
  float x, y, charSize;
  
  WhiteTails(float x, float y, float charSize) {
    this.x = x;
    this.y = y;
    this.charSize = charSize;
  }
  
  void display() {
    fill(255);
    bezier(-charSize, 20, -charSize * 0.45, -100, charSize * 0.45, 100, charSize, -20);
  }
}
