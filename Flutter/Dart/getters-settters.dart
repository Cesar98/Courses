import 'dart:math' as math;

void main() {
  final square = Square(5);

  square.area = 4;
  print('area = ${square.area}');
  print('lado = ${square.side}');
}

class Square {
  double side;

  Square(this.side);

  double get area {
    return this.side * this.side;
  }

  set area(double value) {
    this.side = math.sqrt(value);
  }
}
