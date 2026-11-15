// === Class 4 : Inheritance and oop (implements) part 3 ===

void main() {
  final miniRobot = Mini1();
  final bigRobot = Big1();

  miniRobot.robotWorking();
  bigRobot.robotWorking();

  print('=== MINI1 Robot ===');
  print('Battery: ${miniRobot.power}');
  print('Generation : ${miniRobot.generation}');
  print('Price : ${miniRobot.price}');
  print('Engine: ${miniRobot.isEngineWorking}');

  print('');
  print('=== BIG1 Robot ===');
  print('Battery: ${bigRobot.power}');
  print('Generation : ${bigRobot.generation}');
  print('Price : ${bigRobot.price}');
  print('Engine: ${bigRobot.isEngineWorking}');
  print('Wheel ready: ${bigRobot.isWheelReady}');
}

class Robot {
  int power = 100; //%
  int generation = 1;
  double price = 677;
  bool isEngineWorking = false;

  void robotWorking() {
    power -= 5;
    isEngineWorking = true;
  }
}

class wheel extends Robot {
  int speed = 20;
  int numOfWheel = 4;
  bool isWheelReady = false;

  @override
  void robotWorking() {
    super.robotWorking();
    power -= 10;
    isWheelReady = true;
  }
}

class Mini1 implements Robot {
  @override
  int power = 100; // %
  @override
  int generation = 2;
  @override
  double price = 67;
  @override
  bool isEngineWorking = false;
  @override
  void robotWorking() {
    power -= 3;
    isEngineWorking = true;
  }
}

class Big1 extends wheel implements Robot {
  @override
  int power = 100; // %
  @override
  int generation = 3;
  @override
  double price = 500;
  @override
  bool isEngineWorking = false;

  @override
  void robotWorking() {
    super.robotWorking();

    power -= 5;
    isWheelReady = true;
  }
}
