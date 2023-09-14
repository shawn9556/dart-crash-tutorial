void main(List<String> args) {
  // Compound Assignment Operators
  var myAge = 20;
  // print(myAge = 30);
  print(myAge ~/=
      2); // this actually operates ~/ and then assigns that value back to myAge variable
  print(myAge *= 3);
  print(myAge += 4);
  print(myAge &= 2);
  // 0010 0010 : 34
  // &
  // 0000 0010 : 2
  // 0000 0010 : 2(result)

  print(myAge |= 4);
  print(myAge ^= 10);
  print(myAge -= 10);
  print(myAge);
}
