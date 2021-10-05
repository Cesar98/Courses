void main() {
  print(sayHi2(message: 'hola', name: 'Cesar'));
}

String sayHi(String name, [String message = "Whats up"]) {
  return '$message $name';
}

String sayHi2({required String name, required String message}) {
  return '$message $name';
}

/* Parametros normales (), parametros opcionales [], 
  parametros por nombre {} , posibles nulos String? 
  requeridos {required String}, 
  con valor por defecto (String name = 'aName')*/