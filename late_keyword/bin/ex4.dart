// Late Variable Dependency

void main(List<String> args) {
  final person = Person();
  print(person.fullName);
  print(person.firstName);
  print(person.lastName);
}

class Person {
  late String fullName =
      _getFullName(); // this is only called at the first time
  late String firstName = fullName.split(' ').first; // Need late because they are dependent to each other
  late String lastName = fullName.split(' ').last;

  String _getFullName() {
    print('_getFullName() is called');
    return 'Foo Bar';
  }
}
