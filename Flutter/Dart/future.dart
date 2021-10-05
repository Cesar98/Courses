void main() {
  print('Bfore petition');
  httpGet('www.fraccionamientos.com').then((data) {
    print(data.toUpperCase());
  });
  print('End of programm');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () => 'Hi World - 3 seconds');
}
