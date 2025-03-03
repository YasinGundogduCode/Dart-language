void main(List<String> args) {
  Kisi yasin = Kisi("Yasin", 22);
  yasin.kendiniTanit();

  Calisan ecem = Calisan("Ecem", 21, 30000);
  ecem.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;

  //Oluşturduğumuz kurucu methot sayesinde değerlerimizi null olmaktan kurtardık
  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("Benim adım : $isim ve yaşım: $yas");
  }
}

class Calisan extends Kisi {
  int maas;

  //:super() -> Bu parametreleri al üst sınıfa gönder. diyerek üstü sınıfın kurucusunu çağırıyoruz ve oraya yöneldiriyoruz.
  Calisan(String name, int age, this.maas) : super(name, age);

  //Bu işlemde üst sınıftaki metota ekleme yapmak istediğimiz durumlarda kulllanılır.
  @override
  void kendiniTanit() {
    // TODO: implement kendiniTanit
    super.kendiniTanit();//çalıştırsın
    print("Maaşım : $maas");//devam etsinf
  }
}
