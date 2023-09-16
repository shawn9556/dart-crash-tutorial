// While loops : If the condition is met than the loop executes it otherwise jumps out of it

void main(List<String> args) {
  const names = [
    'John',
    'Paul',
    'George',
    'Ringo',
  ];
  var counter = 0;
  while (counter < names.length) {
    print(names[counter++]);
  }
  print('-------------------');

  // This is Better than the above
  counter = 0;
  while (counter < names.length) {
    print(names[counter]);
    counter++;
  }
  print('-------------------');

  //  Invalid code
  // while (counter++ < names.length) {
  //   print(names[counter]);
  // }
  print('-------------------');

  counter = names.length;
  while (--counter >= 0) {
    print(names[counter]);
  }
  print('-------------------');

  counter = 0;
  do {
    // execute the code before going through the condition : condition is evaluated at the end
    print(names[counter++]);
  } while (counter < names.length);
  print('-------------------');

  counter = 0;
  do {
    print(names[counter++]);
    if (counter == 2) {
      break;
    }
  } while (counter < names.length);
  print('-------------------');

  counter = 0;
  do {
    final name = names[counter++];
    if (name == 'George') {
      continue;
    }
    print(name);
  } while (counter < names.length);
}
