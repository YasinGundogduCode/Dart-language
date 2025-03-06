void main(List<String> args) {
  //abstracr sınıflardan nesne üretilemiyor...

  Veritabani db = OracleDB();
  db.userDelete();
  db.userSave();
  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("silme işlemi");
  }

  @override
  void userSave() {
    print("Kaydetme işlemi");
  }

  @override
  void userUpdate() {
    print("Güncelleme işlemi");
  }
}

