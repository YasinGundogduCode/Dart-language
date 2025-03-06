//Oluşturduğumuz harici dosyayı kullanmamızı sağlar
import 'musteri.dart';
import 'vt.dart';

//Bu dosyanın ama veri gizliliğini sağlayacak yöntemleri kullanmaktır.

//Bir sınıfı vs. private yapma (_) iledir
void main(List<String> args) {
  Musteri m1 = Musteri(311);
  m1.bilgileriYazdir();
  Musteri m2 = Musteri(-999);
  m2.bilgileriYazdir();

  VeritabaniIslemleri db = VeritabaniIslemleri();
  db.baglan();

  bool sonuc = db.baglan();
  if (sonuc) {
    print("Bağlandı");
  } else
    print("Bağlanmadı");
}
