void printIntsErro(List<int> a) => print(a);
void printInts(List<int> a) => print(a);
void main() {
  final listError = [];
  listError.add(1);
  listError.add('2');
  //printIntsErro(list);  //the argument type 'List<dynamic>' can't be aassigned to the parameter type 'List<int>'

  final list = <int>[];
  list.add(1);
  list.add(2);
  printInts(list);
}
