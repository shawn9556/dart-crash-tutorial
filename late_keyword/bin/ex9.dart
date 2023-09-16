// Avoiding Constructor Initializer of Late Variables : Late Variables should not be Initialized in the Constructor

void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jame Doe');
  final doeFamily = WrongImplementaionOfFamily(
    members: [
      johnDoe,
      janeDoe,
    ],
  );
  print(doeFamily);
  print(doeFamily.membersCount);

  final johnSmith = Person(name: 'John Smith');
  final janeSmith = Person(name: 'Jame Smith');
  final smithFamily = RightImplementaionOfFamily(
    members: [
      johnSmith,
      janeSmith,
    ],
  );
  print(smithFamily);
  print(smithFamily.membersCount);
}

class Person {
  final String name;
  Person({
    required this.name,
  });
}

class RightImplementaionOfFamily {
  final Iterable<Person> members;
  late int membersCount = getMembersCount();

  RightImplementaionOfFamily({required this.members});

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}

class WrongImplementaionOfFamily {
  final Iterable<Person> members;
  late int membersCount;
  WrongImplementaionOfFamily({required this.members}) {
    membersCount =
        getMembersCount(); // If you put the late variable in the constructor then it will be resolved immediately although you are not using them.
  }

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}
