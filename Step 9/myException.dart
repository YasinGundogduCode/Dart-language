void main(List<String> args) {
  try {
    Ogrenci yasin = Ogrenci(-5);
    print(yasin.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  } finally {
    print("Program bitti");

    try {
      Ogrenci yasin = Ogrenci(-5);
      print(yasin.yas);
    } catch (e) {
      print(e);
    }
  }
  
}

class AgeException implements Exception {
  String mesaj = "";

  AgeException({this.mesaj = "AgeException"});

  @override
  String toString() {
    return "Hatanın tostring metotu çalıştı";
  }
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException(mesaj: "AgeException - Pozitif bir değer giriniz...");
    } else
      this.yas = yas;
  }
}
