//audio
import ddf.minim.* ; 
Minim minim; // declares "minim" to be a type "Minim" object
AudioPlayer bgm, soundEffect ; //create 2 objects

float midX = width/2;
float midY = height/2;
PImage shuriken, fireball;

Sonic sonic1;
Tails tails1;

//Shuriken #1
Shuriken s1 = new Shuriken(400, 200, -5);
Fireball f1_1 = new Fireball(400, 200, -5, 75, 0);
Fireball f2_1 = new Fireball(400, 200, -5, -75, 0);
Fireball f3_1 = new Fireball(400, 200, -5, 0, 75);
Fireball f4_1 = new Fireball(400, 200, -5, 0, -75);

//Shuriken #2
Shuriken s2 = new Shuriken(400, 600, 5);
Fireball f1_2 = new Fireball(400, 600, 5, 75, 0);
Fireball f2_2 = new Fireball(400, 600, 5, -75, 0);
Fireball f3_2 = new Fireball(400, 600, 5, 0, 75);
Fireball f4_2 = new Fireball(400, 600, 5, 0, -75);


//rain
rain[] drops = new rain[200]; // array of drop objects

//Rings
int numRings = 10;
Ring[] rings = new Ring[numRings]; //create the rings array with numRings object
color colors = color(251, 208, 0); //ring color: yellow
float dx = 300;
float dy = 0;
int diameter = 60;
int ringIndex = 0;
boolean ringsDisappear = true;



void setup() {
  size(800, 800);
  background(210);
  
  //audio
  minim = new Minim(this) ;
  bgm = minim.loadFile("Doraemon_fc_Soundtrack.mp3") ; 
  soundEffect = minim.loadFile("sonic_ring_sound_effect.mp3") ;
  
  bgm.play() ;//start when program runs
  shuriken = loadImage("shuriken.png");
  fireball = loadImage("fireball.png");
  sonic1 = new Sonic(width * .9, height / 2, 0.5, 0.02);
  tails1 = new Tails(width / 2, height - 100, 0.5);

  //create the drops (rain dropS)
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new rain();
  }

  //create rings
  for (int i = 0; i < numRings; i++)
    rings[i] = new Ring(dx, dy, diameter);
}


void stop() {
  minim.stop() ;
  super.stop() ;
}


void draw() {
  background(210);
  Ring r1 = new Ring(20, 20, 20);
  r1.display();

  // Shuriken #1
  s1.display();
  f1_1.display();
  f2_1.display();
  f3_1.display();
  f4_1.display();
  s1.side2Side();
  f1_1.side2Side();
  f2_1.side2Side();
  f3_1.side2Side();
  f4_1.side2Side();

  //Shuriken #2
  s2.display();
  f1_2.display();
  f2_2.display();
  f3_2.display();
  f4_2.display();
  s2.side2Side();
  f1_2.side2Side();
  f2_2.side2Side();
  f3_2.side2Side();
  f4_2.side2Side();

  sonic1.move();
  tails1.move();

  //rain
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall(); // set the shape and speed of drop
    drops[i].show(); // show rain drops
  }

  //Rings
  //draw a series of rings object
  translate(width/2, height/2);//x: specifies left/right translation, y: specifies up/down translation
  for (int i = 0; i < numRings; i++) {
    rotate(radians(360/float(numRings)));
    rings[i].display();
  }
  
  
  if (frameCount % (20 * (rings.length)) == 0) {
    ringsDisappear = !ringsDisappear;
  }
  
  if (ringsDisappear) {
    rings[ringIndex].disappear();
  } else {
    rings[ringIndex].fadeIn();
  }
  
  if (frameCount % 20 == 0) {
    ringIndex++;
    
    if (ringIndex >= rings.length) {
      ringIndex = 0; //reset index for next frame
    }
  }
  
}


void keyReleased() {
  if (key == ' ' ) { //spacebar
    soundEffect.play() ;
    soundEffect.rewind();
  }
}
