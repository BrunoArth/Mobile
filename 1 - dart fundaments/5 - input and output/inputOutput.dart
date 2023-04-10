import 'dart:io'; //input and output

void main(List<String> args) {
  print("Text");
  print(22);
  print(1.75);

  int age = 20;
  print("My age is " + age.toString() + "."); //String concatenation

  print("My age is $age."); //interpolation
  print(
      "My age in the next year will be ${age + 1}"); //operations in interpolation

  stdin.readLineSync();
  print("line read");

  String? input = stdin.readLineSync(); //String? can a receive a null value
  print(input);

  print("How old are you?");
  String? ageRead = stdin.readLineSync();

  if (ageRead != null) {
    //check null necessity
    int ageInt = int.parse(ageRead);
    print("Your age is $ageInt");
    print("Your age in the next year will be ${ageInt + 1}");
  }
}
