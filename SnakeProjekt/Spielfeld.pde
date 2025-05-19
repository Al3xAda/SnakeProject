class Spielfeld{
    
Wand wand = new Wand();
Apfel apfel = new Apfel();
int groeße = 15;

Spielfeld=new spf[groeße][groeße];




public void Kasten(){
    rect(0, 1, 20, 20);
    fill(0);
    
}

public void zeichneFeld{
    for(int i=0; i<groeße.length; i++){
        for(int i=0; i<groeße.length; i++){
            groeße[i][j].Kasten();
        }

    }

}

public void setzeWand(){
    for(int x=0; x<=15; x++){
        Wand = new Wand();
    }


}




}
