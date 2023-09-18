// Mixins with Logic

void main(List<String> args) {
  final whiskers = Cat(age: 2);
  print(whiskers.age);
  whiskers.incrementAge();
  print(whiskers.age);
}

mixin HasAge{
  abstract int age;
  void incrementAge() => age++; // the property age can't be a get because the incrementAge() is mutating the property
}

class Cat with HasAge{
  @override
  int age;
  Cat({required this.age}); // due to HasAge property this can't be const and the age can't be final
}