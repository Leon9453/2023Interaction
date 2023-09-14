//互動模式 Interactive Mode (Active Mode)
void setup(){
  size(500,500);
  background(255,255,0);
}

void draw(){
  if(mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY);
  }//畫線(滑鼠座標mouseX,mouseY,到之前滑鼠座標pmouseX,pmouseY)
}

void keyPressed(){
  if(key=='1')stroke(255,0,0);//按下數字1紅色
  if(key=='2')stroke(0,255,0);//按下數字2綠色
  if(key=='3')stroke(0,0,255);//按下數字3藍色
  if(key=='s'||key=='S')save("output.png");//如果按下s鍵，就會存檔
}
