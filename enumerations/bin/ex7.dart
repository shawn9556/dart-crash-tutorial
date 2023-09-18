// Extending  Enumerations
void main(List<String> args) {
  AnimalType.cat
    ..jump()
    ..run();
  AnimalType.dog
    ..jump()
    ..run();
}

enum AnimalType {
  cat,
  dog,
  rabbit; // if you want to call a function inside Enum you have to close it with ';'

  void run() {
    print('$name is running...');
  }
}

extension Jump on AnimalType {
  void jump() {
    print('$this is jumping...');
  }
}
