void main(List<String> args) {
  boys yasin = boys(2003, "Yasin", true);
  yasin.kisiBilgisi();
  yasin.yasHesapla();

  //İsim bilgisi olamayn nesne üretildi
  var kamil = boys.isimsizKisiMetot(false, 2018);
  boys ali = boys.yasiOlmayanKisiMetot(false, "ali");

  kamil.kisiBilgisi();
  kamil.yasHesapla();

  ali.kisiBilgisi();
  ali.yasHesapla();
}

class boys {
  int? year;
  String? name;
  bool? die;

  boys(this.year, this.name, this.die) {
    print("Kurucu metot tetiklendi");

    //1. HATA ALMAMA YÖNETMİ

    //Sistem değişkenleri ayırt edemediği durumlarda This anahtar kelimesini kullanırız. Parametre olarak gelen değişkeni o sınıftaki değerlere ata.
    // this.year = year;
    // this.name = name;
    // this.die = die;

    //This başlıca parametre ile sınıfın içindeki değişkenlerin isimleri birebir aynı ise kullanmak zorunlu hale gelmektedir.

    //2. HATA ALMAMA YÖNTEMİ

    //Parametreler farklı isimdeyse herhangi bir sorun almayız.
    // year = yil;
    // name = isim;
    // die = yasiyorMu;

    //3. HATA ALMAMA YÖNTEMİ : Direkt sınıfa parametre verdiğimiz anda this kullanarak atama işlemi yapabiliriz.
  }

  //1- Varsayılan Kurucu methot

  // boys() {
  //   print("Kurucu methot tetiklendi");
  // }

  //2- Varsayılan ama parametre alan kurucu methot

  // boys(this.year, this.name, this.die) {
  //   print("Kurucu methot tetiklendi");
  // }

  //3- İstediğimiz kadar oluşturabileceğimiz isimlendirilmiş kurucu methodlar

  // boys.isimsizKisiMetot(this.die, this.year);




  boys.isimsizKisiMetot(this.die, this.year);
  boys.yasiOlmayanKisiMetot(bool die, String name) {
    this.die = die;
    this.name = name;
  }

  void yasHesapla() {
    if (year != null)
      print("Yaşınız: ${2025 - year!} ");
    else
      print("Yaş bilgisi yoktur");
  }

  void kisiBilgisi() {
    print("Yaşı $year, ismi $name, yaşıyor mu? $die");
  }
}
