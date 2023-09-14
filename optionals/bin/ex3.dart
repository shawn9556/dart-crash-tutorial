void main(List<String> args) {
  //Comparing Optionals
  int? age = 10;
  age = null;
  print(age);
  if (age == null) {
    print('Age is null');
  } else {
    print('Age is not null');
  }
}
