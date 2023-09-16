// Spread Operator with Collections

void main(List<String> args) {
  addToArrayWrong();
  print('-------------------------');
  addToArrayRight();
  addToDictionaryWrong();
}

void addToArrayWrong() {
  final names1 = ['John1', 'Jane1', 'Mary1', 'Bob1'];
  final names2 = ['John2', 'Jane2', 'Mary2', 'Bob2'];
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToArrayRight() {
  final names1 = ['John1', 'Jane1', 'Mary1', 'Bob1'];
  final names2 = ['John2', 'Jane2', 'Mary2', 'Bob2'];
  final allNamesWrong = [...names1, ...names2];
  print(names1);
  print(names2);
  print(allNamesWrong);

  final anotherWay = {...names1}..addAll(names2);
  print(anotherWay);
}

void addToDictionaryWrong() {
  // adding to const will crash
  const info = {
    'name': 'John',
    'age': 20,
    'height': 180,
  };
  // final result = info;
  // result.addAll({'weight': 80});
  final result = {...info}..addAll({'weight': 80});
  print(result);
}
