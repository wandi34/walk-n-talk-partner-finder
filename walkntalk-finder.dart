import 'dart:convert';
import 'dart:io';

var tribeMember = ['Annina','Jana','Nadja','Isabella','Roman','Basti','Julian','Andi','Stefan','Matthias','Gunnar'];

main(List<String> arguments) {
  tribeMember = checkForListReplace(arguments, tribeMember);
  print("Die derzeitige Liste für Walk n Talk ist: $tribeMember \n");
  tribeMember = checkForMemberDelete(tribeMember);
  tribeMember = checkForMemberAdd(tribeMember);
  findPartners();
}

List<String> checkForListReplace(List<String> arguments, List<String> currentList) {
  if (arguments.length > 0) {
    currentList = [];
    arguments.forEach((x) => currentList.add(x.replaceAll(",", "")));
  }
  return currentList;
}

List<String> checkForMemberDelete(List<String> currentList) {
  print("Sollen Mitglieder entfernt werden? Schreibe die Namen mit Kommas getrennt auf:");
  var toDeleteStr = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  if (toDeleteStr.trim().isEmpty) {
    return currentList;
  }
  List<String> toDelete = toDeleteStr.replaceAll(" ", "").split(",");
  toDelete.forEach((x) => currentList.remove(x));
  print("Neue Liste: $currentList \n");
  return currentList;
}

List<String> checkForMemberAdd(List<String> currentList) {
  print("Sollen Mitglieder hinzugefügt werden? Schreibe die Namen mit Kommas getrennt auf:");
  var toAddStr = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  if (toAddStr.trim().isEmpty) {
    return currentList;
  }
  List<String> toAdd = toAddStr.replaceAll(" ", "").split(",");
  toAdd.forEach((x) => currentList.add(x));
  print("Neue Liste: $currentList \n");
  return currentList;
}

findPartners() {
  var partners = [];
  for (; tribeMember.length > 1 ;) {
    tribeMember.shuffle();
    partners.add(tribeMember.removeAt(1) + ' 👫  ' + tribeMember.removeAt(0));
  }
  print(partners);
  if (tribeMember.length == 1) {
    print(tribeMember[0] + " hat leider keinen Partner 🥺");
  }
}