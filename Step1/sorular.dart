/*SORULAR:
1-  Adınızı, soyadınızı ve yaşınızı farklı değişkenlerde saklayıp, ekrana "Benim adım Yasin Gündoğdu, yaşım 22 ve isimdeki tüm karakter sayısı : 13'dür" yazdırın

2-  Bir üçgenin tüm kenarlarını değişkenlerde saklayıp çevresini ekrana yazdırın. örnek olarak birinci kenarı 3, ikinci kenarı 4, üçüncü kenarı 5 olan üçgenin çevresi 12'dir. şeklinde
*/

void main(List<String> args) {
  var isim = "Yasin";
  var soyisim = "Gündoğdu";
  var yas = 22;
  print(
    "Benim adım $isim $soyisim , yaşım $yas ve isimimdeki tüm karakter sayısı : ${(isim + soyisim).length}'tür",
  );

  var k1 = 3;
  var k2 = 4;
  var k3 = 5;
  print(
    "Birinci kenarı $k1 ikinci kenarı $k2 üçüncü kenarı $k3 olan üçgenin çevresi : ${(k1 + k2 + k3)}'dir",
  );
}
