//pallette
color red = #FF3E3E;
color green = #097969;
color grey = #7b6661;
color blue = #4e89c4;
color pink = #E802F5;

float sliderX;
float shade;

void setup() {
  size(800,600);
  strokeWeight(5);
  stroke(green);
  fill(green);
  sliderX = 400;
  shade = 0;
}

void draw(){
  background(pink);
   shade = map(sliderX, 100, 700, 0, 15);
   strokeWeight(shade);
  line(100,500,700,500);
  circle(sliderX, 500, 50);
}

void mouseDragged(){
controlSlider();
}

void mouseReleased(){
  controlSlider();
}

void controlSlider(){
    if(mouseX > 100 && mouseX <700 && mouseY >275 && mouseY< 525){
    sliderX = mouseX;
    }
    
    shade = map(sliderX, 100, 700, 0, 255);
}
