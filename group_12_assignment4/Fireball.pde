class Fireball extends Shuriken {
  
  float r = 2;

  Fireball(float x, float y, float linearSpeed) {
    super(x,y,linearSpeed);
  }
  
  void display() {
     push();
    translate(x,y);
    rotate(radians(r));
    //fill(255,0,0);
    //noStroke();
    //circle(100,0,20);
    fireball.loadPixels();
    for (int x = 0; x < fireball.width; x++) {
      for (int y = 0; y < fireball.height; y++) {
        int index = x + y*fireball.width;
        color c = fireball.pixels[index];
        if (blue(c) > 200) { 
          fireball.pixels[index] = color(0,0,0,1);
        }
      }
    }
          
    shuriken.updatePixels();
    imageMode(CENTER);
    image(fireball,200,0,100,100);
    pop();
    
    r+=5;
    
    
  }
}
