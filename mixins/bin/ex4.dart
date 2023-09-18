// Limiting Mixins to Data Types

void main(List<String> args) {
  Human().run();
}

class Has2Feet {
  const Has2Feet();
}

class Human extends Has2Feet with CanRun {
  const Human();
}

mixin CanRun on Has2Feet {
  // CanRun is only available to types that conform to Has2Feet => you can't access CanRun by just calling Has2Feet
  void run() {
    print('$runtimeType  is running');
  }
}

class HasNoFeet {
  const HasNoFeet();
}

class Fish extends HasNoFeet {
  const Fish();
}
