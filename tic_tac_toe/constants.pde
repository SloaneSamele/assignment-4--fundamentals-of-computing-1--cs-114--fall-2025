// X and Y positions for items
final int CIRCLEX = 150;
final int CIRCLEY = 150;

final int CROSSY1 = 180;
final int CROSSY2 = 120;

final int CROSSX1 = 120;
final int CROSSX2 = 180;

//Game logics
int turns = 0;
boolean computerTurn = true,
        gameWin = false;
IntList positions = new IntList();
int[][] boardPlacement = new int[3][3];
