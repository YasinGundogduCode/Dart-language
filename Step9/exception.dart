void main(List<String> args) {
  print("Program başladı");

  try {
    //~ -> sayının noktalı kısmını verme demek.
    int sayi = 100 ~/ int.parse("YASİN");
    print(sayi);
  } on FormatException catch (e) {
    print(e.source);
    print(e.message);
  } catch (e) {
    print("Hata çıktı ${e}");
  }
  //Hata çıksın çıkmasın çalışacak yer
  finally {
    print("İşlem bitti");
  }

  print("Program bitti");
}
