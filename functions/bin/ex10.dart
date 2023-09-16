// Ordering of Named Parameters

void main(List<String> args) {
  describePerson();
  describePerson(age: 13);
  describePerson(name: 'Shawn');
  describePerson(age: 18, name: 'Bob');
  describePerson(name: 'John', age: 20);
}

void describePerson({
  String? name,
  int? age,
}) {
  print('Hello $name, you are $age years old');
}
