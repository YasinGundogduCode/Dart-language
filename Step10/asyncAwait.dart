void main(List<String> args) {
  print("Kisi verisi gelecek");

  //Bu durumda program akışını durdurmaz
  kisiIslemler();

  print("Başka işler");
  print("İşlem bitti");
}

//await bir şey gelene kadar bekletir
void kisiIslemler() async {
  String kisi = await kisiVerisi();
  print(kisi.length);
}

Future<String> kisiVerisi() {
  return Future<String>.delayed(Duration(seconds: 5), () {
    return "Kişi adı: Yasin";
  });
}
