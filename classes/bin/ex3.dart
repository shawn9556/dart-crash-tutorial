// Subclassing : Inheriting one class to another. Normal functions are inherited by default to subclasses.

void main(List<String> args) {
  final v = Vehicle(4);
  print(v);
  print('-----------------');

  print(Car());
  print(Truck(6));
}

class Vehicle {
  final int wheelCount;
  const Vehicle(this.wheelCount);

  @override
  String toString() {
    return '$runtimeType with $wheelCount wheels'; //runtimeType gives the type of the class

    // if (runtimeType == Vehicle) {   // this means that the it will return the overriden String when the runtimeType is Vehicle but Car and Truck aren't Vehicle but only inherit from Vehicle it wll not return the overriden String.
    //   return '$runtimeType with $wheelCount wheels';
    // } else {
    //   return super.toString();
    // }
  }
}

class Car extends Vehicle {
  const Car() : super(4);
}

class Truck extends Vehicle {
  const Truck(super.wheel);
}
