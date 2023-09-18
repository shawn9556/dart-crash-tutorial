// Getters
void main(List<String> args) {
  const foo = Person(
    firstName: 'Foo',
    lastName: 'Bar',
  );
  print(foo.fullName);
}

// class Person {
//   final String firstName;
//   final String lastName;
//   final String fullName;

//   const Person({
//     required this.firstName,
//     required this.lastName,
//   }) : fullName = '$firstName $lastName';  // If the calculation for this property(fullName) is heavy calculation then put it in the constructor
// }

class Person {
  final String firstName;
  final String lastName;
  String get fullName => '$firstName $lastName';

  const Person({
    required this.firstName,
    required this.lastName,
  });
}
