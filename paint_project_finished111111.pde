//pallette
color cream = #F2F6D0;
color Honeydew = #D0E1D4;
color Pearl = #D9D2B6;
color Desertsand = #E4BE9E;
color Dimgray = #71697A;
color pink = #D88373;
color tangerine = #F28F3B;
color black = #000000;
color white = #FFFFFF;

float sliderX;
float shade;
int toggle;
PImage explosion;
//variables for selecting
color selectedColor;

void setup() {
  size(1000, 800);
  background(255);
  stroke(black);
  selectedColor= black;
  explosion = loadImage("explosion.png");
  sliderX = 600;
  shade = 0;
}

void draw() {
  image(explosion, 200, 50);
  strokeWeight(3);
  fill(255);
  shade = map(sliderX, 300, 750, 900, 750);
  stroke(0);
fill(188);
  rect(150, 700, 900, 300);
  
fill(selectedColor);
  circle(sliderX, 750, 50);

  stroke(0);
  fill(188);
  rect(0, 0, 150, 800);

  //ERASER and ink
  tactileO(160,710,100,35);
  fill(black);
  rect(160, 710, 100, 35);

  tactile0(160,750,100,35);
  fill(white);
  rect(160, 750, 100, 35);

  //buttons
  tactile(75, 75, 50);
  fill(cream);
  ellipse(75, 75, 100, 100);

  tactile(75, 200, 50);
  fill(Honeydew);
  ellipse(75, 200, 100, 100);

  tactile(75, 325, 50);
  fill(Pearl);
  ellipse(75, 325, 100, 100);

  tactile(75, 450, 50);
  fill(Desertsand);
  ellipse(75, 450, 100, 100);

  tactile(75, 575, 50);
  fill(tangerine);
  ellipse(75, 575, 100, 100);

  tactile(75, 700, 50);
  fill(pink);
  ellipse(75, 700, 100, 100);



  //slider
  stroke(3);
  shade = map(sliderX, 300, 750, 0, 15);
  strokeWeight(shade);
  line(300, 750, 900, 750);
}

void mouseDragged() {
  controlSlider();
  if (mouseY <700 && mouseX>150) {
    stroke(selectedColor);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    strokeWeight(0);
  }
}


void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY)<r) {
    stroke(Dimgray);
  } else {
    stroke(0);
  }
}

void tactileO(int x, int y, int w, int h) {
  if(mouseX > x && mouseX< x+w && mouseY> y && mouseY< y+h){
  stroke(Dimgray);
}else{
  stroke(0);
  }
}

void mouseReleased() {
  //ink
  if (mouseX>160 && mouseX<260 && mouseY>710 && mouseY<745) {
    selectedColor = black;
  }

  //eraser
  if (mouseX>160 && mouseX<260 && mouseY>750 && mouseY < 785) {
    selectedColor = white;
  }

  //cream buton
  if (dist(75, 75, mouseX, mouseY)<50) {
    selectedColor = cream;
  }
  //Honeydew
  if (dist(75, 200, mouseX, mouseY)<50) {
    selectedColor = Honeydew;
  }
  //pearl
  if (dist(75, 325, mouseX, mouseY)<50) {
    selectedColor = Pearl;
  }
  if (dist(75, 450, mouseX, mouseY)<50) {
    selectedColor = Desertsand;
  }
  if (dist(75, 575, mouseX, mouseY)<50) {
    selectedColor = tangerine;
  }
  if (dist(75, 700, mouseX, mouseY)<50) {
    selectedColor = pink;
  }
  
  controlSlider();
}
void controlSlider() {
  if (mouseX > 300 && mouseX <900 && mouseY >725 && mouseY<775) {
    sliderX = mouseX;
  }
}
