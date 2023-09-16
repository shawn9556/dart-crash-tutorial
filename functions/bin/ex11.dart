// Positional Parameters : passing in order, don't have names, always values required, can't have default values

void main(List<String> args) {
  /// these are all invalid
  /// sayGoodByeTo();
  /// sayGoodByeTo('John');
  sayGoodByeTo('John', 'Bob');
}

void sayGoodByeTo(String person, String andOtherPerson) {
  print('Goodbye, $person and $andOtherPerson');
}
