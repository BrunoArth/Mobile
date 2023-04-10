Map<String, dynamic> argumentsExplicitly = {'argA': 'hello', 'argB': 42};

var argumentsAlternative = {'argA': 'hello', 'argB': 42}; // Map<String, Object>

void main(List<String> args) {
  var x = 3; // x is inferred as an int.
  // x = 4.0; // error

  num y = 3; // A num can be double or int.
  y = 4.0;

  print(x);
  print(y);

  // Inferred as if you wrote <int>[].
  List<int> listOfInt = [1];

// Inferred as if you wrote <double>[3.0].
  var listOfDouble = [3.0, 4.1, 5.9, 5.5, 5.999999];

// Inferred as Iterable<int>.
  var ints = listOfDouble.map((x) => x.toInt());

  print(listOfInt);
  print(listOfDouble);
  print(ints);
}
