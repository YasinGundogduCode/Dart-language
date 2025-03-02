void main(List<String> args) {
  Cars honda = Cars();
  honda.date = 2021;
  honda.brand = "Honda";
  honda.gear = true;
  honda.bilgileriGoster();

  honda.date = 2022;
  honda.bilgileriGoster();

//Yeni bir nesne oluşturduğumuzda kurucu metot tetiklenir. Yani her nesne oluşmadan önce kurucu method tetiklenir.


  Cars bwm = Cars();
  bwm.bilgileriGoster();
}

class Cars {
  int? date;
  String? brand;
  bool? gear;

  Cars() {
    //İlk önce çalışacak kısımdır.

    //Biz buraya yazmasak da constructor kendisi çalışmaktadır.
    print("Kurucu metot tetiklendi");
  }

  void bilgileriGoster() {
    print(
      "Arabanın model yılı: ${date}, markası: ${brand}, otomatik vites mi? ${gear}. ",
    );
  }
}
