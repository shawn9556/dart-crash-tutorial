// For loop over Map
void main(List<String> args) {
  const info = {
    'name': 'Foo',
    'age': 30,
    'height': 1.8,
    'isMarried': false,
    'address': {
      'street': 'Main Street',
      'city': 'New York',
      'country': 'USA',
    },
  };

  // In order to access all the keys and values of Map we use the .entries
  for (final entry in info.entries) {
    print('${entry.key}: ${entry.value}');
  }
}
