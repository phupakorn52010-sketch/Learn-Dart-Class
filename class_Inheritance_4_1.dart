// === Class 4 : Inheritance and oop part 1===
// --- Use class for make blue print ---

//interitance = family of class to extend in next object

// Robot 
// => wheel
// => leg

/*
  print('=== Robot started ===');
  print('Battery        : ${robot.power}');
  print('Speed          : ${wheelRobot.speed}');
  print('status working : ${robot.isEngineWorking}');
  print('Wheel ready    : ${wheelRobot.isWheelReady}');
  print('Leg ready      : ${legRobot.isLegReady}');
  print('Count of wheel : ${wheelRobot.numOfWheel}');
  print('Count of Legs  : ${legRobot.numOfLeg}');
  */

void main() {
  // 1.Use class for blue print

  // Robot X1 : only wheel
  final x1Robot = Robot(
    name: 'X1 wheel standed',
    wheel: Wheel(speed: 20, numOfWheel: 4),
  );

  // Robot S1 : only Leg
  final s1Robot = Robot(name: 'S1 Leg over land', leg: Leg(numOfLeg: 2));

  // Robot XS-A : Wheel and Leg
  final xsRobotA = Robot(
    name: 'XS-A wheel combo leg',
    wheel: Wheel(speed: 30, numOfWheel: 4),
    leg: Leg(numOfLeg: 4),
  );

  x1Robot.robotWorking();
  s1Robot.robotWorking();
  xsRobotA.robotWorking();




}

// Class blueprint

class Robot {
  String name;
  int power = 100; //%
  bool isEngineWorking = false;

  Wheel? wheel;
  Leg? leg;

  Robot({required this.name, this.wheel, this.leg});

  void robotWorking() {
    power -= 5;
    isEngineWorking = true;

    wheel?.wheelWorking(this);
    leg?.legWorking(this);
  }
}

class Wheel {
  int speed; // m/s
  int numOfWheel;

  bool isWheelReady = false;

  Wheel({required this.speed, required this.numOfWheel});

  void wheelWorking(Robot targetRobot) {
    targetRobot.power -= 10;
    isWheelReady = true;
  }
}

class Leg {
  int numOfLeg;
  bool isLegReady = false;

  Leg({required this.numOfLeg});

  void legWorking(Robot targetRobot) {
    targetRobot.power -= 10;
    isLegReady = true;
  }
}

