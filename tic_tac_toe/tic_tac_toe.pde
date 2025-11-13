void setup() {
  size(500, 500);
  board();
}

void draw() {
}
//## ❖ Rules ❖

//1. The size of the canvas *must* be 500×500.
//2. The computer *always* plays an “X”.
//3. The user *always* renders a circle.
//4. The computer *always* starts.
//5. Any content that should be reported to the user *must* be done via Processing’s `println()` method.
//6. Use only the numeric keys 0–8 to choose a square. The number 0 *must* map to the top left corner square, then assign the subsequent numbers across the top and down until you reach the bottom right corner square, which *must* map to the number 8.
//7. When the user presses any key between 0–8 that corresponds to a blank square, your program should fill that square with a circle. This is akin to the user taking a turn at the game.
//8. Immediately after the user plays, the computer takes its turn.
//9. When the user presses any key *other* than 0–8, your program should report a message to the user that they pressed an incorrect key.
//10. After the user takes their turn, and if neither the user nor the computer has won, report to the user that the game is still in play.
//11. If all squares are played and neither the computer nor the user has won, report to the user that no one has won.
//12. When either the user or the computer has won, report this to the user.
//13. Subsequent key presses after a game has ended should report to the user that the game has ended.

//---

//## ❖ File List ❖

//This repo contains the following files, all required to carry out this assignment. Before you start working, ensure you understand the role of each file below.

//1. `tic_tac_toe/tic_tac_toe.pde` — This is the springboard from where your Processing app will run using `setup()` and `draw()`.
//2. `tic_tac_toe/constants.pde` — All global constants *must* go in this file.
//3. `tic_tac_toe/shapes.pde` — All methods you author to draw shapes, such as “O”, “X”, and the tic tac toe board *must* go in this file.
//4. `tic_tac_toe/board.pde` — The logic of your program goes in this file. That is, all methods that will process the logic of your tic tac toe game.
//5. `.editorconfig` — The settings in this version of `.editorconfig` by default indents code by 2 spaces. If you use VS Code instead of Processing to write code for this project, ensure EditorConfig is working *before* beginning this assignment. (The Processing IDE by default also indents by 2 spaces.)
//6. `.gitignore` — *Do not modify any .gitignore files.*
