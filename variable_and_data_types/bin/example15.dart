void main(List<String> args) {
  const int someInt = 10;
  print(someInt);
  const double someDoub = 10.1;
  print(someDoub);
  const String someString = 'John';
  print(someString);
  const bool someBool = true;
  print(someBool);
  const List<int> someList = [1,2,3];
  print(someList);
  const Map<String, String> someMap = {'Foo': 'Bar'};
  print(someMap['Foo']);
  const Set<int> someSet = {1,2,3};
  print(someSet.length);
  const Symbol someSymbol = #someNull;
  print(someSymbol);
}

