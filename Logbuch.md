# Snake-Projekt von Mounib, Alexander und Dibya
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
   - Mounib: Das Klassendiagramm von Main, Spielfeld Wand und Apfel wurden erstellt mit einer groben Planung der Methoden und Attribute. Die Beziehung 
   unter den einzelnen Klassen wurde ermittelt und bestimmt. 
   - Dibya: Klasse Koerperteile geschafft. Klasse Datenstruktur nicht vollendet, da die Methode "move" aufwändiger ist, als gedacht
## Mittwoch 14.Mai:
### Zielsetzung:
   - Mounib: Attribute und Methoden wurden im Programm eingetragen, um uns eine grobe Übersicht zu verschaffen. Einfache Methoden wie setter und getter Methoden für die Klassen Wand und Apfel wurden erfolgreich geschrieben. Klassendiagramm wurde auf Fehler oder nutzlose Attribute bzw. Methoden geprüft und entsprechend verändert.
   Objekte wurden erstellt, um die Beziehung zwischen den einzelnen Klassen herzustellen und um dann mit der Punktnotation zu arbeiten. 
   Angefangen mit der Methode setzeWand()
   - Dibya: Methoden "move", "createCoordniates" und "getLength" programmieren. Bei der Methode "attach" einbinden, dass direkt ein neues Objekt an das letzte Element angehangen wird.
### Tatsächlich erreicht:
   - Mounib: Attribute und Methoden wurden im Programm eingetragen, um uns eine grobe Übersicht zu verschaffen. Einfache Methoden wie setter und getter Methoden für die Klassen Wand und Apfel wurden erfolgreich geschrieben. Klassendiagramm wurde auf Fehler oder nutzlose Attribute bzw. Methoden geprüft und entsprechend verändert.
   Objekte wurden erstellt, um die Beziehung zwischen den einzelnen Klassen herzustellen und um dann mit der Punktnotation zu arbeiten. 
   Angefangen mit der Methode setzeWand()
   - Dibya: Methode "move" implementiert, aber nicht überprüft. Methode "attach" angefangen zu korrigieren
## Montag 19.Mai:
### Zielsetzung:
   - Mounib: Hraphisches Feld zeichnen und Funktion implementieren, die Array-Koordinaten in Pixel-Koordinaten umrechnet
   - Dibya: "attach" in "move" einbinden und "createCoordinates" (ein Verzeichnis, das aus den Koordinaten der einzelnen "Schlangenteile" besteht; Koordinaten werden in zweistelligen Arrays gespeichert) implementieren
### Tatsächlich erreicht:
   - Mounib: Hraphisches Feld zeichnen und Funktion implementieren, die Array-Koordinaten in Pixel-Koordinaten umrechnet
   - Dibya: "attach" in "move" eingebunden; neue Datenstruktur angefangen zu implementieren, um "createCoordinates" zu realisieren
## Donnerstag 22.Mai:
### Zielsetzung:
   - Mounib: Spielfeld wurde erstellt; Syntax Fehler wurden behoben
   - Dibya: Syntaxfehler beseitigen; "createCoordinates" implementieren; "move" und "createCoordinates" testen 
### Tatsächlich erreicht:
   - Mounib: Spielfeld wurde erstellt; Syntax Fehler wurden behoben.
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
   - Mounib: Mit der Methode setzeApfel() angefangen, Bedingungen für den Apfelspawn aufsetzen
   - Dibya: Steuerung der Schlange umsetzen
### Tatsächlich erreicht:
   - den groben Aufbau der Methode fertiggestellt ; Logische Probleme gelöst; Weitere Probleme sind noch offen;
   - Dibya: Steuerungsansatz implementiert, der fehlerhaft ist; die Tasteninputs werden zu spät, wenn überhaupt, übernommen
## Mittwoch 28.Mai:
### Zielsetzung:
   - Mounib: Für Dibya die Methode ApfelinSchlange() geschrieben; Mit der Methode CrashmitWand() angefangen; Die Methode apfelEssen() fertiggestellt;
   - Dibya: Steuerung implementieren
### Tatsächlich erreicht:
   - Dibya: Steuerung (fehlerfrei) implementiert; Fehler entdeckt: drehen um 180 Grad über drei Felder funktioniert nicht und das Hinzufügen von Schlangenteilen (wenn ein Apfel "gegessen wird") funktioniert nicht, diese Fehler behoben
