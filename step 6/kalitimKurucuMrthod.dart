void main(List<String> args) {
  Asker yasin = Asker("Yasin", 22);
  Er yasin2 = Er("Er", 21);
  print(yasin);
  print(yasin2);
}

//Aralarında kalıtım olan sınılarda ilk olarak üst sınıfın kurucu methotu çalışır.

class Asker {
  String ad = "";
  int yas = 0;

  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucusu çalıştı");
  }
  void selamla() {
    print("Her $ad asker doğar $yas");
  }
}

class Er extends Asker {
  //super. ile üst sınıfın değerlerine eşir
  //super() ise üst sınıfın kurucusunu çalıştır

  Er(String ad, int yas) : super(ad, yas) {
    print("Er sınıfının kurucusu çalıştı");
  }
}
