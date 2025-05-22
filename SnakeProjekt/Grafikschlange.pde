class Grafikschlange extends Reservoir{
  
    public void drawSquare(int []pos) {
      fill(0,255,0);
      rect((float)pos[1], (float) pos[0], (float) seiteGraphisch, (float) seiteGraphisch);
    }
    public void drawHead(int []pos) {
      fill(255,255,0);
      rect((float)pos[1], (float) pos[0], (float) seiteGraphisch, (float) seiteGraphisch);
    }
}
