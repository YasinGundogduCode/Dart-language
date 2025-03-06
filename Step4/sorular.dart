/*  SORULAR
1-Şehirleri tutan bir liste oluşturun, 4 tane il ekleyip sırasıyla ekrana yazdırın

2-Keyleri string değerleri dynamic oln bir map oluşturun. Bu map yapısında bilgisayarınız işlemci çekirdek sayısını, ram miktarını, ve ssd olup olmadığı bilgisini tutun ve ekrana yazdırın.


3- 
* 5 elemanlı iki farklı liste olşturun elemanlar 0-50 ye rastgele şekilde doldurulsun.
* Bu elemanları tek bir listeye aktarlsın
* Oluşan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırsın.

4-
* Kullanıcıdan aldığınız int pozitif sayıları bir listede tutun, kullanıcı -1 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın.



 */
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //SORU 1

  List<String> sehirler = List.filled(
    4,
    "",
  ); //Bizden string değer istediği için o kısmı boş bırakıyoruz

  sehirler[0] = "İstanbul";
  sehirler[1] = "İzmir";
  sehirler[2] = "Tekirdağ";
  sehirler[3] = "Hakkari";
  for (int i = 0; i < sehirler.length; i++) {
    print(sehirler[i]);
  }

  //SORU 2

  // Map yapısı ile oluşturuluş koleksiyon yapısıdır.
  Map<String, dynamic> bilgi = {};
  bilgi["işlemci"] = 16;
  bilgi["ram miktarı"] = 8;
  bilgi["ssd var mı"] = true;

  print("Bilgisayar hakkında: ");
  // Bu şekilde yazım hem değeri hem key değerini verir.

  //Burada önemli bir nokta var o da şu,
  //bilgi.entries : hem key hem de value değerleri
  //bilgi.keys : sadece key değerleri
  //bilgi.values : sadaece value değerleri
  for (var oaankiEntry in bilgi.entries) {
    //koleksiyondaki key ve valueleri yazdırmasını istedik
    print("${oaankiEntry.key} : ${oaankiEntry.value}");
  }

  //Soru 3
  List<int> liste1 = List.filled(5, 0);
  var liste2 = List.filled(5, 0);
  List<int> sonListe = <int>[];
  var kareler = <int>{};

  for (int i = 0; i < liste1.length; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }
  print(liste1);
  print(liste2);

  //Yaptığı işlem liste 1 ve 2 nin tüm elemanlarını eklemek için kullanılır.
  sonListe = [...liste1, ...liste2];
  print(sonListe);

  for (int gecici in sonListe) {
    kareler.add(gecici * gecici);
  }
  print(kareler);

  //Soru 4

  num girilenNot = 0;
  List<num> pozitifDeger = <num>[];

  do {
    print("notunuzu giriniz çıkış için -1");
    //Null olmaması için (!) koyduk
    girilenNot = int.parse(stdin.readLineSync()!);

    if (girilenNot != -1) {
      pozitifDeger.add(girilenNot);
    }
  } while (girilenNot != -1);
  num ortalama = elemanlarinOrtalamasi(pozitifDeger);
  print("Girilen Not Adedi : $pozitifDeger");
  print("Sayıların Ortalaması : $ortalama");
}

double elemanlarinOrtalamasi(List<num> liste) {
  num toplam = 0;
  for (int i = 0; i < liste.length; i++) {
    toplam += liste[i];
  }
  return toplam / liste.length;
}
