import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKoku(-8);
    //toStringAsFixed()->virgülden sonra kaç rakam olsun
    print("değer: ${deger.toStringAsFixed(0)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print("Genel hata");
  }
}

double kareKoku(int i) {
  if (i < 0) {
    throw FormatException("Pozitif sayı girin");
    // print("Buraya ulaşmayacak");
  } else
    return sqrt(i);
}
