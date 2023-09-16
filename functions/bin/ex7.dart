// Non-Optional Named Parameters with Default Values

void main(List<String> args) {
  doSomethingWith();
  doSomethingWith(name: 'Foo');
}

void doSomethingWith({
  String name = 'Bar',
}) {
  print('Hello, $name');
}
