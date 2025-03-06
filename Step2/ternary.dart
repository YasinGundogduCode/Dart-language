void main(List<String> args) {
  var s1 = 4;
  var s2 = 5;
  var s3 = 4;

  num kucukSayi;
  num buyukSayi;
  num esittir;

  if (s1 < s2) {
    kucukSayi = s1;
  } else {
    kucukSayi = s2;
  }

  //if else bloğunun kısa kullanımı; (?) -> if (:) -> else anlamına gelmektedir.

  s1 > s2 ? buyukSayi = s1 : buyukSayi = s2;

  esittir = s1 == s3 ? s1 : s3;

  print("Büyük sayi : $buyukSayi");
  print("Küçük Sayi : $kucukSayi");
  print("Eşit olan sayı : $esittir");

  //Null değer yazmak için değişkenin sonuna (?) koy

  String? ad = null;
  String? soyad = "Gündoğdu";
  String mesaj;

  //Aşağıdaki işlemin anlamı (??) eğer ad değişkeni null değilse mesaja ad koy eğer null ise soyad yazdırır. Dikkat et değişkenlerin ikisi de null olursa hata verir.

  mesaj = ad ?? soyad;
  print("Merhaba Sayın $mesaj ");
}
