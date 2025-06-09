class Grafikschlange extends Reservoir{
  
  float halbeSeite = ((float) seiteGraphisch) / 2;

  public void drawSquare(int []pos) {
    fill(0,255,0);
    rect((float)pos[1], (float) pos[0], (float) seiteGraphisch, (float) seiteGraphisch);
  }
  public void drawTail(int []pos) {
    fill(0,255,255);
    rect((float)pos[1], (float) pos[0], (float) seiteGraphisch, (float) seiteGraphisch);
  }
  public void drawHead(int []pos) {
    fill(255,255,0);
    rect((float)pos[1], (float) pos[0], (float) seiteGraphisch, (float) seiteGraphisch);
    
    // draw Eyes (bugged)
    /*
    println(ds.getSnakePart(0, false).getDirection() + 45);
    float xPos1 = ((float)pos[1]) + halbeSeite + (halbeSeite * sin(((float)ds.getSnakePart(0, false).getDirection() ) + 45) );
    float yPos1 = ((float)pos[0]) + halbeSeite - (halbeSeite * cos(((float) ds.getSnakePart(0, false).getDirection() ) + 45) );
    float xPos2 = ((float)pos[1]) + halbeSeite - (halbeSeite * sin(((float)ds.getSnakePart(0, false).getDirection() ) + 45) );
    float yPos2 = ((float)pos[0]) + halbeSeite + (halbeSeite * cos(((float) ds.getSnakePart(0, false).getDirection() ) + 45) );
    println("x-Pos:", pos[1] , "Eye 1 at x = ", xPos1);
    println("y-Pos:", pos[0] , "Eye 1 at y = ", yPos1);
    fill(230,20,50);
    circle(xPos1, yPos1, 10);
    circle(xPos2, yPos2, 10);
    fill(50,40,30);
    circle(xPos1, yPos1, 4);
    circle(xPos2, yPos2, 4);
    */
  }
}
