import 'dart:math';

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  /* Methods */
  numbers.add(0);

  print(numbers);

  final moreNumbers = List.generate(50, (element) => 10);

  print(moreNumbers);
}
