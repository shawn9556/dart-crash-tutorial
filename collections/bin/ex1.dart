// Lists

void main(List<String> args) {
  const names = ['John', 'Jane', 'Mary', 'Bob'];

  for (final name in names) {
    print(name);
  }
  print('-------------------------');

  for (final name in names.reversed) {
    print(name);
  }
  print('-------------------------');

  if (names.contains('John')) {
    print('John is in the List');
  }
  print('-------------------------');

  for (final name in names.where((name) => name.startsWith('B'))) {
    print(name);
  }
  print('-------------------------');

  //Subscript
  print(names.elementAt(0));
  print(names[1]);
  print('-------------------------');

  names.sublist(1).forEach(print);
  print('-------------------------');
  names.sublist(1, 3).forEach(print); //end index is exclusive
  print('-------------------------');

  final ages = [20, 30, 40];
  ages.add(50);
  print(ages);
  print('-------------------------');

  const names1 = ['John', 'Jane', 'Mary', 'Bob'];
  const names2 = ['John', 'Jane', 'Mary', 'Bob'];
  if (names1 == names2) {
    print('names1 and names2 are equal');
  } else {
    print('names1 and names2 are not equal');
  }
  print('-------------------------');

  /// *** Mapping : going through a list converting them to another value of same type or different type ///
  ['John', 'Jane', 'Mary', 'Bob'].map((str) => str.length).forEach(print);
  ['John', 'Jane', 'Mary', 'Bob']
      .map((str) => str.toUpperCase())
      .forEach(print);
  print('-------------------------');

  // Reduce entire list into single value
  final numbers = [
    1,
    2,
    3,
  ];
  var sum = 0;
  for (final number in numbers) {
    sum += number;
  }
  print(sum);
  print('-------------------------');
  final sums = numbers.fold(
    0,
    (int previousValue, int thisValue) => previousValue + thisValue,
  );
  print(sums);
  print('-------------------------');

  final total = names.fold(
    0,
    (totalLength, str) => totalLength + str.length,
  );
  print(total);
  print('-------------------------');

  final result = names.fold(
    "",
    (
      result,
      str,
    ) =>
        '$result ${str.toUpperCase()}',
  );
  print(result);
  print('-------------------------');
}
