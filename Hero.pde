//Hero Class
public class Hero
{
  //private instance variables
  private int xCoord;              // X coordinate of the Hero
  private int yCoord;              // Y coordinate of the Hero
  private int heroWidth = 100;         // width of the Hero
  private int heroHeight= 100;     // height of the Hero
  PImage archer;

  //constructor
  public Hero(int xCoord, int yCoord) {
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    archer = loadImage("archer-cat.png");
  }
  //getters and setters for use in other classes (encapsulation)
  public int getXCoord() {
    return xCoord;
  }

  public void setYCoord(int yCoord) {
    this.yCoord = yCoord;
  }

  public int getYCoord() {
    return yCoord;
  }

  public int getHeroHeight() {
    return heroHeight;
  }

  public int getHeroWidth() {
    return heroWidth;
  }

  public void display() {
    fill(#000300);
    imageMode(CENTER); //using center for collision detection instead of corner
    image(archer, xCoord, yCoord);
  }
}
