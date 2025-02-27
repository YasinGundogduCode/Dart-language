/*
for : kaç kere tekrarlanacağını bildiğimiz durumlar.
3 adet parametre bekler : değişken-tekrar sayısı-artış miktarı/azaltma miktarı
  for (int i = 0; i <= 10; i++)
Ayrıca bir dizi veya listenin tüm elemanları da okunabilir
  for (String gecici in isimListesi)
 gecici adında bir değişken oluşur ve liste içindeki değerleri gezer.

while: bir koşul doğru olduğu sürece yapılacak işlemler için kullanılır. değer döngü içinde arttırılır veya azaltılır.
  while(sayac < 10){
  yapılacak işlem;
  sayac ++;
  }

do - while : koşul sağlansın veya sağlanmasın bir kere çalışır. sonra şart kontrol edilir.
  do{
  print("Yasin");
  i++;
  }while(i < 10);
Döngü kullanımlarında break ve continue anahtar kelimelerini kullanacağımız durumlar olabilir. Kısaca;
Break : çalışan döngüden çıkılması
Continue : döngü çalışırken belirli bir durumda başa dönmesini sağlar.

Döngülerde label(etiket) kullanılabilir Böylece birden fazla döngüyü bu etiketler ile kolayca kontrol edebiliriz.
label : for(...){
  break label;
}

 */
void main(List<String> args) {
  //FOR: ne kadar tekrar olacağını bildiğimizde.

  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  //Bir dizi içindeki elemanlara erişmek içinde kullanlır.
  List isimListesi = ["Yasin", "Gündoğdu"];
  for (String gecici in isimListesi) {
    print(gecici);
  }

  for (int i = 0; i < isimListesi.length; i++) {
    print(isimListesi[i]);
  }

  //WHILE: ne kadar tekrar olacağını bilmediğimizde.

  int sayac = 0;

  while (sayac < 3) {
    //İçerideki şart true oldukça
    print("Sayaç değeri : $sayac");
    sayac++;
  }

  int sayac2 = 0;

  do {
    print("Yasin");
    sayac2++;
  } while (sayac2 < 3);

  for (int i = 0; i < 10; i++) {
    if (i % 2 != 0 && i < 5) {
      print(i);
    }
  }

  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      break; //Döngüden çıkılmasını sağlar.
    }
    print("i değerleri : $i");
  }

  print("****************");

  for (int i = 0; i <= 10; i++) {
    if (i > 5) {
      print("i değerleri : $i");
    }
    continue; //aşağıdaki kodları çalıştırma döngünün başına gel demek.
  }

  print("****************");

  distakiDongu:
  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j <= 10; j++) {
      if (i == 2) {
        // aşağıdaki kod satırını yazarsak çarpım tablosunda 2 ler ile bir çarpma işlemi olmadan devam edecektir fakat break deseydik 2 ler dahil devamını görmeden bitirecektik.
        continue distakiDongu;
      }
      print("$i * $j = ${j * i}");
    }
    print("************");
  }
}
