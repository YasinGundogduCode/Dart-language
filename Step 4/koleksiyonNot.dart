void main(List<String> args) {
  var liste = <String>[];
  var map = <String, dynamic>{"yas": 34};
  var set = <String>{"yasin", "hasan"};

  var tekSayi = [1, 3, 5];
  var ciftSayi = [2, 4, 6];

  //spreads operatörü

  var sonListe = [...tekSayi, ...ciftSayi];

  var map1 = {'ad': 'yasin'};
  var map2 = {'yas': 22};
  var sonMap = {...map1, ...map2};
  //senin ben amk
  //bakalım ders çalışıyormuymuşsun onu bi denemek nistedim  götoş
  print(sonMap);
  print(liste);
  print(map);
  print(set);
  print(sonListe);
}
