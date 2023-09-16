// Avoiding a Common Pitfall with Late Variables

void main(List<String> args) {
  final person = Person();
  try {
    /// avoid doing this in real code since it's against the recommendations
    /// Instead use nullable values
    print(person
        .fullName); // this brings back an error b/c fullName depends on the firstName and lastName; however both has not been assigned a value
  } catch (error) {
    print(error);
  }
  person.firstName = 'Foo';
  person.lastName = 'Bar';
  print(person.fullName);
}

class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
}
