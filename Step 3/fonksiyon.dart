/*
Fonksiyon kavramı sayesinde projelerimizi küçük alt problemlere parçalayarak çok daha okunaklı, hata bulması kolay uygulamalar geliştiririz.

Bir uygulama geliştirirken, bir problemi çözerken o problemde belli bir işi yapan kodları methodlara bölmemiz gerekir. 

Methodlar parametre alabilir veya herhangi bir parametreye sahip olmayabilir.

methodlar geriye bir değer döndürebilir. Değer 
döndürmeyen method tanımlarının başına (VOİD) yaz!

Dart dilinde return ve method geri döndürme opsiyoneldir. 

 */

void main(List<String> args) {
  cevreyiHesapla();

  alanHesapla(5, 10);

  int sonuc = toplama(5, 5);
  print(sonuc);
  //toplama fonksiyonunda yapılan işlem değerin gelmesidir.int sonuc = 10; gibi bir işlem yaptığımızı düşünebiliriz.

  print(hacimHesapla(8, 9, 10));
}

//PARAMETRE ALMAYAN FONKSİYON
void cevreyiHesapla() {
  int en = 5, boy = 10;
  int cevre = (en + boy) * 2;
  print("Çevre : $cevre");
}

//PARAMETRE ALAN FONKSİYON
alanHesapla(int s1, int s2) {
  print("Alan : ${s1 * s2}");
  //print ifadesi geriye değer döndürme anlamı taşımaz
}

//GERİYE DEĞER DÖNDÜREN FONKSİYON
int toplama(int s1, int s2) {
  return s1 + s2;
}

int hacimHesapla(int s1, int s2, int s3) {
  return s1 * s2 * s3;
}
