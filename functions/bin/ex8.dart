// Required Named Parameters : Call site always need a parameter value

void main(List<String> args) {
  // doSomethingWith();  // invalid code
  doSomethingWith(name: 'Bob');
  // doSomethingWith(name: null); //  invalid code
}

void doSomethingWith({
  required String name,
}) {
  print('Hello, $name');
}
