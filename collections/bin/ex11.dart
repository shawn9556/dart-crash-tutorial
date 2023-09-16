// Synchronous Generators : Creating Iterators inside your own function
void main(List<String> args) {
  for (final name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  print('Producing Bob');
  yield 'Bob';
  print('Producing John');
  yield 'John';
  print('Producing Mary');
  yield 'Mary';
  print('Producing template names');
  yield* templateNames();
}

Iterable<String> templateNames() sync* {
  print('Producing Foo');
  yield 'Foo';
  print('Producing Bar');
  yield 'Bar';
  print('Producing Jane');
  yield 'Jane';
}
