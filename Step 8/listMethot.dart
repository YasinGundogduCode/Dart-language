void main(List<String> args) {
  Person yasin = Person(3, "Yasin");
  Ogrenci ecem = Ogrenci(1, "ecem", 10);
  Person pinar = Ogrenci(8, "pınar", 8);
  var kemal = Person(6, "Kemal");
  var mustafa = Ogrenci(10, "Mustafa", 4);

  //Elemanları tek listede tutma:
  List<Person> tumOgrenciler = [yasin, ecem, pinar, kemal, mustafa];

  tumOgrenciler.add(yasin);
  tumOgrenciler.addAll({yasin});
  tumOgrenciler.addAll([ecem, yasin]);

  print(tumOgrenciler);

  //any : yazdığımız testi geçenler
  bool sonuc = tumOgrenciler.any((Person element) => element.id > 111);

  print(sonuc);

  //listemizi map yapısına dönüştürme işlemi
  Map<int, Person> yeniMap = tumOgrenciler.asMap();
  print(yeniMap);
  print(yeniMap[0]!.isim);

  print(tumOgrenciler.contains(yasin));
  //Bu durumda yeni bir nesne oluşturup yerini ttutar
  print(tumOgrenciler.contains(Person(3, "Yasin")));

  

  // var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));

  // whereType() : Önemli bir fonksiyon!
  // Anlamı ise tumOgrenciler adlı listeyi gez type değeri ogrenci olanları tut.
  // var listeFrom2 = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());

  // Run time de çalışır
  // var listeFrom = List<Ogrenci>.from(tumOgrenciler.whereType<Ogrenci>());

  // kod yazılırken çalışır
  // var liseOf = List<Person>.of(tumOgrenciler);

  // generate : elemanlara müdahale edebiliyoruz
  // var listGenerate = List<int>.generate(5, (index) => index * 2);

  // print(listeFrom2);
  // print("**********");
  // print(liseOf);
  // print(listeFrom);
  // print(liste1);
  // print(listGenerate);

  // unmodifiable ekleme çıkartma yapılmaz
  // var degistirilemez = List.unmodifiable([1, 2, 3]);

  // tersten yazdırma : reversed
  // print(degistirilemez.reversed);
}

class Person {
  int id = 0;
  String isim = "";
  Person(this.id, this.isim);
  @override
  String toString() {
    return "id:$id ve isim: $isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDers = 0;

  Ogrenci(id, isim, alinanDers) : super(id, isim);
  @override
  String toString() {
    return "id: $id isim:$isim dersSayı:$alinanDers\n";
  }
}
