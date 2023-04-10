void main(List<String> arguments) {
 

  /* Empty list, the following functions return the error - Bad state: No element
  print(arguments.first);
  print(arguments.last);
  print(arguments.single);
  */

  print(arguments);

  assert(arguments.length != 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}
