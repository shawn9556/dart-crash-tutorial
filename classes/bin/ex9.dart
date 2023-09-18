// Inheriting Constructors

void main(List<String> args) {
  final mom = Mom();
  print(mom.role);
  final dad = Dad();
  print(dad.role);
}

enum Role { mom, dad, son, daughter, grandpa, grandma }

class Person {
  final Role role;

  const Person({
    required this.role,
  }); // Constructors aren't inherited to the subclass by default
}

class Mom extends Person {
  const Mom() : super(role: Role.mom);
}

class Dad extends Person {
  const Dad() : super(role: Role.dad);
}
