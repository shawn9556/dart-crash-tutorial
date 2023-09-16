// Collection Comprehensions

void main(List<String> args) {
  final string = 'abracadabra';
  // var result = '';
  // for (final char in string.split('')) {
  //   if (char == 'a' || char == 'b' || char == 'c') {

  //   }else {
  //     result += char;
  //   }
  // }
  // print(result);

// Set Comprehensions
  var allExceptAbc = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast<String>();
  print(allExceptAbc);
  print('------------------------');

  // List Comprehensions
  final allNumbers = Iterable.generate(100);
  final evenNumbers = [
    for (final number in allNumbers)
      if (number % 2 == 0) number //then produce the number
  ];

  final evenNumbersFunctional = allNumbers.where(
    (number) => number % 2 == 0,
  ); //when you produce functionally you are producing iterables

  final oddNumbers = [
    for (final number in allNumbers)
      if (number % 2 != 0) number
  ];

  final oddNumbersFunctional = allNumbers.where(
    (number) => number % 2 != 0,
  );

  print(evenNumbers);
  print(evenNumbersFunctional);
  print(oddNumbers);
  print(oddNumbersFunctional);
  print('------------------------');

  final names = [
    'John',
    'Jane',
    'Mary',
  ];
  final namesAndLength = {
    for (final name in names) name: name.length,
  };

  print(namesAndLength);
}
