/* Reflection

Name : // Grainne Moran 

Student Number:20104297

Link to your development Blog on Blogger:                
https://bowsers-game.blogspot.com/

Link to Video on YouTube:
https://www.youtube.com/watch?v=fzagkTKwdi8&ab_channel=Gr%EF%BF%BDinneMoran

Part A - Mark (11/11)
-----------------------------

Inclusion of completed:
- Readme           (1)
- Reflection       (4)
- Video              (4)
- Blog                (2)

I have included  a Readme and Reflection. 
Links are included to Blog and Video . I am therefore rewarding a mark of 11/11 for section A.

Part B - Mark (4 /4)
-----------------------------

- Comments, 
- Indentation, 
- Naming, 
- Structure of code.

I am awarding a mark of 4/4 for section B


Part C - Mark (5 /5)
-----------------------------
Use of standard programming control constructs 
(if, loop, nesting):
I have examples of conditional statements , loops and nesting throughout the program

* if statements

In Game Class:
Line 67 IF statement to show gameover logic.
Else/if on line 71 to show main game code.

IF on line 79 to call  check collision function for Hero and Enemy 

IF on line 94 to increase balloon pop counter.

Three IF statements on lines 104,109,114 to check game over conditions.

Nested IF statements on line  146-149 in key press function for hero movement.


* Loops

FOR loops 
In Game Class:

For loop on Line 86 to loop through arrow array.

For loop on line 175 to check collision detection between balloon and arrow.

While loops use on:
In game class on line 125 to create balloon array.

FOR EACH loops used on:

line 91 in game class to loop through (display and descend) balloons.

I have multiple examples of nesting, if statements and loops so am awarding 5/5 for this section

Part D1 - Mark (10/10)
-----------------------------

My game demonstrates use of collision detection, scoring, lives and the game resets correctly to play a new game.

Collision between balloons and arrows and also collision detection between enemy and hero. Line 174 (game class) Line 188(hero and enemy in game class)

Scoring is displayed on screen and lives are also displayed on screen. (Line 66 in player class )

Game resets correctly with key press when game is over. (line 142 in game class)

Therefore I award score 10/10




Part D2 - Mark (8 /10)
-----------------------------
I have a key handler function (key pressed)set up on line 137 in game class
it handles: 
- Up( up arrow key)
- down(down arrow key)
- Fire Arrow (Spacebar key)
- Reset game (R key)



I have working key handler and  cursor keys too, and an additional two so I am awarding 8/10 Marks in this section.


Part D3 - Mark (8 /10)
-----------------------------
Collision detection BESPOKE METHODS defined in main program file:

checkCollision() on line 174 to detect collision between arrow and balloon.
 Called on line 95 inside for each loop 

--
Check EnemyCollision () on line 188 to detect collision between Hero and Enemy.
Called on line 79 in main draw() game logic.

---
 I have collision detection present between 4 objects therefore I award myself 8/10


-----------------------------
Part E USER DEFINED CLASSES
-----------------------------

Part E1 - Mark (10/10)
-----------------------------
Excluding the player class and the main program, I have 6 other classes defined in their own files/tabs:

1- Arrow
2- Balloon
3- Enemy
4-Hero
5-Leaderboard
6-Score

Each of these user-defined classes has appropriate fields, constructors, getters, setters. These are highlighted as follows: ( I added getters and setters in pairs, not getters then setters)

1.Arrow  CLASS
  Fields begin line: 4
  OVERLOADED Constructors: 11, 15
  Getters begin line: 21
  Setters begin line: 25
  Bespoke methods begin line: 62

2.Balloon CLASS
  Fields begin line: 7
  Constructors begin line: 16
  Getters begin line: 26
  Setters begin line: 34
  Bespoke methods begin line: 54

3.Enemy CLASS
  Fields begin line: 4
  Constructors begin line: 9
  Getters begin line: 16
  Setters begin line: -
  Bespoke methods begin line: 24

1.Hero  CLASS
  Fields begin line: 5
  Constructors begin line: 12
  Getters begin line: 18
  Setters begin line: 22
  Bespoke methods begin line: 38

2.Leaderboard CLASS
  Fields begin line: 4
  Constructors begin line: -
  Getters begin line: -
  Setters begin line: -
  Bespoke methods begin line: 9

3.Score CLASS
  Fields begin line: 5
  OVERLOADED Constructors: 10, 15
  Getters begin line: 25
  Setters begin line: 21
  Bespoke methods begin line: -


I have documented 6 classes and 2 include overloaded constructors therefore I am scoring 10/10


Part E2 - Mark (9/10)
-----------------------------

Class bespoke methods i.e. private helper methods:

I have private helper methods in 1 classes (Game) and public bespoke methods in my other classes since Game drives my game, most methods are called from game

1. Game Class

line 122 takes in 0 parameters and returns an array of Balloons (spawnBalloons())
line 159 takes in 0 parameters and returns NO value (resetGame())
line 174 takes in 1 parameters and returns NO value (checkCollision())
line 188 takes in 0 parameters and returns 1 boolean (checkEnemyCollision())

2. Balloon Class

line 54 takes in 0 parameters and returns NO VALUE (descend())

3. Leaderboard Class

line 9 takes in 1 parameters and returns NO VALUE (addScore())

4. Enemy Class

Line 33 takes in 0 parameters and returns NO VALUE (resetEnemy())


Private helper methods for 1 class and public helper methods for 3 classes are highlighted showing multiple examples of Methods with no return values, return values, and parameters. I am awarding myself 9/10

Part E3 - Mark (10/10)
-----------------------------

- The user-defined class(es) are USED in an appropriate manner 

multiple declarations of user defined classes are USED:
[Game]line 17, to declare Hero
[Game]line 18, to declare Enemy
[Game]line 20, to declare Player
[Game]line 21, to declare Leaderboard

[Player]line 6, to declare Score



[Game]line 43, to initialise player
[Game]line 44, to initialise Hero
[Game]line 46, to initialise LeaderBoard
[Game]line 47, to initialise Enemy


getters/setters are USED on...
[Game]line 68, (setBalloonsPopped())
[Game]line 69, (setScoreValue())
[Game]line 87, (getFired ())
[Game]line 94, (getPopped())
[Leaderboard]line 28, (getName(), getScore(), getBalloonsPopped())




default constructors USED on lines...
[Arrow]line 11,
[Balloon]line 16,
[Enemy]line 9,
[Hero]line 12,
[Player]line 11,
[Score]line 10,

overloaded constructors USED on lines...
[Arrow]line 15,
[Player]line 15,
[Score]line 15,


I have created, declared and initialised multiple classes, calling getters and setters where appropriate and have overloaded constructors in 3 of these classes, I award myself 10/10. In marking scheme for 10 marks there is mention of examples using arrays, I have covered these below
------------------------
PART F - DATA STRUCTURES
------------------------

Part F1 - Mark (10/10)
-----------------------------
- Use of a data structure to store information i.e. array

<<use [TABName]line y to be specific>>

declared on line...to ...
initialized on line... 
used on line...

Balloon[] array
Declared on [Game]line 15, initialized on line 40 through spawnBalloons() function, reinitialized to reset game on line 161

Arrow[] array
Declared on [Game]line 19, initialized on line 41 in setup(), line 139 creates a new Arrow and adds to array when pressing spacebar

Score[] array
Declared and initialized on [Leaderboard]line 4, line 13 inserts a new score into array if empty place is found, otherwise Score inserted at end of array.

I have covered all criteria in rubric and so am awarding myself 10/10 for Data Structures.



Part F2 - Mark (10-/10)
-----------------------------
- Calculations performed on the information stored


Balloon[] array
[Game]line 91, for each loop to loop through array and descend, display, check collision and increase poppedCounter

Arrow[] array
[Game]line 86, for loop that loops through each arrow if it has been fired (arrowCounter) and only display it if it has been fired

Score[] array
[Leaderboard]line 11, used a loop using .length to loop through each element of the array, then compare the element against null, if null, we update the element at the index. Line 13

I have covered all criteria in rubric and so am awarding myself 10/10 for Calculations, especially in Score[] in Leaderboard, I check with .length, compare and update



TOTAL MARK = I have awarded myself 95 marks


FINAL CHECK:
I have checked the constraints and I am not breaking any constraints.


*/
