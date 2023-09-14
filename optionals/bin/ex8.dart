void main(List<String> args) {
  // Nullable Type Promotion

  final String? firstName = null;

  if (firstName == null) {
    print('firstName is null');
  } else {
    final int length = firstName.length; // you don't need to use ?. because the if statement is already checking whether it is null or not (else ensures that the value is not null)
    print(length);
  }

}
