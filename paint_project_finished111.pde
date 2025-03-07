//pallette
color cream = #F2F6D0;
color Honeydew = #D0E1D4;
color Pearl = #D9D2B6;
color Desertsand = #E4BE9E;
color Dimgray = #71697A;
color pink = #D88373;
color tangerine = #F28F3B;
color black = #000000;

float sliderX;
float shade;

PImage explosion;
//variables for selecting
color selectedColor;

void setup() {
  size(1000,800);
  background(255);
  stroke(black);
  selectedColor= black;
  explosion = loadImage("explosion.png");
    sliderX = 600;
  shade = 0;
}

void draw(){
  image(explosion, 200,50);
  strokeWeight(3);
fill(255);

rect(150,700,900,300);
 stroke(0);
 shade = map(sliderX, 300, 750, 0, 15);
 strokeWeight(shade);

 circle(sliderX, 750, 50);
  
  
 stroke(0);
fill(188);
rect(0,0,150,800);

//buttons
tactile(75,75,50);
fill(cream);
ellipse(75,75,100,100);

tactile(75,200,50);
fill(Honeydew);
ellipse(75,200,100,100);

tactile(75,325,50);
fill(Pearl);
ellipse(75,325,100,100);

tactile(75,450,50);
fill(Desertsand);
ellipse(75,450,100,100);

tactile(75,575,50);
fill(tangerine);
ellipse(75,575,100,100);

tactile(75,700,50);
fill(pink);
ellipse(75,700,100,100);
 line(300,750,900,750);
}

void mouseDragged(){
  stroke(selectedColor);
  line(pmouseX, pmouseY, mouseX, mouseY); 
}
void tactile(int x, int y, int r){
  if(dist(x,y,mouseX,mouseY)<r){
    stroke(Dimgray);
  }else{
    stroke(0);
  }
  controlSlider();
}

void mouseReleased(){
  controlSlider();
  //cream buton
  if(dist(75,75,mouseX,mouseY)<50){
    selectedColor = cream;
  }
  //Honeydew
  if(dist(75,200,mouseX,mouseY)<50){
    selectedColor = Honeydew;
  }
  //pearl
      if(dist(75,325,mouseX,mouseY)<50){
    selectedColor = Pearl;  
}
  if(dist(75,450,mouseX,mouseY)<50){
    selectedColor = Desertsand;
  }
    if(dist(75,575,mouseX,mouseY)<50){
    selectedColor = tangerine;
    }
      if(dist(75,700,mouseX,mouseY)<50){
    selectedColor = pink;
      }
}

void controlSlider(){
    if(mouseX > 300 && mouseX <900 && mouseY >600 && mouseY< 800){
    sliderX = mouseX;
    }
    
    shade = map(sliderX, 300, 750, 900, 750);
}
