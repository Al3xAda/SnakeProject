class Spielfeld{
   
Wand wand = new Wand("wand");
Koordinatenschlange coordSchl = getCoordSchl();


  Spielfeld() {
    for (int i = 0; i < spfa.length; i++) {
      for (int j = 0; j < spfa[i].length; j++) {
        spfa[i][j] = new Wand("leer"); 
      }
    }
  }

  public void zeichneFeld() {
    for (int i = 0; i < spfa.length; i++) {
      for (int j = 0; j < spfa[i].length; j++) {
        int xabstand = 50 * i + 10;
        int yabstand = 50 * j + 10;
        spfa[i][j].zeichne(xabstand, yabstand);
      }
    }
  }

  public void setzeWand() {
    for (int i = 0; i < spfa.length; i++) {
      spfa[0][i] = new Wand("wand");
      spfa[14][i] = new Wand("wand");
      spfa[i][0] = new Wand("wand");
      spfa[i][14] = new Wand("wand");
    }
  }

  public boolean istApfel(){
    boolean istApfel = true;
    for (int i = 0; i<spfa.length; i++) {
        for ( int j=0; j<spfa.length; j++) {
            if(spfa[i][j] != new Wand("apfel")){
                istApfel = false;
            }
            
        }
        
    }
    return istApfel;
  }

  public void setzeApfel(){
    int randomNumX = (int)(Math.random() * 16); 
    int randomNumY = (int)(Math.random() * 16); 
    int [] a={randomNumY, randomNumX};
    for(int i = 0; i<coordSchl.getLength(); i++){
        if(istApfel() == false && coordSchl.getTileCoord(i) != a){
            spfa[randomNumX][randomNumY] = new Wand("apfel");

        }
    }
  }

 

}
