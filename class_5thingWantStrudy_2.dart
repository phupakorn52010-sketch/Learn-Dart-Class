// === Class 2:5 thing need to learn of class (1-3)===

void main() {
  final car = Car(color: 'blue', price: 677000);

  print(car.height);
  car.setHeight = 3;
  print(car.height);
}

class Car {
  final String color;
  final double price;

  Car({required this.color, required this.price}) {
    Handover(colorH: color,priceH: price);
  }

  // Private variables
  int _height = 2; //m
  int _lenght = 6;

  // Getter
  int get height => _height;

  // Setter
  set setHeight(int h) {
    _height = h;
  }
  


  void Handover({required colorH, required priceH}) {
    
    print("--- Car data ---");
    print('Color : $colorH');
    print('Price : $priceH');
    print("Car has ready checked before hand over to costumer");
  }
}
