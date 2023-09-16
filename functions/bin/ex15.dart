// Function as First Class Citizens : functions in dart can be passed into other functions

void main(List<String> args) {
  print(minus());
  print(minus(10, 20));

  print(performOperation(10, 20, add)); // passing in add function as parameter
  print(performOperation(
      40, 20, minus)); // passing in minus function as a parameter
}

int performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int add([int lhs = 10, int rhs = 5]) => lhs + rhs;
