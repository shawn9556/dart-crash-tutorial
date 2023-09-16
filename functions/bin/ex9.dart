// Optionality of Required Parameters : if the parameter is required than there is no point of specifying the default value for it because it will be overwritten anyways

void main(List<String> args) {
  doSomethingWithAge(age: 32);
  doSomethingWithAge(age: null);
}

void doSomethingWithAge({
  required int? age,
}) {
  if (age != null) {
    final in2Years = age + 2;
    print('In 2 years, you will be $in2Years years old');
  } else {
    print('You did not tell me your age');
  }
}
