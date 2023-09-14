void main(List<String> args) {
  //Force UnWrapping
  try {
    final String? firstName = null;
    final foo =
        firstName!; //forcing to read its value whether it is null or not. Using ! is not really good at coding b/c you are risking a 50% chance of crashing
  } catch (error) {
    print(error);
  }

  //It is much better to write it like the following
  final String? firstName = null;
  print(firstName ?? 'No names Found');
}
