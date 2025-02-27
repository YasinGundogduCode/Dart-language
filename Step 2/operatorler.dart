void main(List<String> args) {
  /*
  ARİTMATİK OPERATÖRLER
  + -> Toplama işareti
  - -> çıkartma işareti
  * -> çarpma işareti
  / -> bölme işareti
  % -> mod alma bir sayının tek çift vs. gibi bulmayı sağlar. sayının bölümünden kalanı verir.

  ++ -> değişken değerini 1 artırır
  -- -> deişken değerini 1 azaltır

  Bu ifadelerin değişkenin sağında veya solunda olması önemlidir. 
  x++ -> önce değişkeni kullan sonra 1 arttır. ++x ise önce değişkeni 1 arttır sonra kullan.

  ATAMA VE KARŞILAŞTIRMA OPERATÖRLERİ
  = -> sağdaki değeri soldaki değişkene atar
  += -> 
  -= ->
  /= ->
  *= ->
  %= ->

  KARŞILAŞTIRMA OPERATÖRLERİ

  < , > <= , >= , == , !=
  == -> Eşit ise 
  != -> Eşit değil ise

  MANTIKSAL OPERATÖRLER 
  && -> Ve anlamına gelir iki seçenek de true olmalı
  || -> Veya anlamı iki seçenekten biri true olmalı.
  ! -> Not anlamı vardır. Bir şeyin değilidir. tersi
   */

  //ARİTMATİK OPERATÖRLER
  double s1 = 9;
  double s2 = 4;

  print("$s1 + $s2 = ${s1 + s2}");
  print("$s1 - $s2 = ${s1 - s2}");
  print("$s1 * $s2 = ${s1 * s2}");
  print("$s1 / $s2 = ${s1 / s2}");
  print("iki sayının modu $s1 % $s2 = ${s1 % s2}");

  //ATAMA VE KARŞILAŞTIRMA OPERATÖRLERİ

  double s3 = 5;
  var s4 = 5;
  s3 = s3 + 5;
  print("Uzun hali : $s3");

  s3 += 5; //s3 = s3 + 5; İşleminin kısa halidir.
  print("Ksa hali : $s3");

  s4 *= 2;
  print("Çarpım sonucu : $s4");

  s3 /= 5;
  print("Bölüm sonucu : $s3");

  //KARŞILAŞTIRMA OPERATÖRLERİ

  double s5 = 9;
  double s6 = 8;

  if (s5 >= s6) {
    print("$s5 büyük veya eşittir $s6");
  } else {
    print("$s5 küçük ve eşit değildir $s6");
  }

  String isim = "Yasin";
  String sAdi = "Gündoğdu";

  if (isim != sAdi) {
    print("$isim kelimesi ve $sAdi kelimesi aynı değildir");
  } else {
    print("eşittir");
  }

  //MANTIKSAL OPERATÖRLER

  var d1 = true;
  var d2 = true;
  var d3 = false;

  print(d1 && d3);
  print(d1 && d2);


  int sayi1 = 1;
  sayi1 = sayi1 + 1; //
  sayi1 += 5; // sayi1 = sayi1 + 5;
  sayi1++; // sayi1 i kullan sonra 1 arttır

  print(sayi1);

  int sayi2 = 1;

  print(sayi2++); // sayi2 yaz sonra 1 arttır
  print(++sayi2); // sayi2 bir arttır (1 idi 2 yap) sonra sayi2 ekle ekrana yaz.
}
