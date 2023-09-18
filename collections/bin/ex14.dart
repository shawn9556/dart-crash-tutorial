// The Collection packages

import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('------------------------');
  testCanonicalizedMap();
  print('------------------------');
  testCombinedIterableView();
  print('-----------------------');
  testCombinedListView();
  print('-----------------------');
  testCombinedMapView();
  print('-----------------------');
  testMapMerging();
  print('-----------------------');
}

// BoolList is just like a normal List, however, internally it's optimizing storage so that it doesn't have to store Strings
void testBoolList() {
  final boolList = BoolList(
    10,
    growable: true,
  );
  print(boolList);
  boolList[3] = true;
  if (boolList[3]) {
    print('The boolean value of index 3 is true');
  } else {
    print('The boolean value of index 3 is false');
  }
  print(boolList);
  boolList.length *= 2;
  print(boolList);
}

// Canonicalized Map : Programmer can decide the hasCode and Equality of Map whether two things can coexist or not

void testCanonicalizedMap() {
  final info = {
    'name': 'John',
    'age': 20,
    'sex': 'male',
    'address': 'New York',
  };

  final canonMap = CanonicalizedMap.from(
    info,
    (key) {
      // return key.length;
      return key
          .split('')
          .first; // you can determine the uniqueness of key, not by the hashValue or Equality. Address overwrote Age b/c both start with 'A'
    },
  );
  print(canonMap);
}

// Combined Iterables : combined iterables will understand the changes made in one of the iterables
void testCombinedIterableView() {
  final Iterable<int> one = [1, 2, 3];
  final two = [10, 20, 30];
  final Iterable<int> three = [100, 200, 300];

  var combined = CombinedIterableView([
    one,
    two,
    three,
  ]);
  two.add(40);
  print(combined);
  print(combined.length);
  print(combined.contains(20));
}

// Combined List : Combined List View is a view of a list of lists, and is unmodifiable
void testCombinedListView() {
  final swedishNames = ['Sven', 'Lars', 'Stefan'];
  final norwegianNames = ['John', 'Jane', 'Mary'];
  final frenchNames = ['Paul', 'Jacques', 'Marie'];

  final names = CombinedListView([
    swedishNames,
    norwegianNames,
    frenchNames,
  ]);
  swedishNames.removeAt(0);
  print(names);
  if (names.contains('Sven')) {
    print('Sven is in the List');
  }

  try {
    names.removeAt(
        0); // can't modify the combinedList but you can modify the list inside the combinedList
  } catch (e) {
    print(e);
  }
}

// Combined Map View : Can't Modify the combinedMap but you can modify internal map
void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'b': 4, 'c': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};

  var combinedMap = CombinedMapView([
    map1,
    map2,
    map3,
  ]);
  print(combinedMap);
  print(combinedMap['a']);
  print(combinedMap['b']);
  print(combinedMap['c']);
  print(combinedMap['d']);
  print(combinedMap['e']);
  print(combinedMap['f']);
  map1['Foo'] = 10;
  print(combinedMap);
  try {
    combinedMap['a'] = 10;
  } catch (e) {
    print(e);
  }
}

// Merging Maps
void testMapMerging() {
  const info1 = {
    'name': 'John',
    'age': 20,
    'sex': 'male',
  };

  const info2 = {
    'name': 'Jane',
    'age': 30,
    'sex': 'female',
    'height': 180,
  };

  final merge = mergeMaps(info1,
      info2); // it takes the last map's keys and values because it has duplicate keys
  print(merge);

  final merges = mergeMaps(info1, info2,
      value: (one, two) => one); // you can pick which map you want to use
  print(merges);
}
