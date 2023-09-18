// Abstract Classes : Blueprints of the blueprints. All your classes has to conform to that abstract class

void main(List<String> args) {
const car = Car();
print(car.type);
car.accelerate();
car.decelerate();
print('-------------------');
const truck = Truck();
print(truck.type);
truck.accelerate();
truck.decelerate();
}

abstract class Vehicle {
  final VehicleType type;
  const Vehicle({required this.type});

  void accelerate() => print('$type is accelerating');
  void decelerate() => print('$type is decelerating');
}

enum VehicleType {
  car,
  truck,
  motorcycle,
  bicycle,
}

class Car extends Vehicle {
  const Car() : super(type: VehicleType.car);
}

class Truck implements Vehicle {      // I want to create a new blueprint of that blueprint(Vehicle) again
  const Truck();
  
  @override
  void accelerate() => print('Truck is accelerating');

  @override
  void decelerate() => print('Truck is decelerating');

  @override
  VehicleType get type => VehicleType.truck;
  
}
