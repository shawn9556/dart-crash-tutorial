// Lazy initialization to a Function Result

void main(List<String> args) {
  print('Before');
  late String name = provideName(); // Although it is being assigned, it will not be called until you use that variable
  print('After');
  print(name);
}

String provideName() {
  print('Function is called');
  return 'Foo bar';
}
