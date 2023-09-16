// Switch Statement

void main(List<String> args) {
  describe(1);
  describe(1.1);
  describe('Hello');
  describe(true);
  describe({'key': 'value'});
  describe([1, 2, 3, 4]);
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print('This is an integer');
    case double:
      print('This is a double');
    case String:
      print('This is a string');
    case bool:
      print('This is a boolean');
    case const (Map<String, String>):
      print('This is a map');
    default:
      print('This is a default');
  }
}
