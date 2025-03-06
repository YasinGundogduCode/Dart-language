void main(List<String> args) {
  Ogrenci kemal = Ogrenci.idSiz("Kemal");
  Ogrenci turgut = Ogrenci.factoryKurucusu(-1, "");

  print(kemal.id);
  print(turgut.id);
  print(turgut.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  //Parametre alan Kullanıcı önce id sonra isim girsi yapan constructor oluşturuyoruz.

  Ogrenci(this.id, this.isim) {
    print("P.metre alan varsayılan kurucu çalıştı");
  }

  //İismlendirilmiş kurucu oluşturma
  Ogrenci.idSiz(this.isim) {
    print("İsimledirilmiş kurucu çalıştı");
  }

  //Factory amacı kontrollü nesne oluşturmayı sağlar
  //return etmemizi sağlar
  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0 || isim.length == 0) {
      return Ogrenci(00, "Geçersiz");
    } else
      return Ogrenci(id, isim);
  }
}
