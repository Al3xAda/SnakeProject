class Enterprise{
    //change
  //Eigenschaften eines Objektes vom Typ Enterprise
  float laenge, breite, hoehe;
  int geschwindigkeit, besatzung;
  float xPos =0.0;
  float yPos = 100.0;
  
  public Enterprise() //Erster Konstruktor
  {
  
  }
  
   public Enterprise(int x, int y) //To Do: Zweiter Konstruktor
  {
    xPos = x;
    yPos = y;
  }
  
  //Methoden der Objekte vom Typ Enterprise
  public void bewege(){
    System.out.println("xPosition"+ + xPos); //nur Kontrollausgabe auf der Konsole
    System.out.println("yPosition" + yPos);

    xPos += 0.8;
    if(xPos > width)
      xPos =0;
    zeigeRaumschiff();
  }
  
  public void zeigeRaumschiff(){
    background(0);
    fill(255,255,255);
    stroke(0,0,0);
    ellipse(xPos, yPos, 100, 10);
    rect(xPos+5, yPos-20, 15, 15);
    ellipse(xPos+30, yPos-20, 90, 10);
    rect(xPos-40, yPos-17,15,15);
    ellipse(xPos-50, yPos-15, 70, 5);
  }
  
  public void photonenTorpedosAbfeuern(){
  } 
  
  public void baueSchutzschildAuf(){
    noFill();
    stroke(250,18,0);
    rect(xPos-100, yPos-55, 200, 110);
  }
}
