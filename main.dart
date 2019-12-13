var tribeMember = ['Annina', 'Jana', 'Nadja', 'Isabella', 'Roman', 'Basti', 'Julian', 'Andi', 'Stefan', 'Matthias'];

main() {
  print(findPartners());
}

findPartners() {
  var partners = [];
  for (; tribeMember.length > 1 ;) {
    tribeMember.shuffle();
    partners.add(tribeMember.removeAt(1) + ' 👫 ' + tribeMember.removeAt(0));
  }
  return partners;
}