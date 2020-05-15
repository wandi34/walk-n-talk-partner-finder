# Walk n Talk Partner Finder

## Verwendung
Die Anwendung kann als `.exe` oder als `.sh` file in der Konsole gestartet werden. Der aktuelle Stand der Member ist im Code hard codiert. 

## Member anpassen
Die Personen für die Auswahl können auf zwei Wege geändert werden
### Komplette Liste der Member anpassen
Falls kurzfristige Anpassungen notwendig sind kann man eine Liste von Namen bei der Ausführung der Applikation mitgeben, um mit diesen Personen die Partner auszuwählen. Zum Beispiel:
```
./walkntalk-finder.sh Hans, Zabrina, Peter
```
### Einzelne Member hinzufügen/entfernen
Möchte man nur einzelne Personen der Liste hinzufügen oder entfernen kann man dies während des Programms noch machen. Dazu das Programm mit Standardliste starten
```
./walkntalk-finder.sh
```
Anschließend wird man nach den Anpassungen gefragt.

## Build binaries
Das Bauen von ausführbaren Binaries ist folgendermaßen möglich:

*Windows*
```
dart2native walkntalk-finder.dart -o binaries/walkntalk-finder.exe
```

*Mac + Linux*
```
dart2native walkntalk-finder.dart -o binaries/walkntalk-finder.sh
```
