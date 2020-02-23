class Shuriken {
  
  float x,y,linearSpeed, flag, upper, lower;
  
  
  Shuriken(float x, float y, float linearSpeed) {
   
    this.x = x;
    this.y = y;
    this.linearSpeed = linearSpeed;
    this.flag = 0;
    this.upper = y - 50;
    this.lower = y + 50;
    
  }
  
  void display() {
    //noStroke();
    //fill(0);
    shuriken.loadPixels();
    for (int x = 0; x < shuriken.width; x++) {
      for (int y = 0; y < shuriken.height; y++) {
        int index = x + y*shuriken.width;
        color c = shuriken.pixels[index];
        if (red(c) > 200) { 
          shuriken.pixels[index] = color(0,0,0,1);
        }
      }
    }
          
    shuriken.updatePixels();
    imageMode(CENTER);
    image(shuriken,x,y,100,100);

    
    
    //triangle(x - 10, y + 10, x + 10, y + 10, x, y - 10);
    //triangle(x - 10, y - 5, x + 10, y - 5, x, y + 15);
  }
  
  void upDownMovement() {
    if (this.flag == 0 && y != lower) {
      y += linearSpeed; }
    if (this.flag == 1 && y != upper) {
      y -= linearSpeed; }
    if (y == upper) {
      this.flag = 0; }
    if (y == lower) {
      this.flag = 1; }
    
    }
    
  }
