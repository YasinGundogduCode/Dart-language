/*
Bir diğer koleksiyon yapısı da Set yapısıdır.

List den en önemli farkı elemanları sıralı olarak tutmaz, bu durumda list lerde olduğuğ gibi indexleri kullanamayız.

Bir diğer fark ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.

index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. Onun dışında listelerdeki methodlar set için de geçerlidir.
 */

void main(List<String> args) {
  //Her biri birbirinden farklı olan elemanları saklamak için tuttuğumuz yapıdır. Set yapısı

  //Setlerde bir sıra mevcut değildir. sırasız listelenir.
  Set<String> isimler = Set();
  isimler.add("Yasin");
  isimler.add("Ecem");
  isimler.add("Yasin");
  isimler.add("Ahmet");

  //Set yapısı gereği aynı değer birden fazla ise sadece bir defa kullanılmasını sağlar.
  for (String deger in isimler) {
    print(deger);
  }
  print(isimler.length);

  //2. YÖNTEM

  Set<int> num = Set.from([1, 2, 3, 1, 2, 3, 4, 2, 1]);
  num.add(5);

  for (int d1 in num) {
    print(d1);
  }

  //İki farklı diziyi birleştirme
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 0, 2, 4, 6, 8];
  
  num.addAll(ciftSayilar);//num ile ciftSayilar dizisini birleştir

  print("***********");
  for (int d2 in num) {
    print(d2);
  }
}
