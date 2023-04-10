import 'dart:io';

void main(List<String> args) {
  List<String> subjects = [];
  List<String> students = [];
  const double average = 7.0;
  double gradles = 0;
  int numberOfTestBySubject = 0;

  print("WELCOME Teacher!");
  print("Register your subjects!");

  while (true) {
    print("Type 'exit' to stop, or type course name:");
    String? input = stdin.readLineSync();
    if (input != null && input != 'exit') {
      subjects.add(input);
    } else if (input == 'exit') {
      break;
    } else {
      print("Null value!");
    }
  }

  while (true) {
    print("What is the number of tests per subjects?");
    String? input = stdin.readLineSync();

    if (input != null) {
      numberOfTestBySubject = int.parse(input);
      break;
    } else {
      print("Invalid value!");
    }
  }

  while (true) {
    print("Type 'exit' to stop, or type student name:");
    String? input = stdin.readLineSync();
    if (input != null && input != 'exit') {
      students.add(input);
    } else if (input == 'exit') {
      break;
    } else {
      print("Null value!");
    }
  }

  students.forEach((stu) {
    subjects.forEach((sub) {
      for (int temp = 1; temp <= numberOfTestBySubject; temp++) {
        print("What was the $stu grade in the $temp $sub test:");
        String? input = stdin.readLineSync();
        if (input != null) {
          gradles += double.parse(input);
        }
      }
      gradles = gradles / numberOfTestBySubject;

      if (gradles >= average) {
        print("$stu PASSED the $sub subject with average: $gradles");
      } else {
        print("$stu FAILED the $sub subject with average: $gradles");
      }
      gradles = 0;
    });
  });
}
