//Enemy Class
public class Enemy {
  //private instance variables
  private float x;
  private float y;
  private int speed;
  PImage enemy;

  public Enemy(float x, float y) { //Constructor
    this.x = x;
    this.y = y;
    this.speed = (int) random(10) + 5; // set enemy flying speed
    enemy = loadImage("llama.png");
  }
  //getters and setters for use in other classes (encapsulation)
  public float getX() {
    return x;
  }

  public float getY() {
    return y;
  }

  public void display() {
    if (x > width) { //if enemy goes off screen reset enemy
      resetEnemy();
    } else
      imageMode(CENTER); //using center for collision detection instead of corner
    image(enemy, x+=speed, y);
  }

  // Reset x position to 10, change y position, change enemies speed
  public void resetEnemy() {
    x = 10;
    y = random(height*0.9);
    speed = (int) random(10) + 5;//cast float to an int
  }
}
