import 'dart:io';

void main(List<String> args) {
  print("Çocuk ekmek almak için çıkar");
  //senkronEkmekAlmaSuresi();
  Future<String> sonuc = asenkronEkmekAlmaSuresi();
  
  //Tamamlandığında çalışır her şey okey ise çalış...
  sonuc.then((String value) => print(value))
  //eğer bir sorun varsa çalışacak
  .catchError((hata) {
    print(hata);
    //Hata olsun olmasın çalışır...
  }).whenComplete(()=>print("operasyon bitti"));

  print("Çocuk eve ekmekle gelir");
  print("Ekmeği yer");
}

Future<String> asenkronEkmekAlmaSuresi() {
  print("Çocuk bakkala varır");

  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    return "Çocuk bakkaldan çıkar";
  });
  return sonuc;
}

void senkronEkmekAlmaSuresi() {
  print("Çocuk bakkala varır");
  sleep(Duration(seconds: 2));
  print("Çocuk bakkaldan çıkar");
}
