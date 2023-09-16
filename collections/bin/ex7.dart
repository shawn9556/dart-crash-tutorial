// Unmodified List Views : When you want to make read only list views

import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = ['John', 'Jane', 'Mary', 'Bob'];
  names.add('Jack');

  final readOnlyList = UnmodifiableListView(names);
  print(readOnlyList);
  // readOnlyList.add('Jill'); // throws an error because the list is read only(unmodifiable)
}
