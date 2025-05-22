class Grafikschlange{
    //Datenstruktur ds = new Datenstruktur();

    void drawSnake(){
        for(int i=0; i<ds.getLength(); i++){
            part = ds.getSnakePart(i);
            if(part.getIsHead()){
                fill( 227, 230, 27 );
                circle(getPosArr()[0], getPosArr()[1], 20);    
            }
            else if(part.getIsTail()){
                fill( 255, 0, 0 );
                rect(getPosArr()[0], getPosArr()[1], 20, 20);
            }
            else{
                fill( 95, 230, 27 );
                rect(getPosArr()[0], getPosArr()[1], 20, 20);
            }
        }   
    }
}
