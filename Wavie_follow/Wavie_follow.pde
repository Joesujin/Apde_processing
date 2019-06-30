PVector P1,P2,a,b,mouse;
float speed,slowSpeed,r,g,y;

void setup(){
  size(displayWidth,displayHeight);
  P1 = new PVector(width/3,height/2);
  P2 = new PVector((width/3)*2,height/2);
  a = P1;
  b = P2;  
  speed = 0.7;
  slowSpeed =0.98;
}

void draw(){
  P1 = new PVector(0,height/2);
  P2 = new PVector(width,height/2);
  fill(0,5);
  rect(0,0,width,height);
  noStroke();
  //fill(#D38080);
  //ellipse(P1.x,P1.y,10,10);
  //ellipse(P2.x,P2.y,10,10);
  
  mouse = new PVector(mouseX,mouseY);
  
  P1.x = lerp(mouse.x,P1.x,speed);
  P2.x = lerp(mouse.x,P2.x,speed);
  
  a.x = lerp(mouse.x,a.x,slowSpeed);
  a.y = lerp(mouse.y,a.y,slowSpeed);
  b.x = lerp(mouse.x,b.x,slowSpeed);
  b.y = lerp(mouse.y,b.y,slowSpeed);
  
  
  //ellipse(P1.x,P1.y,10,10);
  //ellipse(P2.x,P2.y,10,10);
  //ellipse(a.x,a.y,10,10);
  //ellipse(b.x,b.y,10,10);

  strokeWeight(10);
  r =map(a.x,0,width,100,255);
  
  colorMode(HSB);
  stroke(r,200,250,10);
  //fill(r,g,y);
  
  curve(a.x,a.y,P1.x,P1.y,P2.x,P2.y,b.x,b.y);
  println(a.x,a.y);
   
  
}
