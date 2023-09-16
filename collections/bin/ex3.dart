// Hash Code and Equality

void main(List<String> args) {
  final person1 = Person(
    name: 'John',
    age: 20,
  );
  final person2 = Person(
    name: 'John',
    age: 20,
  );

  print(person1.hashCode);
  print(person2.hashCode);

  final person = {person1, person2};
  print(person);

print('-------------------------');

  final dog = Dog (
    name: 'John',
    age: 20,
  );

  print(person1.hashCode);
  print(dog.hashCode);
  final beings = {person1, person2, dog};
  print(beings);
  print('Although the hashes are the same, they are different objects so they are not equal');
}

class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      ); // implement(generate) hashCode

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          name == other.name &&
          age ==
              other
                  .age; // this Equality makes person1 and person2 identical so the Set only prints out one
}

class Dog {
  final String name;
  final int age;
  Dog({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Dog: $name, $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog && name == other.name && age == other.age;
}
