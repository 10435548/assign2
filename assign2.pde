//You should implement your assign2 here.
PImage frighterImg;
PImage bg1Img;
PImage bg2Img;
PImage enemyImg;
PImage hpImg;
PImage treasureImg;
PImage start1Img;
PImage start2Img;
PImage end1Img;
PImage end2Img;
int x,y,z;
int a,b,c,d;
boolean isPlaying;
boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;
float speed = 5;
float moveX;
float moveY;

void setup () {
  size(640, 480);
    x=0;
    bg1Img = loadImage("img/bg1.png");
    bg2Img = loadImage("img/bg2.png");
    frighterImg = loadImage("img/fighter.png");
    hpImg = loadImage("img/hp.png");
    treasureImg = loadImage("img/treasure.png");
    enemyImg = loadImage("img/enemy.png");
    start1Img = loadImage("img/start1.png");
    start2Img = loadImage("img/start2.png");
    end1Img = loadImage("img/end1.png");
    end2Img = loadImage("img/end2.png");
    
    
    a = floor(random(0,600));
    b = floor(random(0,450));
    c = floor(random(0,450));
    d = floor(random(30,195));
    moveX = 580;
    moveY = height/2;
}

void draw() 
{
 image(bg1Img,y,0);
 image(bg2Img,z,0);
 image(frighterImg,moveX,moveY);
 image(treasureImg,a,b);
 image(enemyImg,x,c);
 image(hpImg,0,0);
 fill(255,0,0);
 rect(10,10,d,10);
 if(isPlaying)
 x += 3;
 x%=650;
 y +=3;
 y%=640;
 z =y-640;
 moveX%=650;
 moveY%=640;
 if(x <= moveX && c == moveY);{
   isPlaying = false;}

}
void keyPressed(){
  isPlaying =true;
  if(key == CODED){
    switch (keyCode){
    case UP:
    moveY -= speed;
    break;
    
    case DOWN:
    moveY += speed;
    break;
    
    case LEFT:
    moveX -= speed;
    break;
    
    case RIGHT:
    moveX += speed;
    break;
}
}
}
void keyReleased(){
}
