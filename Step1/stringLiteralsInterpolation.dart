/*
String : meyinsel ifadeler için kullanılan veri türüdür.
Çift tırnak veya tek tırnak ile belirlenir.
İki stringi birleştirmek için (+) operaatörü kullanılır.

Interpolation : string ifade içinde başka bir string ifadeyi $ifade olarak kullanabiliriz.
Böylece (+) kullanmak gerekmez.
Eğer ifade birden fazla alana sahipse ${ifade.method} şeklinde kullanılır.
ayrıca interpolation diğer veri türleri içinde geçerlidir.

*/
void main(List<String> args) {
  //Literal : Değişkenlere atanabilen tek satırlı değişkenler
  var kurs = "Dart";
  print(kurs);

  String ad = "Yasin";
  String soyIsim = 'Gündoğdu';
  var ulke = 'Türkiye\'li';
  String kursTanimi = "Dart'ı ve Flutter'ı öğreniyor";

  //x.lengt -> bize karakter sayısını/uzunluğunu verir.
  //x.lengt.toString() -> işlemi ise değişkeni string türüne çevirmemizi sağlar
  //${x.lengt} -> yaparak metin içinde işlem yapabiliriz.
  print(ad + " " + soyIsim + " " + " " + ulke + " " + kursTanimi);
  print("$ad $soyIsim ");
  print("$ad olan ismimin karakter sayısı: " + ad.length.toString());
  print("İsim karakter sayısı : ${ad.length}");
  print("Soyisim karakter sayısı : ${soyIsim.length}");
  var isimUzunluk = ad.length;
  var soyisimUzunluk = soyIsim.length;
  print("$ad ve $soyIsim kelimeleri toplamı : ${soyisimUzunluk + isimUzunluk}");

  double en = 10;
  double boy = 12;
  print(
    "eni ${en.toInt()} boyu ${boy.toInt()} olan dikdörtgenin alanı : ${ (en * boy).toInt() }",
  );
  
}
