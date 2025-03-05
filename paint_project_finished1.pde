//pallette
color cream = #F2F6D0;
color Honeydew = #D0E1D4;
color Pearl = #D9D2B6;
color Desertsand = #E4BE9E;
color Dimgray = #71697A;
color pink = #D88373;
color tangerine = #F28F3B;

PImage explosion;

void setup() {
  size(1000,800);
  background(255);
  explosion = loadImage("explosion.png");
}

void draw(){
  image(explosion, 200,50);
  strokeWeight(5);
fill(255);
  rect(0,0,1000,800);
  fill(188);
rect(0,0,150,800);
fill(cream);
ellipse(75,75,100,100);
fill(Honeydew);
ellipse(75,200,100,100);
fill(Pearl);
ellipse(75,325,100,100);
fill(Desertsand);
ellipse(75,450,100,100);
fill(tangerine);
ellipse(75,575,100,100);
fill(pink);
ellipse(75,700,100,100);

}

void mouseDragged(){
  line(pmouseX, pmouseY, mouseX, mouseY); 
}
