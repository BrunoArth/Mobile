// Hypothetical unsound null safety:
bad(String? maybeString) {
  if (maybeString != null) {
    print(maybeString.length);
  } else {
    print("Null");
  }

  // print(maybeString.length); //error, lenght in type null, necessity conditional
}

main() {
  bad(null);
  bad("maybeString");
}
