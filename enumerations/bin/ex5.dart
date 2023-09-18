// Falling through on Enumeration Cases

void main(List<String> args) {
  final vehicle = VehicleType.motorcycle;

  switch (vehicle) {
    case VehicleType.motorcycle:
    case VehicleType.bicycle:
    case VehicleType.car:
      print(
          'Most common personal vehicles'); // This is how you do fall through in enums. Just put the last one with the function and break
      break;
    case VehicleType.truck:
      print('Usually used for work');
      break;
  }
}

enum VehicleType {
  car,
  truck,
  motorcycle,
  bicycle,
}
