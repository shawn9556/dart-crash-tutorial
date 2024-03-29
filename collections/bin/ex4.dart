// Maps

void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 20,
  };
  print(info);
  print(info['name']);
  print('-------------------------');

  print(info.keys);
  print(info.values);
  print('--------------------------');

  info.putIfAbsent('height', () => 180);
  print(info);
  print('-------------------------');

  info['height'] =
      190; // this works even though the key is already present like in the above
  print(info);
  print('-------------------------');

  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
  }
  print('-------------------------');

  if (info.containsKey('height')) {
    print('Height is ${info['height']}');
  } else {
    print('Height is not found');
  }
  print('-------------------------');

  print(info['weight']);
  print('-------------------------');

  final mapWithIntKey = {
    10: 20,
    30: 40,
  };
  print(mapWithIntKey);
  print('-------------------------');
}
