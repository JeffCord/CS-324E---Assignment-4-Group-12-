import ddf.minim.* ; 
Minim minim; // declares "minim" to be a type "Minim" object
AudioPlayer bgm, soundEffect ; //create 2 objects

void setup() {
  minim = new Minim(this) ;
  bgm = minim.loadFile("Doraemon_fc_Soundtrack.mp3") ; 
  soundEffect = minim.loadFile("sonic_ring_sound_effect.mp3") ;
  
  bgm.play() ;//start when program runs
}


//called with you exit the running processing application
void stop() {
  minim.stop() ;
  super.stop() ;
}


void draw() {
}


void mousePressed() {
}


void keyReleased() {
  if (key == ' ' ) { //spacebar
    soundEffect.play() ;
    soundEffect.rewind();

  }
}
