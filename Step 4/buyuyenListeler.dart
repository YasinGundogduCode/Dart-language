/*
Dinamik olarak büyüyen küçülen koleksiyonlarımız varsa sabit uzunluklu listeler yerine büyüyen listeleri kullanırız.
 
Bu listelere default  olarak boyut vermemiz gerekmez.

Tanımlanması sabit uzunluklu dizilere benzer sadece burada listenin boyutunu belirtmeyiz.

add eleman ekler
clear tüm elemanları siler
remove verilen elemannın siler
removeAt belirtilen indexteki elemanı siler
[] kullanarak belli bir indexteki elemanı güncelleriz

 */

void main(List<String> args) {
  
  //Büyüyebilen liste oluşturma
  //Bu listenin içinde null olabilecek int'ler var dersek null hatassı almayız (?) ile yaparız.
  //1.YÖNTEM
  List<int?> sayilar = [];
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);

  //Kalan değerlerin hepsini null olarak atanır.
  sayilar.length = 100;

  print(sayilar.length);

  //Dinamik uzunluklu liste oluşturma
  //2. YÖNTEM
  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(12);
  print(sayilar2);

  //sabit boyutlu listeyi büyüyen boyutlu olarak kullanmak için rowable: true işlemi yapılır.
  //3. YÖNTEM
  List<int> sayilar3 = List.filled(10, 10, growable: true);
  //Ekleme işlemi listenin en son elemanından yapmaya başlar
  sayilar3.add(55);
  print(sayilar3);

  //Boş listeyi büyüyen liste olarak devam edilme olayı...
  //4.YÖNTEM
  List<int> sayilar4 = List.empty(growable: true);
  sayilar4.add(55);

}
