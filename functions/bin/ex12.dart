// Optional Positional Values: using [] in the parameter

void main(List<String> args) {
  makeUpperCase();
  makeUpperCase('Foo');
  makeUpperCase(null);
  makeUpperCase('Foo', 'Boo');
  makeUpperCase(null, 'Boo');
  // makeUpperCase('Foo', null); //invalid
}

void makeUpperCase([
  String? name,
  String lastName = 'Bar',
]) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
}
