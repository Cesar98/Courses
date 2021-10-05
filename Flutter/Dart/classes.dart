void main() {
  final rawJson = {
    'name': 'Spidy',
    // 'power': 'Ingelligent',
  };

  /*  final spidy = new Heroe(name: 'CUAR', power: 'Avoider');
  spidy.name = 'Spiderman';
  spidy.power = 'Intelligent'; */

  final spidy = Heroe.fromJson(rawJson);
  print(spidy);
}

class Heroe {
  String name;
  String power;

  Heroe({required this.name, required this.power});

  Heroe.fromJson(Map<String, String> json)
      : this.name = json['name'] ?? 'No Name',
        this.power = json['power'] ?? 'No Power';

  @override
  String toString() {
    return 'nombre: ${this.name}, poder: ${this.power}';
  }
}
