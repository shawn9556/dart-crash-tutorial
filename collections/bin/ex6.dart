// Mapping Lists to Iterables

void main(List<String> args) {
  const names = ['John', 'Jane', 'Mary', 'Bob'];
  final upperCaseName = names.map((name) {
    print('upperCaseName is called');
    return name
        .toUpperCase(); // it is trying not to waste any resources on doing something
  });

  for (final name in upperCaseName.take(3)) {
    print(name);
  }
}
