void main(List<String> args) {
  //Geriye fonksiyon döndüren fonksiyon

  List<int> liste = [1, 2, 3];
  //Liste gezinme

  // liste.forEach((element) {
  //   print("Element $element");
  // });
  kendiForEachYapim(liste, (int deger, int index) {
    print("deger: $deger ve index: $index");
  });
}

void kendiForEachYapim(List<int> liste, Function callback) {
  for (int i = 0; i < liste.length; i++) {
    callback(liste[i], i);
  }
}
