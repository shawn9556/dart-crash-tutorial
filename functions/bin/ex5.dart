// Named Parameters : Always have to have a value or it should be optionals

void main(List<String> args) {
  sayHelloTo();
  sayHelloTo(name: 'Bob');
  sayHelloTo(
      name:
          null); // you can't put null if the named parameter has a default value
}

void sayHelloTo({String? name}) {
  print('Hello, $name!');
}
