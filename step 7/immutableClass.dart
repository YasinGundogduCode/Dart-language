void main(List<String> args) {
  Student yasin = Student(22, "Yasin");
  yasin.id = 55;
  yasin.isim = "Yasin2";

  const Student2 ecem = Student2(21, "Ecem");
  const Student2 ecem2 = Student2(21, "Ecem");
  // ecem.id = 22;
  // ecem.isim = "ecem2";

  if (ecem == ecem2)
    print("Eşit");
  else
    print("Eşit değil");
}

class Student {
  int id;
  String isim;

  Student(this.id, this.isim);
}

//Aynı değerleri farklı yerlere eklemektense tek yerde aynı olan değerleri tutmak için constructer' a const eklememiz lazım
class Student2 {
  final int id;
  final String isim;

  const Student2(this.id, this.isim);
}
