//pallette
color cream = #F2F6D0;
color Honeydew = #D0E1D4;
color Pearl = #D9D2B6;
color Desertsand = #E4BE9E;
color Dimgray = #71697A;
color pink = #D88373;
color tangerine = #F28F3B;
color black = #000000;

PImage explosion;
//variables for selecting
color selectedColor;

void setup() {
  size(1000,800);
  background(255);
  stroke(black);
  selectedColor= black;
  explosion = loadImage("explosion.png");
}

void draw(){
  image(explosion, 200,50);
  strokeWeight(5);
fill(255);

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

}

void mouseDragged(){
  line(pmouseX, pmouseY, mouseX, mouseY); 
}
void tactile(int x, int y, int r){
  if(dist(x,y,mouseX,mouseY)<r){
    stroke(Dimgray);
  }else{
    stroke(0);
  }
}

void mouseReleased(){
  //cream buton
  if(dist(75,75,mouseX,mouseY)<50){
    selectedColor = cream;
  }
  //Honeydew
  if(dist(75,200,mouseX,mouseY)<50){
    selectedColor = Honeydew;
  }
}
