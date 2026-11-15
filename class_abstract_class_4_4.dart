// === Class 4: abstract class part 4 ===

// Abstract class = class create to be blueprint for other class in program.
// 1.Cannot create object : this abstract class can only be blueprint for other class to extend ot implements
// **Only use the structure but other class has to build own value of variables**

// 2.Contract : in abstract class can build entry function not have code in inside just ; back after builded function
// **So,the child class has to build new code in function**

// 3.Create for Organized : if some class has same abality but not same type .that abstract class can be blueprint
// for make other class use same abality blueprint but not same type.
// ** like abstract class animal such as sound().dog,cat has sound but not same of volume.

void main() {
  final big = Big();
  final mini = Mini();
  print(big.generation);
  big.charge();

  print(mini.generation);
  mini.charge();
}

abstract class Robot {
  void charge();
  int generation = 0;
}

class Big implements Robot {
  @override
  int generation = 3;
  @override
  void charge() {
    print('charge 3 % / 1 min');
  }
}

class Mini implements Robot {
  @override
  int generation = 2;
  @override
  void charge() {
    print('charge 5 % / 1 min');
  }
}
