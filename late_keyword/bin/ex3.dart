// Late variables in Classes

void main(List<String> args) {
  final person = Person();
  print(person.age);
  print(person
      .description); // late properties inside Classes is called only when they are first used
}

class Person {
  late String description = heavyCalculationOfDescription();
  final int age;
  Person({this.age = 18}) {
    print('Constructor is called');
  }

  String heavyCalculationOfDescription() {
    print('Function "heavyCalculationOfDescription" is called');
    return 'Foo Bar';
  }
}
