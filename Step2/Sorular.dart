/*

* SORU 1 : 3 tane double değişken oluşturup bunların ortalamasını yazdıran programı yaznız.

* SORU 2 : Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.

* SORU 3 : Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız (Geçme notu alt değeri = 50, Vizenin %40 finalin %60 ı alınır).

* SORU 4 : Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız

* SORU 5 : 1 den 100 e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırın

* SORU 6 : Tanımlanan int bir sayının faktoriyelini bulan programı yazınız.

 */

void main(List<String> args) {
  //SORU 1
  double s1 = 15.5;
  double s2 = 17.7;
  double s3 = 44.3;

  print("Ortalama : ${(s1 + s2 + s3) / 3}");

  //SORU 2

  int k1 = 3, k2 = 4, k3 = 5;

  if ((k1 == k2) && (k1 == k3)) {
    print("Eşkenar üçgen");
  } else if (k1 != k2 && k1 != k3 && k2 != k3) {
    print("Çeşitkenar üçgen");
  } else {
    print("ikizkenar üçgen");
  }

  //SORU 3
  double vize = 40 * 40 / 100;
  double finnal = 50 * 60 / 100;
  double gecerNot = vize + finnal;

  if (gecerNot >= 50) {
    print("Geçtiniz notunuz : $gecerNot");
  } else {
    print("Kaldınız notunuz : $gecerNot");
  }

  //SORU 4

  for (int i = 1; i <= 5; i++) {
    print("$i. döngüde Yasin");
  }

  int i = 1;
  while (i <= 5) {
    print("$i. döngüde Yasin Gündoğdu");
    i++;
  }

  int j = 1;
  do {
    print("$j. döngüde Yasin G");
    j++;
  } while (j <= 5);

  //SORU 5

  for (int a = 1; a < 100; a++) {
    if (a % 15 == 0) {
      print(a * a);
    }
  }

  //SORU 6

  int fack = 6;
  int sonuc = 1;
  int sayac = 1;
  //5*4*3*2*1

  // for (int s = 1; s <= fack; s++) {
  //   sonuc = s * sonuc;
  // }
  // print("$fack sayısının faktoriyeli : $sonuc");

  while (sayac <= fack) {
    sonuc = sonuc * sayac;
    sayac++;
  }
  print("$fack sayısının faktoriyeli : $sonuc");
}
