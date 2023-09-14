void main(List<String> args) {
  // Null-Aware Operator
  String? lastName;
  print(lastName
      ?.length); //if you want to access the property of a variable that is optional than you need to use null-aware operator lastName?.length

  String? nullName;
  print(nullName ??
      'Foo'); // if the right hand side of ?? is not null it will take the value of the righthand side(nullName) and if the nullName is null it will take the left hand side('Foo')

  print(lastName ?? nullName);
  print(lastName ?? nullName ?? 'Bar');
}
