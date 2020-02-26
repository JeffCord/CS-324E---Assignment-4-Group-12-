class Shuriken {
  
  float x,y,linearSpeed, flag, upper, lower, r;
  
  
  Shuriken(float x, float y, float linearSpeed) {
   
    this.x = x;
    this.y = y;
    this.linearSpeed = linearSpeed;
    this.flag = 0;
    this.upper = y - 50;
    this.lower = y + 50;
    this.r = 1;
    
  }
  
  void display() {
    
    push();
    translate(x,y);
    rotate(radians(-r));
    translate(-x,-y);
    imageMode(CENTER);
    image(shuriken,x,y,50,50);
    pop();
    r+=5;}

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
    
  void side2Side() {
    
    if (this.flag == 0 && x != width) {
      x -= linearSpeed; }
    if (this.flag == 1 && x != 0) {
      x += linearSpeed; }
    if (x == width) {
      this.flag = 0;
      x -= linearSpeed;}
    if (x == 0) {
      this.flag = 1;
      x += linearSpeed;}   
      
  }              
}
    
