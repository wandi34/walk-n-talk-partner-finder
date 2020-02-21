# Walk n Talk Partner Finder

## Basic Usage
Die Anwendung kann als `.exe` oder als `.sh` file in der Konsole gestartet werden. Der aktuelle Stand der Member ist im Code hard codiert. 

## Custom Usage
Falls kurzfristige Anpassungen notwendig sind kann man eine Liste von Namen bei der Ausführung der Applikation mitgeben, um mit diesen Personen die Partner auszuwählen. Zum Beispiel:
```
./main.sh Hans, Zabrina, Peter
```

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
