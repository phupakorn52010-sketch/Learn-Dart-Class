// === Class 4 : Inheritance and oop part 2===
// --- Use class for make blue print ---
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
  final wheelRobot = WheelRobot();
  final legRobot = LegRobot();

  wheelRobot.robotWorking();
  legRobot.robotWorking();

  print('=== Wheel Robot ===');
  print('Battery: ${wheelRobot.power}');
  print('Engine: ${wheelRobot.isEngineWorking}');
  print('Wheel ready: ${wheelRobot.isWheelReady}');
  print('Speed: ${wheelRobot.speed}');
  
  print('');
  
  print('=== Leg Robot ===');
  print('Battery: ${legRobot.power}');
  print('Engine: ${legRobot.isEngineWorking}');
  print('Leg ready: ${legRobot.isLegReady}');
  print('Legs: ${legRobot.numOfLeg}');
}

class Robot {
  int power = 100;
  bool isEngineWorking = false;

  void robotWorking() {
    power -= 5;
    isEngineWorking = true;
  }
}

class WheelRobot extends Robot {
  int speed = 20;
  int numOfWheel = 4;
  bool isWheelReady = false;

  @override //mentioned that intend to write an override method—a method designed to verify the analyzer by checking names and patterns.
  void robotWorking() {
    super.robotWorking();

    power -= 10;
    isWheelReady = true;
  }
}

class LegRobot extends Robot {
  int numOfLeg = 2;
  bool isLegReady = false;

  @override
  void robotWorking() {
    super.robotWorking();

    power -= 10;
    isLegReady = true;
  }
}
