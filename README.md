# Snake-Projekt von Mounib, ALexander und Dibya
## Donnerstag 8.Mai:
* Erstellung eines Klassendiagramms
* Einrichtung von GitHub und VSCode
* Aufgabenverteilung (nach Klassen): 
   - Mounib: Spielfeld, Main, Wand und Apfel
   - Dibya: Schlange, Datenstruktur und Koerperteile
   - Alex: Grafikschlange   
## Montag 12.Mai:
### Zielsetzung:
   - Mounib: Das Klassendiagramm von Main, Spielfeld Wand und Apfel wurden erstellt mit einer groben Planung der Methoden und Attribute. Die Beziehung 
   unter den einzelnen Klassen wurde ermittelt und bestimmt. 
   - Dibya: Klassen Koerperteile, Datenstruktur, Schlange umsetzen, wie im Klassendiagramm (Stand: 8.Mai) vorgesehen, ggf. primitive Umsetzung von GrafikSchlange um Datenstruktur zu testen.
### Tatsächlich erreicht:
   - Dibya: Klasse Koerperteile geschafft. Klasse Datenstruktur nicht vollendet, da die Methode "move" aufwändiger ist, als gedacht
## Mittwoch 14.Mai:
### Zielsetzung:
   - Mounib: Attribute und Methoden wurden im Programm eingetragen, um uns eine grobe Übersicht zu verschaffen. Einfache Methoden wie setter und getter Methoden für die Klassen Wand und Apfel wurden erfolgreich geschrieben. Klassendiagramm wurde auf Fehler oder nutzlose Attribute bzw. Methoden geprüft und entsprechend verändert.
   Objekte wurden erstellt, um die Beziehung zwischen den einzelnen Klassen herzustellen und um dann mit der Punktnotation zu arbeiten. 
   Angefangen mit der Methode setzeWand()
   - Dibya: Methoden "move", "createCoordniates" und "getLength" programmieren. Bei der Methode "attach" einbinden, dass direkt ein neues Objekt an das letzte Element angehangen wird.
### Tatsächlich erreicht:
   - Dibya: Methode "move" implementiert, aber nicht überprüft. Methode "attach" angefangen zu korrigieren
## Montag 19.Mai:
### Zielsetzung:
   - Mounib: Hraphisches Feld zeichnen und Funktion implementieren, die Array-Koordinaten in Pixel-Koordinaten umrechnet
   - Dibya: "attach" in "move" einbinden und "createCoordinates" (ein Verzeichnis, das aus den Koordinaten der einzelnen "Schlangenteile" besteht; Koordinaten werden in zweistelligen Arrays gespeichert) implementieren
### Tatsächlich erreicht:
   - Dibya: "attach" in "move" eingebunden; neue Datenstruktur angefangen zu implementieren, um "createCoordinates" zu realisieren
## Donnerstag 22.Mai:
### Zielsetzung:
   - Dibya: Syntaxfehler beseitigen; "createCoordinates" implementieren; "move" und "createCoordinates" testen 
### Tatsächlich erreicht:
   - Dibya: Grundsätzlich die Darstellung der Schlange getestet; "move" habe ich angepasst, indem ich in "Koerperteile" einen Pointer hinzugefügt habe, der auf das vorherige Objekt zeigt; das hinzufügen von Körperteilen funktioniert nicht
## Freitag 23.Mai:
### Zielsetzung:
   - Dibya: das Hinzufügen von Körperteilen umsetzen
### Tatsächlich erreicht:
   - Dibya: Körperteile können hinzugefügt werden; die Schlange kann sich über 2 Felder um 180 Grad drehen, wobei es diesbezüglich noch einen Fehler gibt
## Samstag 24.Mai:
### Zielsetzung:
   - Dibya: den vorherig genannten Fehler beseitigen
### Tatsächlich erreicht:
   - Dibya: nun kann sich die Schlange fehlerfrei über zwei Felder um 180 Grad drehen; das Hinzufügen von Körperteilen während der Drehung funktioniert einwandfrei
## Montag 26.Mai:
### Zielsetzung:
   - Dibya: Steuerung der Schlange umsetzen
### Tatsächlich erreicht:
   - Dibya: Steuerungsansatz implementiert, der fehlerhaft ist; die Tasteninputs werden zu spät, wenn überhaupt, übernommen