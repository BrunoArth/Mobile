import 'dart:io';

import 'contact.dart';

class Schedule {
  List<Contact> contacts;

  Schedule(this.contacts) {}

  addContact() {
    print("-ADD CONTACT-");
    print("Name: ");
    String? name = stdin.readLineSync();
    List<dynamic> phones = addPhone();
    print("Home Address:");
    String? homeAddress = stdin.readLineSync();
    print("Business Address:");
    String? businessAddress = stdin.readLineSync();
    this.contacts.add(new Contact(name, phones, homeAddress, businessAddress));
  }

  addPhone() {
    int cont = 1;
    List<dynamic> phones = [];
    print("Type exit to stop");
    while (true) {
      print("Phone $cont:");
      String? phone = stdin.readLineSync();
      if (phone == 'exit') {
        break;
      }
      phones.add(phone);
      cont++;
    }
    return phones;
  }

  listContacts() {
    int id = 0;
    print("LIST");
    contacts.forEach((element) {
      id++;
      String name = element.name.toString();
      List<dynamic> phones = element.phones;
      String homeAddress = element.homeAddress.toString();
      String businessAddress = element.businessAddress.toString();

      print("--------------------------------------");
      print("ID              : $id");
      print("NAME            : $name");
      print("Phones          :");
      phones.forEach((element) {
        print("--------------  $element");
      });
      print("HOME ADDRESS    : $homeAddress");
      print("BUSINESS ADDRESS: $businessAddress");
      print("--------------------------------------");
    });
  }

  simpleListContacts() {
    int id = 0;
    contacts.forEach((element) {
      id++;
      String name = element.name.toString();
      print("ID - $id | NAME - $name");
    });
  }

  deleteContact() {
    print("DELETE");
    simpleListContacts();
    print("type id for delete contact: ");
    String? input = stdin.readLineSync();
    if (input != null) {
      int i = int.parse(input);
      this.contacts.remove(i - 1);
    }
    simpleListContacts();
  }
}
