void main(List<String> args) {
  var address = '121 Madison ave';
  print(address);
  address = '456 Main st';
  print(address);
  address = address.replaceAll('Main', 'Blvd');
  print(address);
}
