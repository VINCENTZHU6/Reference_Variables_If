//variables
float circleX = 250;
float circleY = 0;
float circleSpeed = 2;
float arcX = 500;
float arcY = 280;
float arcSpeed = 3;
float arc2X = 370;
float arc2Y = 280; 
float arc2Speed = 3;
float moonSun = 235;
float moonSun2 = 235;
float moonSun3 = 235;
float skyColor = 40;
float skyColor2 = 40;
float skyColor3 = 40;

void setup() {
  size(500, 400);
  frameRate(10);
}

void draw() {
  background(skyColor, skyColor2, skyColor3);
  circleY = circleY + circleSpeed;
  arcX = arcX - arcSpeed;
  arc2X = arc2X - arc2Speed; 
  noStroke();

  //circle (moon and sun);
  fill(moonSun, moonSun2, moonSun3);
  ellipse(circleX, circleY, 100, 100);
  if (circleY > 400)
  {
    moonSun = 242;
    moonSun2 = 207;
    moonSun3 = 67;
    skyColor = 181;
    skyColor2 = 249;
    skyColor3 = 242;
    circleSpeed = -450;
  }
  if (circleY < 0)
  {
    circleSpeed = 2;
  }
  if (circleY == 400)
  {
    if (moonSun == 242)
    {
      moonSun = 235;
      moonSun2 = 235;
      moonSun3 = 235;
      skyColor = 40;
      skyColor2 = 40;
      skyColor3 =40;
      circleSpeed = -450;
    }
  }


  //arc 2 (hill)
  fill(43, 105, 6);
  arc(arc2X, arc2Y, 150, 100, radians(-180), radians(0));
  if (arc2X < -130)
  {
    arc2Speed = -800;
  }
  if (arc2X > 500)
  {
    arc2Speed = 3;
  }

  //arc(hill)
  arc(arcX, arcY, 250, 200, radians(-180), radians(0));
  if (arcX < -130)
  {
    arcSpeed = -800;
  }
  if (arcX > 500)
  {
    arcSpeed = 3;
  }

  //rect(ground)
  rect(0, 280, 500, 120);


}
