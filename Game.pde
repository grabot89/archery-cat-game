 // Grainne Moran Student Num: 20104297 //<>//

/*
* Archer Cat McMeow
* A game based on the 1980s game "Pooyan" mashed up with the 2012 game "Battle Cats"
*/

//Imported Libaries
import processing.sound.*;
import javax.swing.*;

//Declaration of objects used in game
PFont font;
PImage canvas;
Balloon[] balloons;
SoundFile file;
Hero hero;
Enemy enemy;
Arrow[] arrows;
Player player;
Leaderboard leaderBoard;

//Primitives used in game
int arrowCounter;
int heroMoveSize;
int balloonCounter;
int poppedCounter;
boolean gameOver;

/*
 * Setup initializes objects and sets values to primitives to start the game.
 * Setup sets the size of window displayed and loads background image, loads font and sound.
 * Requests player name using JOptionPane
 */
void setup()
{
  size(1280, 720);
  canvas = loadImage("sky.jpg");
  //spawnballoons creates an array of  50 balloons
  balloons = spawnBalloons();
  arrows = new Arrow[100];
  arrowCounter = 0;
  player = new Player(JOptionPane.showInputDialog(null, "Enter Player Name ", "Archer Cat McMeow", JOptionPane.INFORMATION_MESSAGE) );
  hero = new Hero(1200, 10);
  font = loadFont("Skia-Regular_Black-48.vlw");
  leaderBoard = new Leaderboard();
  enemy = new Enemy(10, random(height*0.9)); //On;y appears in top 90% of screen
  balloonCounter = 0;
  arrowCounter = 0;
  poppedCounter = 0;
  gameOver = false;
  heroMoveSize = 20;

  file = new SoundFile(this, "archercat.mp3");
  file.play();
}

void draw()
{
  background(0);
  imageMode(CORNER);//Corner used because CENTER is used for Enemy and Hero collision detection, setting imageMode back to default. 
  image(canvas, 0, 0);
  /*
  * If boolean gameOver true, game will end. 
  * The players score will be displayed (name and balloons popped, each balloon popped is 10 pointa).
  */
  if (gameOver) {
    player.setBalloonsPopped(poppedCounter);
    player.setScoreValue(poppedCounter*10);
    leaderBoard.displayScores();
  } else {
    //this is the main code that is run if gameover is false.
    poppedCounter = 0;
    hero.display(); //displays Hero on screen
    //This displays on bottom right how many arrows are left 
    textFont(font, 80);
    text("Arrows: " + (99 - arrowCounter), 800, 650);
    //Collision detection for Enemy hitting Hero.
    if (checkEnemyCollision()) {
      //when enemy hits Hero, send Enemy back to left side of screen and take a life away.
      enemy.resetEnemy();
      player.reduceLife();
    }
    enemy.display();
    //For loop to display arrows if they have been fired. Arrow counter represents how many arrows have been fired.
    for (int i = 0; i < arrowCounter; i++) {
      if (arrows[i].getFired())
        arrows[i].display();
    }
    //For loop to make balloons descend and display and check collision with arrow 
    for (Balloon b : balloons) {
      b.descend();
      //If the balloons have been popped the counter increases by 1.
      if (b.getPopped()) poppedCounter++;
      checkCollision(b);
      b.display();
    }
    //keep player score up to date 
    this.player.setBalloonsPopped(poppedCounter);
    this.player.setScoreValue(poppedCounter*10);
    //shows player details on screen 
    player.display();
    // set gameover true logic below:
    if (player.getBalloonsPopped() >= balloons.length) {
      println("Game over from balloons popped");
      gameOver = true;
      leaderBoard.addScore(player.getScore());
    }
    if (player.getLives() <= 0) {
      println("Game over from lives empty");
      gameOver = true;
      leaderBoard.addScore(player.getScore());
    }
    if (arrowCounter >= 99) {
      println("Game over from arrows empty");
      gameOver = true;
      leaderBoard.addScore(player.getScore());
    }
  }
}
//Method to create Balloons and return array
private Balloon[] spawnBalloons() {
  Balloon[] balloons = new Balloon[50];

  while (balloonCounter < 50) {//balloons only appear in first 80% width of screen.
    balloons[balloonCounter] = new Balloon(random(width*0.8), 0); //constructor call
    balloonCounter++;
  }
  return balloons;
}
/*
*key pressed logic 
*Spacebar creates arrow object and adds to array
*R key resets game if gameover is true
*position keys move Hero object up and down.
*/
void keyPressed() {
  if (key == ' ') {
    arrows[arrowCounter] = new Arrow(hero.getXCoord(), hero.getYCoord());
    arrows[arrowCounter].setFired(true);
    arrowCounter++;
  } else if (key == 'r') {
    if (gameOver) {
      resetGame();
    }
  } else if (key == CODED) {
    int heroPosition = hero.getYCoord();
    if (keyCode == UP) {
      if (heroPosition > heroMoveSize)
        hero.setYCoord(heroPosition - heroMoveSize);
    } else if (keyCode == DOWN) {
      if (heroPosition + hero.getHeroHeight()/2 < height - heroMoveSize)
        hero.setYCoord(heroPosition + heroMoveSize);
    }
    hero.display();
  }
}
//resets values back to game start
private void resetGame() {
  gameOver = false;
  balloons = spawnBalloons();
  arrowCounter = 0;
  balloonCounter = 0;
  player.setLives(3); // Reset players lives
  player.setScoreValue(0);
  background(0);
}

/*
*Collision detection between arrow and balloons
*Created using code from Pong lecture notes
*This sets balloon popped if collision detected 
*/
private void checkCollision(Balloon b) {
  for (int i = 0; i < arrowCounter; i++) {
    Arrow a = arrows[i];
    if (a.getFired() && !a.getSpent()) {
      float balloonDistanceX = abs(b.getX() - a.getArrowCentreX() - a.getArrowLength()/2);
      float balloonDistanceY = abs(b.getY() - a.getArrowCentreY() - a.getArrowHeight()/2);

      if (balloonDistanceX <= (a.getArrowLength()/2) && balloonDistanceY <= (a.getArrowHeight()/2)) {
        b.setPopped(true);
      }
    }
  }
}
//Collision detection for Hero and Enemy 
private boolean checkEnemyCollision() {
  float enemyDistanceX = abs(enemy.getX() - hero.getXCoord() - hero.getHeroWidth()/2);
  float enemyDistanceY = abs(enemy.getY() - hero.getYCoord() - hero.getHeroHeight()/2);

  if (enemyDistanceX <= (hero.getHeroWidth()/2) && enemyDistanceY <= (hero.getHeroHeight()/2)) {
    return true;
  }
  //This is hypoteneuse formula from pong lecture notes.
  float cornerDistance = pow(enemyDistanceX - hero.getHeroWidth()/2, 2) +
    pow(enemyDistanceY - hero.getHeroHeight()/2, 2);

  if (cornerDistance <= pow(100, 2)) {
    return true;
  } else {
    return false;
  }
}
