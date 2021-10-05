void main() {
  final heroe = new Heroe('Clark kent');
  final villian = new Villian('Lex Luthor');

  print(heroe);
  print(villian);
}

abstract class Character {
  String? power;
  String name;

  Character(this.name);

  @override
  String toString() {
    return '$name - $power';
  }
}

class Heroe extends Character {
  int value = 100;
  Heroe(String name) : super(name);
}

class Villian extends Character {
  int malicious = 50;
  Villian(String name) : super(name);
}
