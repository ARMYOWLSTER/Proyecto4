PImage[] Villain = new PImage[8];
PImage bg, batarang;
Villains[] Villains = new Villains[100];

void setup() {
  size(502, 502);
  for (int i = 0; i < Villain.length; i++) {
    Villain[i] = loadImage("Villain"+i+".png");
    batarang = loadImage ("Batarang.png");
    bg = loadImage ("BG.jpg");
    
  }

  for (int i = 0; i < Villains.length; i++) {
    int index = int(random(0, Villain.length));
    Villains[i] = new Villains(Villain[index],random(-40000,-100), random(0, 400), random(32, 72));

  }
}

void draw() {
  image (bg, width/2, height/2);
  for (int i = 0; i < Villains.length; i++) {
    Villains[i].move();
    Villains[i].display();
    Villains[i].top();
    
  
  }
}