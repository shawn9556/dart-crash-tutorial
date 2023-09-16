// Sets
import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {
    'John',
    'Jane',
    'Mary',
    'Bob',
  };
  names.add('John');
  print(names);
  print('-------------------------');

  final names2 = [
    'John',
    'Jane',
    'Mary',
    'John',
  ];
  final uniqueNames = {
    ...names2
  }; // removing the duplicates from the list and put it to a set
  print(names2);
  print(uniqueNames);
  print('-------------------------');

  final foo1 = 'Foo';
  var foo2 = 'Foo';
  print(foo1
      .hashCode); // hashCode is a special integer value using which Sets understand
  print(foo2.hashCode);
  print('--------------------------');

  if (names.contains('John')) {
    print('Found John');
  } else {
    print('Did not find John');
  }
  print('--------------------------');

  final ages1 = {20, 30, 40};
  final ages2 = {20, 30, 40};

  if (ages1 == ages2) {
    // this doesn't work as if they are the same value
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
  print('--------------------------');

  // Comparisons
  if (SetEquality().equals(ages1, ages2)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
  print('--------------------------');
  final ages3 = {40, 30, 20};
  if (SetEquality().equals(ages1, ages3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
  print('--------------------------');
}
