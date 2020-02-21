var tribeMember = ['Annina', 'Jana', 'Nadja', 'Isabella', 'Roman', 'Basti', 'Julian', 'Andi', 'Stefan', 'Matthias', 'Gunnar'];

main(List<String> arguments) {
  if (arguments.length > 0) {
    tribeMember = [];
    arguments.forEach((x) => tribeMember.add(x.replaceAll(",", "")));
  }
  findPartners();
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