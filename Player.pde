public class Player{
  
  //private instance variables
  private String name;
  private int lives;
  private Score score;
  private PImage fullHeart = loadImage("heart-yellow.png");
  private PImage emptyHeart = loadImage("heart-empty.png");
  
  //constructor
  public Player(String name) {
    this(name, 3, new Score(name));
  }
  //overloaded constructor
  public Player(String name, int lives, Score score) {
    this.name = name;
    this.lives = lives;
    this.score = score;
  }
  //getters and setters for use in other classes (encapsulation)
  public void setName(String name) {
    this.name = name;
    this.score.setName(name);
  }
  
  public String getName() {
    return name;
  }
  
  public void setLives(int lives) {
    this.lives = lives;
  }
  
  public int getLives() {
    return lives;
  }
  // substract a life, if no lives set gameOver true
  public void reduceLife() {
    lives--;
    if (lives == 0) {
      gameOver = true;
    }
  }
  
  public void setScoreValue(int score) {
    this.score.setScore(score);
  }
  
  public int getScoreValue() {
    return score.getScore();
  }
  
  public Score getScore() {
    return score;
  }
  
  public int getBalloonsPopped() {
    return score.balloonsPopped;
  }
  
  public void setBalloonsPopped(int balloonsPopped) {
    this.score.setBalloonsPopped(balloonsPopped);
  }
  
  //display player score and name in the top left
  void display() {
    textFont(font, 80);
    text(name + ": " + score.getScore(), 100, 100);
    //switch statement to display lives bottom left 
    switch (lives) {
      case 3:
        image(fullHeart, 30, 650);
        image(fullHeart, 80, 650);
        image(fullHeart, 130, 650);
        break;
      case 2:
        image(fullHeart, 30, 650);
        image(fullHeart, 80, 650);
        image(emptyHeart, 130, 650);
        break;
      case 1:
        image(fullHeart, 30, 650);
        image(emptyHeart, 80, 650);
        image(emptyHeart, 130, 650);  
        break;
    }
  }
}
