
void main(List<String> args) {
  Sekil s1 = Kare(5);
  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  s1.selamla();

  Sekil s2 = Dikdortgen(4, 6);
  print(s2.alanHesapla());
  print(s2.cevreHesapla());
  s2.selamla();

  //abstrac kalıtım farkı :
  List<Sekil> tumSekiller = [];
  //List<Kare> tumKareler = [];
  //List<Dikdortgen> tumDikd = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);

  test(s1);
  test(s2);
}

//abstract: soyut yani kullanılma şekli değişen veya belli olmayan durumlarda kullanılır.

//En az bir tane gövdessi yazılmamış fonksiyon olmalı

void test(Sekil sekil) {
  sekil.selamla();
}

abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  void selamla() {
    print("Şekil sınıfı");
  }
}

class Kare extends Sekil {
  double kenar;
  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar;
  }

  @override
  double cevreHesapla() {
    return kenar * 4;
  }

  @override
  void selamla() {
    print("Ben kare");
  }
}

class Dikdortgen extends Sekil {
  double kKenar;
  double uKenar;

  Dikdortgen(this.kKenar, this.uKenar);

  @override
  double alanHesapla() {
    return kKenar * uKenar;
  }

  @override
  double cevreHesapla() {
    return (uKenar + kKenar) * 2;
  }

  @override
  void selamla() {
    print("Ben dikdörtgen");
  }
}
