class CemberDaire {
  double _Pi = 3.14;
  num _ycap = 1;

  CemberDaire(int ycap) {
    //(=) İle direkt veriyi set ettik
    _ycapKontrol = ycap;
  }
  //Bir kontrol durumunda set methotlar kullanılır.
  void set _ycapKontrol(int deger) {
    if (deger > 0) {
      _ycap = deger;
    } else
      _ycap = 1;
  }

  double cevreHesapla() {
    return 2 * _Pi * _ycap;
  }

  double alanHesapla() {
    return _Pi * _ycap * _ycap;
  }
}
