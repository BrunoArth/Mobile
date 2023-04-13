void main(List<String> args) {
  List<String> list = ["Bats", "d", "bot"];
  List<String> sublist = list.sublist(1, 2);
  print(sublist);

  list.forEach((element) {
    print(element);
  });

  print(list.contains("Br"));
  print(list.contains("Bot"));
  print(list.contains("b"));
  print(!list.contains("ba"));

  list.reduce((value, element) {
    return value + " " + element;
  });

  String fullName = list.reduce((value, element) {
    return value + " " + element;
  });

  print(fullName);

  print(list.reduce((value, element) {
    return value + " " + element;
  }));

  Iterable<String> namesIterable = list.where((element) => element.length > 5);
  List<String> namesList = list.where((element) => element.length > 5).toList();
  print(namesIterable);
  print(namesList);

  String nameListFirst = list.firstWhere((element) => element.length > 2);
  String nameListLast = list.lastWhere((element) => element.length > 2);
  print(nameListFirst);
  print(nameListLast);
}
