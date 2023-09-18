// Mixins and Reflection
import 'dart:mirrors';

void main(List<String> args) {
  final person = Person(name: 'John', age: 30);
  print(person);
  final house = House(address: 'NewYork', rooms: 3);
  print(house);
}

mixin HasDescription {
  // Mixin bringing functionality with it, so that the class that implements(implementing types) it don't have to do anything. The implementing types don't expect anything from the mixin.(compare with ex1, ex2 ..)
  @override
  String toString() {
    final reflection = reflect(this);
    final thisType = MirrorSystem.getName(reflection.type.simpleName);
    final variables = reflection.type.declarations.values.whereType<
        VariableMirror>(); // This will bring all the variables that are available on the type on which were implemented on

    final properties = <String, dynamic>{
      for (final field in variables)
        field.asKey: reflection
            .getField(
              field.simpleName,
            )
            .reflectee, // giving us the value of the field
    }.toString();
    return '$thisType = $properties';
  }
}

extension AsKey on VariableMirror {
  //VariableMirror is a variable. It has a name and data type
  String get asKey {
    final fieldName = MirrorSystem.getName(simpleName);
    final fieldType = MirrorSystem.getName(type.simpleName);
    return '$fieldName ($fieldType)';
  }
}

class Person with HasDescription {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });
}

class House with HasDescription {
  final String address;
  final int rooms;
  House({
    required this.address,
    required this.rooms,
  });
}
