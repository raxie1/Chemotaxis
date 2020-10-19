Army[] colony = new Army[1000]; 
int population = 5;
int index, newX, newY, blue, counter;
void setup()   
{     
  size(600, 600);
  for (int i = 0; i < population; i++)  
  {
    blue = color((int)(Math.random()*0), (int)(Math.random()*0), (int)(Math.random()*256));
    colony[i] = new Army((int)(Math.random()*500), (int)(Math.random()*500), blue);
  }
  textSize(30);
}   
void draw()   
{   
  background(230, 240, 245);
  fill(255, 80, 0);
  text("orange", mouseX, mouseY);
  for (int i = 0; i < population; i++)
  {
    colony[i].show();
  }
  counter = counter + 1;

  if (counter == 250 && (population*2) < 641)
  {
    for (int i = population; i < population*2; i++)  
    {
      index = i - population;
      newX = colony[index].x;
      newY = colony[index].y;
      blue = colony[index].myColor;
      colony[i] = new Army(newX, newY, blue);
    }
    population = population * 2;  
    counter = 0;
  }
}
class Army  
{
  int x, y, myColor;
  Army(int myX, int myY, int blue)
  {
    x = myX;
    y = myY;
    myColor = blue;
  }
  void show()
  {
    fill(myColor);
    ellipse(x, y, 25, 25);
    if (mouseX > x)
      x = x + (int)(Math.random()*20)-2;
    else
      x = x + (int)(Math.random()*10)-8;
    if (mouseY > y)
      y = y + (int)(Math.random()*20)-2;
    else
      y = y + (int)(Math.random()*10)-8;
  }
}
