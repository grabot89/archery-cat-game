//Arrow class
public class Arrow {
  //private instance variables
  private int xCoord;
  private int yCoord;
  private int arrowLength;
  private int arrowHeight = 5; //Need this for conflict detection
  private boolean fired = false;
  private boolean spent = false;
  //initial constructor
  public Arrow(int xCoord, int yCoord) {
    this(xCoord, yCoord, 50);
  }
  //overloaded constructer allows configuring arrow length
  public Arrow(int xCoord, int yCoord, int arrowLength) {
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    this.arrowLength = arrowLength;
  }
  //getters and setters for use in other classes (encapsulation)
  public boolean getFired() {
    return fired;
  }

  public void setFired(boolean fired) {
    this.fired = fired;
  }

  public boolean getSpent() { //spent means arrow has gone off screen
    return spent;
  }

  public void setSpent(boolean spent) {
    this.spent = spent;
  }

  public int getXCoord() {
    return xCoord;
  }

  public int getYCoord() {
    return yCoord;
  }

  public int getArrowLength() {
    return arrowLength;
  }

  public int getArrowHeight() {
    return arrowHeight;
  }
  //arrow centre used for collision detection in game class
  public int getArrowCentreX() {
    return xCoord + arrowLength/2;
  }

  public int getArrowCentreY() {
    return yCoord + arrowHeight/2;
  }


  public void display() {
    noStroke();
    //if fired update arrow position
    if (fired)
      xCoord -= 5;
    //if gone off screen spent true
    if (xCoord < 0)
      spent = true;
    //only show arrow if not gone off screen
    if (!spent) {
      fill(#FF932E);
      triangle(xCoord-10, yCoord+5, xCoord, yCoord-10, xCoord, yCoord+10);
      triangle(xCoord+arrowLength-10, yCoord+5, xCoord+arrowLength, yCoord-10, xCoord+arrowLength, yCoord+10);
      fill(#FAFF7E);
      rect(xCoord, yCoord, arrowLength, arrowHeight);
    }
  }
}
