// Switch Enumerations : Default statement

void main(List<String> args) {
  final whiskers = AnimalType.cat;

  switch (whiskers) {
    case AnimalType.cat:
      print('This is a cat');
      break;
    default: // Do I want to add more to the enum is the question you should ask before using default. You don't get a warning.
      print('This is not a cat');
  }
}

enum AnimalType {
  dog,
  cat,
  rabbit,
}
