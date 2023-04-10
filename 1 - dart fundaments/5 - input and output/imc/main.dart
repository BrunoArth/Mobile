import 'dart:io';

void main(List<String> args) {
  String? input;
  String? name;
  double? height, weight, imc;
  int? age;

  print("Bem vindo!");
  print("Por favor digite o seu nome: ");
  name = stdin.readLineSync();

  print("Olá $name, qual a sua idade?");
  input = stdin.readLineSync();
  if (input != null) {
    age = int.parse(input);
  }

  print("$name agora digite a sua altura: ");
  input = stdin.readLineSync();
  if (input != null) {
    height = double.parse(input);
  }

  print("Certo $name por fim nos diga o seu peso: ");
  input = stdin.readLineSync();
  if (input != null) {
    weight = double.parse(input);
  }

  imc = (weight! / (height! * height));
  imc = double.parse(imc.toStringAsPrecision(2));
  print("$name, sua idade é $age anos e o seu IMC é : $imc");
}