## Freitag 30.Mai:
### Zielsetzung:
   - Dibya: das bisherige Programm testen; Verdacht darauf, dass die "Koordinatenschlange" nicht funktioniert, da die Äpfel teilweise in die Schlange gesetzt werden; dem Verdacht nachgehen
### Tatsächlich erreicht:
   - Dibya: der Verdacht hat sich bestätigt; wenn die Schlange einen Knick hat (also an den Stellen, an denen sie sich dreht), dann wird das in der Koordinatenschlange als nicht durch die Schlange besetzte Position vermerkt
## Sonntag 1.Juni:
### Zielsetzung:
   - Dibya: den Fehler beheben
### Tatsächlich erreicht:
   - Dibya: einen Ansatz entwickelt, der in der Praxis nicht funktioniert; Ansatz/Ueberlegungen: in der Koordinatenschlange werden die Koordinaten der oberen linken Ecke des Spielfeldes gezeichnet, weshalb bei Knicken in der Schlange diese Felder dann als Frei gelten, weil die Körperteile vor und nach dem Knick so liegen, dass ein Feld als unbesetzt gilt; die Idee: statt der Koordinaten der oberen linken Ecke die Koordinaten der Mitte benutzen, um das Problem zu loesen
## Dienstag 3.Juni:
### Zielsetzung:
   - Dibya: den Ansatz korrekt implementieren
### Tatsächlich erreicht:
   - Dibya: Ansatz korrekt implementiert; Der Fehler (falsche Berechnung der Koordinaten des Mittelpunktes des Feldes) ist behoben.
## Dienstag 3.Juni (Abend):
### Problem:
   - Dibya: Nachdem ich den oben genannten Fehler behoben habe, ist mir ein weiterer Fehler aufgefallen: Wenn die Schlange aus zwei Elementen besteht (also am ganz Anfang) und sich einem Apfel von oben, unten oder rechts nähert und sich direkt nach dem Essen des Apfels (und dem daraus folgendem Verlängern) dreht, dann löst sich das Ende der Schlange vom restlichen Körper.
### Ursache:
   - Dibya: In dem oben dargestellten Fall wird das neue Schlangenteil am falschen Ort angehangen. Nur wenn die Schlange von links kommt, ist der "Anhängeort" richtig.
### Lösung:
   - Dibya: Die Variablen adjustX und adjustY werden unabhängig von bedingung() aktualisiert.
## Donnerstag 5.Juni:
### Zielsetzung:
   - Dibya: In der Klasse "Grafikschlange" eine Methode zum Hinzufügen von Elementen und zum entfernen aller Elemente einfügen, damit Mounib die Logik zum Einfügen von Äpfel so ändern kann, dass erst alle "freien" Felder gespeichert werden (in einem Objekt von "Grafikschlange") und davon dann ein freies Fel zufällig ausgesucht wird
### Tatsächlich erreicht:
   - Dibya: Alles, aber noch nicht getestet (das macht Mounib)
## Sonntag 8.Juni:
### Zielsetzung
   - Dibya: Laufzeitkomplexität des Programms verbessern, indem ich unnötige/doppelte Schleifendurchgänge (das "durchloopen" der Schlange) reduziere
### Tatsächlich erreicht:
   - Dibya: Ziel erreicht; dabei sehr viele Bugs (vor allem Null-Pointer-Exceptions) beseitigt und die Logik, wie Äpfel in das Spielfeld eingesetzt werden geringfügig optimiert (vgl. Commits); außerdem die Methoden von Mounib zum Beenden des Spiels bei Game-Over-Situationen (die Schlange stößt gegen die Wand oder gegen sich selbst) in das Spiel integriert und eine Methode zur Erkennung, ob jemand das Spiel gewonnen hat erstellt und ebenfalls integriert; zuletzt die Benutzterfreundlichkeit verbessert, da man nun das Spiel mit der "x"-Taste schließen und mit der "r"-Taste neustarten kann

## Montag 9. Juni:
### Zielsetzung
   - Alexander: Methode drawHead() erweitern, um das Anzeigen von Augen zu ermöglichen, die sich dank arithmetischen Operationen nach Bewegungsrichtung der Schlange ausrichten.
### Tatsächlich erreicht:
   
