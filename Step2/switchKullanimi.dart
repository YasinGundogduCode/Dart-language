/*
Switch : ard arda if - else kullanmak yerine genellikle switch yapısı tercih edilir.
switch kullanırken sadece int ve string veri türleri kullanılır, boolean veya double kullanılmaz
*/

void main(List<String> args) {
  /*
100 - 90 AA
89 - 80 BB
79 - 70 CC
69 - 60 DD
59 - 50 EE
49 - 0 FF

*/

  var notDegeri = "AA";

  switch (notDegeri) {
    case "AA":
      print("Not değeriniz 100 - 90 arasıda");
      break;

    case "BB":
      print("Not değeriniz 89 - 80 arasında");
      break;

    case "CC":
      print("Not değeriniz 79 - 70 arasında");
      break;

    case "DD":
      print("Not değeriniz 69 - 60 arasında");
      break;

    case "EE":
      print("Not değeriniz 59 - 50 arasında");
      break;

    case "FF":
      print("Not değeriniz 49 - 0 arasında");
      break;

    //Case değerleri dışında bir değer girildiğinde çalışır.
    default:
      {
        print("Hatalı bir giriş yaptınız");
      }
  }

  int yas = 27;

  switch (yas) {
    case 12:
      print("Yaşınız : $yas");
      break;

    case 22:
      print("Yaşınız : $yas");
      break;

    case 23:
      print("Yaşınız : $yas");
      break;

    default:
      {
        print("Yaşınız değer aralığını aşmaktadır");
      }
  }
}
