PImage img, imgBox;
void setup(){
  size(600,600);
  img = loadImage("456.png");
  imgBox = loadImage("box.png");
    image(imgBox,100,100,100,100);
}
void draw(){
  imageMode(CENTER);
  if(mousePressed){
    image(imgBox,mouseX,mouseY);
}else{

  image(img,300,300,220,300);
  }
}
