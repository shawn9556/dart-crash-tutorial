void main(List<String> args) {
  // Unwrapping Multiple Optionals
  print(getFullName(null, null));
  print(getFullName('John', null));
  print(getFullName(null, 'Doe'));
  print(getFullName('John', 'Doe'));
}

String getFullName(
  String? firstName,
  String? lastName,
) =>
    withAll(
      [firstName, lastName], // List<String?> 1. check if it is null
      (names) => names.join(' '), // 2. check if it is null
    ) ??
    'Empty'; // 3. if 1, 2 is null assign this

T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());
