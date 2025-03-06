void main(List<String> args) {
  Ogrenci yasin = Ogrenci();
  yasin.ogrAd = "Yasin Gündoğdu";
  yasin.ogrNo = 222;
  yasin.aktifMi = true;

//Oluşturğumuz her nesne ( Bu örnekte öğrenci adları) başka bir nesneden bağımsız oluştuğu sınıfa bağlıdır.

  Ogrenci ecem = Ogrenci();
  ecem.aktifMi = false;

}

//Sınıf adları büyük harfle başlar
class Ogrenci {
  int? ogrNo;
  String? ogrAd;
  bool? aktifMi;

  //Sınıfın içinde tanımlanan fonksiyonlara methodtur
  void dersCalis() {
    print("DERS ÇALIŞIYOR");
  }
}
