class Schlange extends Reservoir {
  private Datenstruktur ds=getDs();
  private Grafikschlange gs=new Grafikschlange();
  public void createSnake() {
    for (int i=0; i<ds.getLength(); i++) {
      int[]coord=arrToGraph(ds.getSnakePart(i,i!=0).getPosArr());
      if (ds.getSnakePart(i,i!=0).getIsHead()) {
        gs.drawHead(coord);
      } else if (ds.getSnakePart(i,i!=0).getIsTail()) {
        gs.drawTail(coord);
      } else {
        gs.drawSquare(coord);
      }
    }
  }
}
