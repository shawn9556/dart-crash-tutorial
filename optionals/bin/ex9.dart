void main(List<String> args) {
  // Combining Null-Aware Operators

  String? lastName;

  void changeLastName() {
    lastName = 'Bar';
  }

  changeLastName();

  if (lastName?.contains('Bar') ?? false) {
    print('Last name contains Bar');
  } // This is better than the one beneath

  if (lastName?.contains('Bar') == true) {
    print('Last name contains Bar');
  }
}
