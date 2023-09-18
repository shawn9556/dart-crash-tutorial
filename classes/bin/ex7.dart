// Static Properties and Static Methods : You can't be changed by the instance of class in Static properties(Person().name; will not be executed)

void main(List<String> args) {
  Person.name = 'Foo';
  print(Person.name);
  Person.name = 'Baz';
  print(Person.name);
  print('------------------');

  print(Car.carInstantiated);
  Car(name: 'My Car');
  print(Car.carInstantiated);
  Car(name: 'Your Car');
  print(Car.carInstantiated);
}

class Person {
  static String name = '';
}

// not recommended to write the code like the following: It is to demonstrate how static works
class Car {
  static int _carInstantiated = 0; // this is not gonna be per instance

  static int get carInstantiated => _carInstantiated;
  static void _incrementCarsInstantiated() => _carInstantiated++;

  final String name;
  Car({
    required this.name,
  }) {
    _incrementCarsInstantiated();
  }
}
