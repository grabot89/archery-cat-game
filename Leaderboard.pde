//Leaderboard Class
public class Leaderboard {
  //Array to hold player scores 
  private Score[] scores = new Score[5];
  /*
  *method to add score to array 
  *For loop that inserts score in first empty index
  */
  public void addScore(Score score) {
    boolean scoreInserted = false; //<>//
    for (int i = 0; i < scores.length; i++) {
      if (scores[i] == null) {
        scores[i] = score;
        scoreInserted = true;
        break; // Break or game will insert same score multiple times
      }
    }
    //If score array is full, score will be added to last index of array.
    if (scoreInserted == false) { 
      scores[4] = score;
    }
  }
  //loops throught scores and displays each score and prompt player to reset
  public void displayScores() { //<>//
    textFont(font, 20);
    for (int i = 0; i < scores.length; i++) {
      if (scores[i] != null)
        text("Name: " + scores[i].getName() + " Score: " + scores[i].getScore() + " Balloons popped: " + scores[i].getBalloonsPopped() + " \n", 100, (i+1)*100);
    }
    text("Press r to reset and play again", 100, 600);
  }
}
