import 'animal.dart';

class Cat extends Animal {}

class Dog extends Animal {}

void main() {
  //List<Cat> foo = <dynamic>[Dog()]; // Error
  List<dynamic> bar = <dynamic>[Dog(), Cat()]; // OK
  print(bar);
}
