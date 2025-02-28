/*
Map yapısı {} iledir. Set yapısı gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.

Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklanmasıdır.

Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yeni eşsiz olması gerekir

Map yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirinden farklı elemanları içerir.

Sabit uzunlukta değil, dinamik uzunluktadır.

Map yapısı : anahtar kelime ve değer alır {} ile gösterilir.

 */

void main(List<String> args) {
  Map<String, int> alanKodlari = {
    //stringler burda key değerler value
    "Ankara ": 312,
    "Bursa": 224,
    "İstanbul": 212,
  };
  print(alanKodlari);

  //Sadece bir değeri istiyorsa key kısmı yazılır
  print(alanKodlari["Bursa"]);

  //Kişi bilgisi tutma
  Map<String, dynamic> yasin = {
    "soyadi": "Gündoğdu",
    "yas": 22,
    "evliMi": false,
  };
  for (String deger in yasin.keys) {
    //value leri verir
    print(deger);

    //keys leri verir
    print(yasin[deger]);
  }

  // fot(var element in yasin.entries)

  
}
