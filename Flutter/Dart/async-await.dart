import 'dart:async';

void main() async {
  print('Bfore petition');

  final petition = await httpGet('www.fraccionamientos.com').then((data) {
    print(data.toUpperCase());
  });

  final name = await getName(1).then(print);

  print('End of programm');
}

Future<String> getName(int id) async => '$id - CUAR';

Future<String> httpGet(String url) async {
  return Future.delayed(Duration(seconds: 3), () => 'Hi World - 3 seconds');
}
