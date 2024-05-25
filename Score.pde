//Score class

public class Score {
  //private instance variables
  private String name;
  private int score = 0;
  private int balloonsPopped = 0;
  
  //constructor
  public Score(String name) {
    this(name, 0, 0);
  }
  
  //overloaded constructor
  public Score(String name, int score, int balloonsPopped) {
    this.name = name;
    this.score = score;
    this.balloonsPopped = balloonsPopped;
  }
  //getters and setters for use in other classes (encapsulation)
  public void setName(String name) {
    this.name = name;
  }
  
  public String getName() {
    return name;
  }
  
  public int getScore() {
    return score;
  }
  
  public void setScore(int score) {
    this.score = score;
  }
  
  public int getBalloonsPopped() {
    return balloonsPopped;
  }
  
  public void setBalloonsPopped(int balloonsPopped) {
    this.balloonsPopped = balloonsPopped;
  }
}
