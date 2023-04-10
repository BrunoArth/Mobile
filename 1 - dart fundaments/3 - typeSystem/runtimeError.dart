import 'animal.dart';
import 'dynamicListTypedList.dart';

void main() {
  List<Animal> animals = [Dog()];
  List<Cat> cats = animals as List<Cat>;

  print(animals);
  print(cats);
  //error: type 'List<Animal>' is not a subtype of type 'List<Cat>' in type cast
}
