void main() {
  /* final doggo = new Dog(); */

  final cat = new Cat();

  animalSound(cat);
}

void animalSound(Animal animal) {
  animal.makeSound();
}

abstract class Animal {
  int? foots;

  void makeSound();
}

class Dog implements Animal {
  int? foots;

  void makeSound() => print('guau');
}

class Cat implements Animal {
  int? foots;

  void makeSound() => print('miau');
}
