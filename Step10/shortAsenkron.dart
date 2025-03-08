void main(List<String> args) {
  print("Ekmek al");
  print("Evden çık");

  uzunSurenIslem()
  .then((value)=>print(value))
  .catchError((hata)=>print(hata))
  .whenComplete(()=> print("Operasyon bitti"));

  print("Sofra hazırlanır");
  print("Kahvaltı hazır");
}

//String değer döndürmek zorunda hata çıkması haricinde
Future<String> uzunSurenIslem() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "Ekmek alındı";
  });
}
