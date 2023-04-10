import 'dart:io';

import 'schedule.dart';

void main(List<String> args) {
  Schedule schedule = new Schedule([]);
  while (true) {
    print("-SCHEDULLE-");
    print("1 - ADD CONTACT");
    print("2 - LIST CONTACTS");
    print("3 - DEL CONTACT");
    print("0 - EXIT");

    String? input = stdin.readLineSync();

    if (input != null) {
      int i = int.parse(input);
      if (i == 1) {
        schedule.addContact();
      } else if (i == 2) {
        schedule.listContacts();
      } else if (i == 3) {
        schedule.deleteContact();
      } else if (i == 0) {
        break;
      }
    }
  }
}
