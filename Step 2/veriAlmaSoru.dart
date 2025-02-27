/*
Soru 1 : İki notu girilen öğrencnin ortalamasını bularak sonucu ekranda gösterin.

Soru 2 : Fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayınız.
 */
import 'dart:io';

void main(List<String> args) {
  //SORU 1
  print("1. Notunuzu giriniz : ");
  int? not1 = int.parse(stdin.readLineSync()!);

  print("2. Notunuzu giriniz");
  int not2 = int.parse(stdin.readLineSync()!);

  double ortalama = ((not1 + not2) / 2);
  print("Ortalamanız : $ortalama");

  //SORU 2
  print("Ürün fiyatı giriniz :");
  int fyt = int.parse(stdin.readLineSync()!);
  double kdv = ((fyt * 18) / 100) + fyt;
  print("Kdv dahil : $kdv");
}
