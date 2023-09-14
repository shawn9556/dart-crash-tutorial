void main(List<String> args) {
  //Nullable Default Values
  String? lastName; //Initial Value of nullable is null
  lastName ??=
      'Bar'; //if lastName(left value) is null assign the right value into the left value
  print(lastName);
}
