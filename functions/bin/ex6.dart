// Default Value for Named Parameters

void main(List<String> args) {
  describe();
  describe(something: null); // you can pass null in the optional + default value parameter
  describe(something: 'Hello, Dart!');
}

void describe({
  String? something = 'Hello, World!', // this means it is optional if you don't pass any values to the parameter it will assign the default value
}) {
  print(something);
}
