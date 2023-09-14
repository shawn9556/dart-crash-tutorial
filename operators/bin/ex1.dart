void main(List<String> args) {
  const age1 = 50;
  const age2 = 30;
  print(age1 + age2);
  print(age1 + (age2 * 5));
  print(age1 - age2);
  print(age1 / age2); //divided gives double for default

  const intDivided = age1 ~/ age2; //you only get int
  print(intDivided);
}
