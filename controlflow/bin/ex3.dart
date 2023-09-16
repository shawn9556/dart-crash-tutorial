// Modern For Loops

void main(List<String> args) {
  const names = [
    'Foo',
    'Bar',
    'Baz',
    'Qux',
  ];

  // for (var i = 0; i < names.length; i++) {
  //   print(names[i]);
  // }
  print('-------------------');
  for (final name in names) {
    print(name);
  }
  print('-------------------');

  for (final name in names) {
    if (name.startsWith('B')) {
      continue; // continue the loop(= if there is any value but break out of the loop if there isn't any value)
      //and don't go to the next line
    }
    print(name);
  }
  print('-------------------');
  for (final name in names) {
    if (name == 'Baz') {
      break; // it breaks out of the loop and goes straight to line 32
    }
    print(name);
  }
  print('-------------------');

  for (final name in names.reversed) {
    // going backwards
    print(name);
  }
  print('-------------------');

  for (int value in Iterable.generate(20)) {
    print(value);
  }
  print('-------------------');
}
