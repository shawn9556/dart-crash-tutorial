// Factory Constructors : Can create instances of their subclasses
// Normal Constructor can only create instances of its own class
void main(List<String> args) {
  final myCar = Car();
  print(Vehicle.car());
  print(Vehicle.truck());
}

class Vehicle {
  // factory constructors can not only create instances of its own class but also its subclasses
  const Vehicle();

  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() => 'Vehicle of type $runtimeType';
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
