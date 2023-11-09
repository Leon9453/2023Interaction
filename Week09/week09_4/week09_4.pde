PImage img;
int [][] pos = {{83,456},{116,456},{152,457},{188,457},{220,456},{253,456},{291,456},{323,457},{359,457},{393,456},{93,489},{127,491},{162,491},{196,491},{230,490},{264,490},{302,490},{334,490},{367,490},{110,523},{143,524},{181,524},{213,524},{247,524},{280,524},{316,526}};
void setup(){
  size(800,600);
  img = loadImage("keyboard.png");
  rectMode(CENTER);
}
void draw(){
  background(#FFFFF2);//淡黃色，清背景
  image(img,0,600-266);
  fill(255,0,0,128);//半透明的紅色
  rect(mouseX,mouseY,28,30,5);//定位，印出mouse座標
  fill(0,255,0,128);//半透明綠色
  for(int i=0;i<26;i++){
    if(pressed[i])rect(pos[i][0],pos[i][1],28,30,5);
  }
}
boolean [] pressed = new boolean[26];//Java的陣列宣告都是0或false
void keyPressed(){
  if(key>='a'&&key<='z')pressed[key-'a']=true;
}
void keyReleased(){
  if(key>='a'&&key<='z')pressed[key-'a']=false;
}
