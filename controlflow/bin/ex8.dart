// Switching over String values

import 'dart:io';

void main(List<String> args) {
  do {
    stdout.write('Enter your name or type "exit": ');
    final input = stdin.readLineSync();
    if (input == 'exit') {
      break;
    } else if ((input?.length ?? 0) == 0 || input == null) {
      stdout.writeln('Invalid name. Try again!');
      continue;
    }

    switch (input.toLowerCase()) {
      case 'john':
      //   continue toJane;
      // toJane:           // you can jump into another block using continue and the label : However there should be a good reason because it is the same as not using it
      case 'jane':
        stdout.writeln('Hello $input. You have a great name');
      default:
        stdout.writeln('Hello $input');
    }
  } while (true);
}
