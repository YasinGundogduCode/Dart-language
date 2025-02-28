/*
Soru 1 : Parametre olarak bir tane int sayı alan fonksiyonu yazınız. Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geri döndürsün.

Soru 2 : Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı eğer PI sayısı verilmediyse 4.14 olmalı.

 */

//Soru 1

void main(List<String> args) {
  print("Sayıların toplamı : " + ciftBul(10).toString());
  print("Daire alanı : " + daireAlani(2).toString());
}

int ciftBul(int s1) {
  int toplam = 0;

  for (int i = 0; i <= s1; i++) {
    if (i % 2 == 0) {
      toplam += i;
    }
  }
  return toplam;
}

//Soru 2
double daireAlani(double yaricap, [double pi = 3.14]) =>
    (yaricap * yaricap) * pi;
