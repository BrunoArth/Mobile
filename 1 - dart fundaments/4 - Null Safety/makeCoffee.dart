// Using null safety:
makeCoffee(String coffee, [String? dairy]) {
  if (dairy != null) {
    print('$coffee with $dairy');
  } else {
    print('Black $coffee');
  }
}

void main(List<String> args) {
  makeCoffee('Coffee');
  makeCoffee('Black Coffee', 'sugar');
}
