void main(List<String> args) {
  Math m1 = Math(54, 41);
  m1.topla();
  m1.cikar();

  print(Math.pi);
  Math.sinifAdi();
}
//instance'den static'e erişim var
//static'den instance'ye erişim yok

class Math {
  //instance variable : nesne değişkeni
  int _s1 = 0;
  int _s2 = 0;

  //Static değişken veya metotlara erişmek için sınıf adını yazmamız gerekmektedir.

  //class variable : sınıf değişkeni
  static double pi = 3.14;

  //static sınıf oluşturma
  static sinifAdi() {
    print("Mateetik sınıfı");
  }

  Math(this._s1, this._s2);

  void topla() {
    print("Toplam: ${_s1 + _s2}");
  }

  void cikar() {
    print("Sayıların farkı : ${_s1 - _s2}");
  }
}
