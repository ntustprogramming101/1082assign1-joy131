PImage bgImg;
PImage groundhog;
PImage life;
PImage robot;
PImage soil;
PImage soldier;

int x; //soldier
int laserX; //Laser
int laserX2;

int laser_length = 40;

void setup() {
  size(640, 480);


bgImg = loadImage("img/bg.jpg");
groundhog = loadImage("img/groundhog.png");
life = loadImage("img/life.png");
soil = loadImage("img/soil.png");
robot = loadImage("img/robot.png");
soldier = loadImage("img/soldier.png");

x = 0; //soldier

laserX = 400; // Laser point 1
laserX2= 385; // Laser point 2




}

void draw() {
  
 //background
image (bgImg, 0, 0); 

//sun

stroke(255,255,0);
strokeWeight(5);
fill(253, 184, 19);
ellipse(590, 50, 120); //sun

//grass
noStroke();
fill(124,204,25);
quad(0,145,640,145,640,160,0,160);  

//hog
image (groundhog , 280 , 80); 

// 3 lifes
image (life , 10, 10);
image (life , 80, 10);
image (life , 150, 10); 

//soil
image (soil , 0 , 160); 


//laser
stroke(255,0,0);
strokeWeight(10);

laserX=(laserX-1);
if(laserX<240){laserX = 400;}

laserX2=(laserX2-1) ;
line(laserX+laser_length,197,laserX,197); 



//robot
image ( robot , 400 , 160); 


//moving soldier
x+=5;
image(soldier,x ,400);
x%=720; 


}
