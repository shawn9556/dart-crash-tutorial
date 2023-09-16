// Unmodifiable Map Views

import 'dart:collection';

void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 20,
    'address': {
      'street': '123 Main St',
      'city': 'New York',
    },
  };
  final info2 = UnmodifiableMapView(info);
  info.addAll(
    {
      'phone': '123-456-7890',
    },
  );
  print(info);
}
