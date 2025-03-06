void main(List<String> args) {
  //Lambda : isimlendirilimemiş fonksiyon
  Function fonsiyon1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };

  fonsiyon1(5, 5);

  var f2 = (int s1) => s1 * 2;

  Function f3 = (int s2) {
    return s2 * 2;
  };

  print(f2(5));
  print(f3(5));

  //Normal fonksiyon
  // void sayiTopla(int a, int b) {
  //   int toplam = a + b;
  //   print(toplam);
  // }
}
