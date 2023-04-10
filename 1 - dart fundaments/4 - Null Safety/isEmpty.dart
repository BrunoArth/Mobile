// Without null safety:
bool isEmpty(String string) => string.length == 0;

main() {
  //isEmpty(null); //the argument type 'Null' can't be assigned to the the parameter ype 'String'
}