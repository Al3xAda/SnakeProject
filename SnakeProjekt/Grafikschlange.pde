class Grafikschlange{
    Datenstruktur ds = new Datenstruktur();

    void drawSnake(){
        for (int i = 0; i < ds.getLength(); i++){
            fill(0, 255, 0);
            //rect(ds.getX(i), ds.getY(i), 20, 20);
        }
    }
}
