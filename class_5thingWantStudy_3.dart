// === Class 3:5 thing need to learn of class (4-5)===

// Static: use to mean variable or method is in the class
// not Instance or object.SO,that mean can use static directly by class.

void main() {
  //final constants = Constants();

  print(Constants.giveMeSomeValue());
  print(Constants.greeting);
  print(Constants.bye);
}

class Constants {
  static int num = 39;
  static String greeting = 'สวัสดีครับ,สบายดีบ่หล้า';
  static String bye =
      'Bye bye ครับ เจอกันครั้งหน้าเดอะครับ ขอให้สุขภาพแข็งแรงนะครับ คุณ $num';

  static int giveMeSomeValue() {
    return num;
  }
}
