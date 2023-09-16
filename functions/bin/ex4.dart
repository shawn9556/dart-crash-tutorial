// No Return Values

void main(List<String> args) {
  greet();

  // you would never invoke the function and assign
  // the result to a variable
  // final void value = greet(); <= you shouldn't code like this
}

void greet() {
  print('Greetings');
}