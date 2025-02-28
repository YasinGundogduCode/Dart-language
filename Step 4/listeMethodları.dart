void main(List<String> args) {
  //Direkt elemanları verirsek büyüyebilen liste olur.
  List<int> sayilar = [10, 8, 4, 11, 2];

  //YARDIMCI METHODLAR : Sabit boyutda çalışmaz çoğu

  //Listenin İlk elemanını yazdır .first
  print(sayilar.first);

  //Listenin Son elemanını yazdır .last
  print(sayilar.last);

  //Liste boş mu? kontrolü .isEmpty : boş ise true verir
  print(sayilar.isEmpty);

  //Boş değilse yapılacak işlemler gibi bir kontrol.
  print(sayilar.isNotEmpty);

  //Elemanları ters sırada yazdırma reversed
  print(sayilar.reversed);

  //Listenin sonuna eleman ekleme
  sayilar.add(31);

  //Liste başından itibaren gördüğü ilk 3 rakamını çıkartır.
  sayilar.remove(3);

  //Belirli indexteki elemanı çıkart
  sayilar.removeAt(sayilar.length - 1);

  //Belirli bir rakam kontrolü yapmak için
  //Mesela listede 3 rakamı var mı

  if (sayilar.contains(2)) {
    print("Lİstede 2 var");
  } else {
    print("Listede 2 yok");
  }

  //Belirli indexteki değeri okuma
  print(sayilar.elementAt(2));

  //Belirli bir sayının indx'ini okuma
  print(sayilar.indexOf(8));

  //Bütün listeyi temizler
  sayilar.clear();
  print(sayilar);
}
