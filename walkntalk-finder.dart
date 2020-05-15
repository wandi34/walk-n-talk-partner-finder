import 'dart:convert';
import 'dart:io';
var tribeMember = ['Annina','Jana','Nadja','Isabella','Roman','Basti','Julian','Andi','Stefan','Matthias','Gunnar'];

main(List<String> arguments) {
  if (arguments.length > 0) {
    tribeMember = [];
    arguments.forEach((x) => tribeMember.add(x.replaceAll(",", "")));
  }
  print("Die derzeitige Liste für Walk n Talk ist: $tribeMember \n");
  checkForMemberDelete();
  checkForMemberAdd();
  findPartners();
}

List<String> checkForMemberDelete() {
  print("Sollen Mitglieder entfernt werden? Schreibe die Namen mit Kommas getrennt auf:");
  var toDeleteStr = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  List<String> toDelete = toDeleteStr.replaceAll(" ", "").split(",");
  toDelete.forEach((x) => tribeMember.remove(x));
  print("Neue Liste: $tribeMember \n");
  return tribeMember;
}

List<String> checkForMemberAdd() {
  print("Sollen Mitglieder hinzugefügt werden? Schreibe die Namen mit Kommas getrennt auf:");
  var toAddStr = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  List<String> toAdd = toAddStr.replaceAll(" ", "").split(",");
  toAdd.forEach((x) => tribeMember.add(x));
  print("Neue Liste: $tribeMember \n");
  return tribeMember;
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