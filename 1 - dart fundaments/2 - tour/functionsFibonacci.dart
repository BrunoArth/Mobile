void main(List<String> args) {
  int fibonacci(int n) {
    if (n == 0 || n == 1) {
      return n;
    }
    print(n);
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  print(fibonacci(10));
}
