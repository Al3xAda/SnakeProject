class Schlange extends Reservoir{
    private Datenstruktur ds=getDs();
    private Grafikschlange gs=new Grafikschlange();
    public void createSnake() {
      for(int i=0; i<ds.getLength(); i++) {
        int[]coord=arrToGraph(ds.getSnakePart(i).getPosArr());
        if(ds.getSnakePart(i).getIsHead()){
        gs.drawHead(coord);
        } else {
         gs.drawSquare(coord);
        }
        //System.out.println("xGraphisch_"+(i+1)+": "+coord[1]+"  |  yGraphisch_"+(i+1)+": "+coord[0]);
      }
    } 
}
