import 'dart:io'; // Kullanıcıdan veri almak için bu dosyayı dahil etmek zorunndayız

void main(List<String> args) {
  print("Adınızı Giriniz");
  // ? işeri koymamızın sebebi kullanıcı null değer verme durumu olmasından dolayıdır...

  String? isim = stdin.readLineSync();
  print("Adınız : $isim");

  //Sayısal veri alma

  print("Yaşınızı giriniz: ");

  //Girilen değeri int yapma
  //int.parse(stdin.readLineSync())

  //(!) işareti ile de değerin null olmadığını söyleriz.
  int? yas = int.parse(stdin.readLineSync()!);
  yas += 5;
  print("Yaşınız : $yas");
}
