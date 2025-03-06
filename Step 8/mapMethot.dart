void main(List<String> args) {
  //Map kullanımları
  Map<String, dynamic> map = Map();
  var map2 = <String, dynamic>{};
  var map3 = {};

  //Set ile farklı
  var map4 = {5};

  //Verileri saklama
  map["id"] = 5;
  map["isim"] = "Yasin";
  map["renk"] = "Yeşil";

  //Constructors
  var yeniMap = Map.from({"deger": "yeni"});

  var mapFromEntries = Map.fromEntries(map.entries);
  print(mapFromEntries);

  //fromIterable : amacı bir iterable den yeni map oluşturma
  var liste = [1, 2, 3, 4];

  //sadece listeden map oluşturma
  var mapItrable0 = Map.fromIterable(liste);
  print(mapItrable0);

  //Yapıya müdahale edebildiğimiz hali:
  var mapIterable = Map.fromIterable(
    liste,
    key: (key) {
      return key;
    },
    value: (value) {
      return value * 2;
    },
  );

  print(mapIterable);
}
