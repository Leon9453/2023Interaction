int xPos=200,yPos=200;
PImage img;
void setup(){
  size(400,400);
  img = loadImage("1.png");
  img.resize(width,height);
  image(img,0,0);
  smooth();
}
void draw(){
  background(0);
  if(keyPressed){
    if(key=='a'){
      xPos -= 10; 
    }
    if(key=='d'){
      xPos += 10; 
    }
  }
  rect(xPos-25,yPos+150,50,20);
  delay(100);
}
