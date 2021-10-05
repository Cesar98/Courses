abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

abstract class Flyer {
  void fly() => print('Volando');
}

abstract class Walker {
  void walk() => print('Caminando');
}

abstract class Swimmer {
  void swim() => print('Nadador');
}

class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Flyer, Walker {}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Flyer, Walker {}

class Duck extends Bird with Flyer, Walker, Swimmer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Bird with Flyer, Swimmer {}

void main() {
  final dolph = new Dolphin();
  dolph.swim();

  final bati = new Bat();
  bati.fly();
  bati.walk();

  final catto = new Cat();
  catto.walk();

  final dovi = new Dove();
  dovi.fly();
  dovi.walk();

  final ducky = new Duck();
  ducky.fly();
  ducky.swim();
  ducky.walk();

  final bbyShark = new Shark();
  bbyShark.swim();

  final flyingFisher = new FlyingFish();
  flyingFisher.fly();
  flyingFisher.swim();
}
