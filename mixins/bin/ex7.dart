// Mixins with Equality implementation
import 'package:uuid/uuid.dart';

void main(List<String> args) {
  final uuid1 = const Uuid().v4();
  final uuid2 = const Uuid().v4();

  final person1 = Person(
    id: uuid1,
    name: 'John',
    age: 30,
  );

  final person1Again = Person(
    id: uuid1,
    name: 'john',
    age: 30,
  );

  final person2 = Person(
    id: uuid2,
    name: 'John',
    age: 30,
  );

  if (person1 == person2) {
    print('Person1 and Person2 are equal');
  } else {
    print('Person1 and Person2 are not equal');
  }

  if (person1 == person1Again) {
    print('Person1 and Person1Again are equal');
  } else {
    print('Person1 and Person1Again are not equal');
  }
}

mixin HasIdentifier {
  String get id;

  @override // Equality
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with HasIdentifier {
  @override
  final String id;

  final String name;
  final int age;

  Person({
    required this.id,
    required this.name,
    required this.age,
  });
}
