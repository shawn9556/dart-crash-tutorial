// Mixins and Function Parameters

void main(List<String> args) {
  final person = Person(
    firstName: 'John',
    lastName: 'Doe',
  );
  print(person.fullName);
  print(getFullName(person));
}

String getFullName(HasFullName obj) =>
    obj.fullName; // how to get mixin as a datatype into a function call

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firstName;

  @override
  final String lastName;

  Person({
    required this.firstName,
    required this.lastName,
  });
}
