// Iterables : Lazily evaluated or generated Lists

void main(List<String> args) {
  final iterable = Iterable.generate(
    20,
    (i) => getName(i),  // this function is not even called until the iterable is used
  );
  // print(iterable); 
  for (final name in iterable.take(2)) {
    print(name);
  }
}

String getName(int i) {
  print('Get name got called');
  return 'John #$i';
}
