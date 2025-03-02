class Musteri {
  int? _musteriNo;

  // Musteri(this._musteriNo) {
  // }

  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }

  //Veri atamaya yarayan fonksiyonlara setter denir.

  void _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void bilgileriYazdir() {
    print("Müsteri oluşturuldu musteri no: $_musteriNo");
  }
}
