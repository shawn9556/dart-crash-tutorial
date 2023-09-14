void main(List<String> args) {
  /// 4 types of operators
  /// 
  /// 1. Unary Prefix: Operator sits before value
  var age = 30;
  print(--age); //changing the value itself too
  print(!true); // this doesn't mutate the initial value
  print(++age);

  /// unary bitwise completement prefix operator
  print(~1); //flip all the 0 to 1 and 1 to 0
  print(-age); // doesn't negate the internal value(30)

}

