# Die Erklärung der Klassen
## Datenstruktur:
    - Die Klasse "Datenstruktur" ist der Kern,  um die Schlange zu bedienen. Sie verwaltet   Objekte der Klasse "Koerperteile"  
     (die einzelnen Bestandteile der Schlange). Mit der "Datenstruktur" (und der darin enthaltenen Operation "getSnakePart()")kann man auf die Attribute von "Koerperteile" (wie Position und Ausrichtung) zugreifen und die Schlange durch das Anhängen 
     neuer Objekte vom Typ "Koerperteile" (mit der Operation "attach()") erweitern. Außerdem wird die Schlange in 
     "Datenstruktur" durch die Operation "move()" bewegt (=die einzelnen Koordinaten der Objekte von "Koerperteile" werden 
     entsprechend geändert).
## Schlange:
    - In der Klasse "Schlange" wird die Logik der Schlange (also grundlegende Attribute wie die Position der einzelnen 
     Körperteile), die in "Datenstruktur" verwaltet wird, visualisert, mit den dazu angelegten Methoden in "Grafikschlange".
## Koordinatenschlange:
    - Die "Koordinatenschlange" ist eine Datenstruktur, die Objekte vom Typ "Koordinatenhalter" verwaltet. In jedem Element der
     "Koordinatenschlange" (d.h. in jedem Objekt von "Koordinatenhalter") lassen sich zwei Arrays speichern: Einerseits die 
     genauen Koordinaten der gezeichneten Schlangenteile und ihre theoretische Position. Mit "theoretische Position" ist 
     gemeint, in welchem der 15*15-Felder sich die Schlangenteile befinden. Mit genauen Koordinaten ist die exakte Position 
     gemeint: Damit sich die Schlange flüssig bewegt wurde nämlich das 15*15-Feld nochmals unterteilt (jedes Feld in 25 
     Unterfelder).
     Zwar sind diese Informationen auch in der "Datenstruktur" (bzw. in den einzelnen Objekten vom Typ "Koordinatenhalter") 
     gespeichert, um aber aufwändige Punktnotationen zu vemeiden, die es benötigt hätte, um in der Klasse "Spielfeld" darauf
     zurückzugreifen, wurden diese Informationen in "Koordinatenschlange" gesondert gespeichert.
## Spielfeld:

## Reservoir:
    - Sehr viele Klassen erben von "Reservoir". In ihr sind zentrale Informatione wie die Unterteilung der Felder und die Anzahl
     an Feldern gespeichert, die für die diversen Berechnungen in den Operationen der einzelnen Klassen von großer Bedeutung sind.
## Main-Klasse:
    - Die Main-Klasse ist das Herzstück des Programms. In ihr werden die Methoden zum Zeichnen und Bewegen der Schlange 
     aufgerufen und ihre Steuerung koordiniert. Außerdem werden die Operationen zum Setzen der Äpfel und zum Zeichnen des Feldes
     aufgerufen. 