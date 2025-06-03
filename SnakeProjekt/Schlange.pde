class Schlange extends Reservoir {
  private Datenstruktur ds=getDs();
  private Grafikschlange gs=new Grafikschlange();
  public void createSnake() {
    for (int i=0; i<ds.getLength(); i++) {
      int[]coord=arrToGraph(ds.getSnakePart(i).getPosArr());
      if (ds.getSnakePart(i).getIsHead()) {
        gs.drawHead(coord);
      } else if (ds.getSnakePart(i).getIsTail()) {
        gs.drawTail(coord);
      } else {
        gs.drawSquare(coord);
      }
      int[]mitte=ds.getSnakePart(i).getTilePos();
      gs.drawCentre(mitte);
      if (i==0) {
        System.out.println("xCoord"+(i+1)+": "+mitte[1]+"  |  yCoord"+(i+1)+": "+mitte[0]);
      }
    }
    //System.out.println("---------------------");
  }
}
