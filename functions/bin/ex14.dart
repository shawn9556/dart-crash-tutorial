// The Return Keyword : functions can have return values

void main(List<String> args) {
  print(add(1, 2));
  print(add(3));
}

int add([
  int a = 1,
  int b = 2,
]) {
  return a + b;
}
