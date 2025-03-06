import 'myStack.dart';

void main(List<String> args) {
  StringStack yeniListe = StringStack();
  yeniListe.push("Yasin");
  yeniListe.push("Ecem");

  print(yeniListe.pop());
  print(yeniListe.pop());
}
