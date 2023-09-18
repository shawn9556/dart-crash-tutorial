// Methods : a Function that is an instance of a class so you have to assign the class first then call the method

void main(List<String> args) {
  final myCar = Car();
  myCar.speed = 20;
  final car = Car();
  car.drive(speed: 30);
  print('Speed is ${car.speed}');
  car.stop();
}

class Car {
  int speed = 0;

  void drive({required int speed}) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping ...');
    print('Stopped');
  }
}
