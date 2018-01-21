import mazeGenerator.*;

Maze maze;

public void settings(){
  size(800,800);
}

public void setup() {
  //change the algorithm here to make different styles of mazes (= new RecursiveBacktracker(); or = new Kruskal();)
  MazeCreator creator = new HuntAndKill();
  
  //change the size of the maze here (new Maze (int height, int width, this, creator, int cellSize);)
  maze = new Maze(20,20,this,creator,20);
  
  //define the starting cell here by its position in the grid
  Cell startingCell = maze.getCell(0,0);
  
  //define the endCell here by its position in the grid
  Cell endCell = maze.getCell(19,19);
  maze.getMazeCreator().createMaze(startingCell,endCell);
}

public void draw(){
  //use the default drawing
 maze.draw();
 //or customize the maze by drawing all solid walls
}