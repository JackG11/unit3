//pallette
color red = #FF3E3E;
color green = #097969;
color grey = #7b6661;
color blue = #4e89c4;
color pink = #E802F5;

int toggle;

void setup(){
  size (800,600);
  strokeWeight(6);
  textSize(35);
  
  toggle = 1;
}

void draw(){
  background(red);
  
  fill(green);
  rect(150,150,100,300);
  
  if(toggle >0){
  guidelines();
  }
}

void mouseReleased(){
  if(mouseX>150 && mouseX<300 && mouseY>100 && mouseY<200){
    toggle = toggle *-1;
  }
}

void guidelines(){
  fill(green);
  stroke(green);
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
 
}
