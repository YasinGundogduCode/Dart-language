void main(List<String> args) {
  //Immutable : Değişmez

  //Final : run time - Liste oluşturduğunda ekleme çıkarma yaparsın.

  //const : conpile time - çalışmadan önce - liste oluştuğunda ekleme çıkartma yapılmaz. Tamamen değişmez bir liste elde ederiz.

  //Burada yeri tutulan bellekteki değeri
  final li1 = [2, 3];
  final li2 = [2, 3];

  li1.add(3);
  li2.add(3);


  if (li1 == li2) {
    print("li Eşit");
  } else
    print("li Eşit değil");

  //canonicalized : Hepsi aynı yeri gösterir
  //Burada yeri tutulan liste
  const l1 = [1, 2];
  const l2 = [1, 2];

  if (l1 == l2)
    print("l eşit");
  else
    print("l eşit değil");
}
