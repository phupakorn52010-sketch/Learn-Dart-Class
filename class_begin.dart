// === Class 1:begin ===

void main() {
  // 1.How to print variable in class and how to show method of class
  /*
  print('The shap of pizza user pick is ${pizza().shape}');
  print('And size is ${pizza().size} cm');

  pizza().baking();
  final isPizzaColing = pizza().isCooling();
  print(isPizzaColing);
  */

  // 2.How to use class in main by variable way
  //and how to change variable in class

  /*
  final Pizza = pizza();

  Pizza.shape = 'Triangle';
  Pizza.size = 'S';
  print(Pizza.shape);
  print(Pizza.size);
  */

  // 3.Add value out class to class and class in class
  // required is optional add in code to say 
  //'The user when use function has required.Need to add variable of functions want.
  final Pizza = pizza(shape2: 'Circle',size2: 'X');

}

class pizza {
  final String shape2;
  final String size2;


  pizza({required this.shape2,required this.size2}) {
    baking();
  }
  // Variable
  /*
  var shape = 'Rectangle';
  var size = 'L'; // cm
  */

  //method
  void baking() {
    print(
      "Your pizza which is of the shape $shape2.\nand got a size is $size2",
    );
  }

  bool isCooling() {
    return false;
  }
}
