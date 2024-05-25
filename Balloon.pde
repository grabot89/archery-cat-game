//Balloon Class


public class Balloon
{
  //private instance variables 
  private float x;  //data
  private float y;
  private color colour;
  private int interval;
  private int timer;
  private boolean popped;
  private int balloonWidth = 50;
  private int balloonHeight = 70;

  public Balloon(float x, float y) //constructor 
  {
    this.x = x;
    this.y = y;
    this.colour = color(random(255), random(255), random(255));
    this.interval = (int) random(10000);
    this.popped = false;
    this.timer = millis();
  }
 //getters and setters for use in other classes (encapsulation) 
  public float getX() {
    return x;
  }
  
  public float getY() {
    return y;
  }
  
  public void setPopped(boolean popped) {
    this.popped = popped;
  }
  
  public boolean getPopped() {
    return popped;
  }
  
  public int getBalloonWidth() {
    return balloonWidth;
  }
  
  public int getBalloonHeight() {
    return balloonHeight;
  }
/*
*This method makes balloons fall from sky, if balloons fall off botton of screen they reappear in top in same xCoord
*The timer and interval allow for staggered balloon fall and display
*Random function changes speed of fall 
*/
  public void descend()
  {
    if (millis() > timer + interval) {
      if (y >= height) 
        y = 0;
      else 
        y += random(5);
    }
  }

/*
* The timer and interval allow for staggered balloon fall and display
*only display if balloons not popped
*/
  public void display() 
  {
    if (!popped) {
      if (millis() > timer + interval) {
        stroke(1);
        fill(this.colour);
        ellipse(x, y, balloonWidth, balloonHeight); //function
      }
    }
  }
}
