/*
List ikiye ayrılır:
  1-Sabit uzunluk -> List  
    * List.filled(10,0) ile ilk önce eleman sayısını sonra değerlerini belirtiriz
    * List<dynamic>.filled(4, 0) başka bir yöntemle de ilk önce yine belirtiriz fakat daha sonra   
    karisik[0] = "Yasin";
    karisik[1] = 31;
    karisik[2] = false;
    İfadeleri ile liste içerisindeki değerleri isteiğimiz gibi değer tipleriyle değiştirebiliriz.


  2-Büyüyen/Dinamik uzunluk -> Map

Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır.

1-Sabit uzunluk
list<int> numaralar = List.filled(10,0) //10 eleman içeren sabit uzunluklu liste yani dizi. her bir elemanında 0 olan 10 elemanlı bir liste

Index numaraları 0'dan başlar yani listenin ilk elemanına erişmek için 0. indexine bakılır. numaralar[0] diyerek 0. index yani ilk index'e eriş.
 */

void main(List<String> args) {
  //Elean sayısı ve değeri
  //1. YÖNTEM
  List<int> sayilar = List.filled(5, 0, growable: false);

  //Index numarasındaki sayıyı değiştirme
  sayilar[0] = 4;
  sayilar[1] = 3;

  print(sayilar);
  //Liste uzunluğunu yazdırma
  print(sayilar.length);
  //Index numarasına göre yazdırma
  print(sayilar[3]);

  List<String> isimler = List.filled(4, "Yasin");

  //String değerdeki listeye int değer atama
  isimler[3] = 5.toString();

  isimler[1] = "Gündoğdu";

  print(isimler);
  print(isimler.length);

  //Value tipi fark etmeksizin liste oluşturma
  //Listelerde farklı türde elemanları saklayabiliriz.
  //dynamic veri türü = Farklı türde veri türleri içerir

//2. YÖNTEM
  List<dynamic> karisik = List<dynamic>.filled(4, 0);
  karisik[0] = "Yasin";
  karisik[1] = 31;
  karisik[2] = false;

  print(karisik);

  //DÖNGÜ İLE LİSTELERİ GEZMEK.

  //Liste elemanlarını gezmek
  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] += 5; // O andaki değere 5 ekler
    print("Sayilar listesi ${sayilar[i]}");
  }

// Tanımlana int tipindeki oAnkiEleman değişkeni sayilar adlı listede tek tek geziniyor. 
  for (int oAnkiEleman in sayilar) {
    print(oAnkiEleman);
  }
}
