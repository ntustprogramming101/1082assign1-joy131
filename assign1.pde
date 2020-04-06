PImage bgImg;
PImage groundhog;
PImage life;
PImage robot;
PImage soil;
PImage soldier;


int laserX; //Laser edge point 1 (right)
int laserX2; //Laer edge point 2 (left)

int laserLength = 40;

int robotPositionX;
int robotPositionY;

int soldierX; //soldier position X
int soldierY; // soldier position Y

void setup() {
  size(640, 480);


bgImg = loadImage("img/bg.jpg");
groundhog = loadImage("img/groundhog.png");
life = loadImage("img/life.png");
soil = loadImage("img/soil.png");
robot = loadImage("img/robot.png");
soldier = loadImage("img/soldier.png");

soldierX = 0; //soldier



robotPositionX = int(random(100,500));// robot ramdom in x (there are 5 boxes)
int y_robotCase = int(random(0,3.99)); // between 0,1,2,3 (soil)
int y_soldierCase= int(random(0,3.99)); //between 0,1,2,3 (soil)
robotPositionY =  160 + y_robotCase*80; //160 is sky + random * 1 box(80) 
soldierY = 160 + y_soldierCase*80; //160 is sky + random * 1 box(80) 

laserX = robotPositionX + 25; // Laser point 1 (right) robot hand

}

void draw() {
  
 //background
image (bgImg, 0, 0); 

//sun
stroke(255,255,0);
strokeWeight(5);
fill(253, 184, 19);
ellipse(590, 50, 120, 120); 

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

//robot
image ( robot , robotPositionX , robotPositionY); 


//laser 
stroke(255,0,0);
strokeWeight(10);
//laser shooting
laserX=laserX-1;
if(laserX<robotPositionX-100){
laserX = robotPositionX+25;
}
laserX2 = (laserX + laserLength);
if(laserX2 > robotPositionX+25)
{
  laserX2 = robotPositionX+25;
}
line(laserX,robotPositionY+37,laserX2,robotPositionY+37); 


//moving soldier
soldierX+=5;
image(soldier, soldierX ,soldierY);
//x%=720; 


if(soldierX>width){
  soldierX = -100;
   }
}
