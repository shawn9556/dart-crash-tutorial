// Enumerations: Allow you to create similar objects in one constructor

import 'dart:io';

void main(List<String> args) {
  final woof = Animal(
    name: 'woof',
    type: AnimalType.dog,
  );

// Compare properties that are enumerations with each other
  if (woof.type == AnimalType.dog) {
    print('Woof is a dog');
  } else if (woof.type == AnimalType.rabbit) {
    print('Woof is a rabbit');
  } else if (woof.type == AnimalType.cat) {
    print('Woof is a cat');
  }

// Switch statement  : When comparing enums it is better to use a switch statement than if statements because if something is added to the enum it will show what is missing
  switch (woof.type) {
    case AnimalType.dog:
      print('Woof is a dog');
      break;
    case AnimalType.rabbit:
      print('Woof is a rabbit');
      break;
    case AnimalType.cat:
      print('Woof is a cat');
      break;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}

class Animal {
  final String name;
  final AnimalType type;

  Animal({
    required this.name,
    required this.type,
  });
}
