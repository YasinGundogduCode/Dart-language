import 'dart:math';

class VeritabaniIslemleri {
  String _kAdi = "Yasin";
  String _sifre = "12345";

  bool baglan() {
    if (_internetVarMi()) {
      if (_kAdi == "Yasin" && _sifre == "12345") {
        return true;
      } else
        return false;
    } else
      return false;
  }

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
