void main(List<String> args) {
  User user1 = User();
  var user2 = NormalUser();
  ReadOnlyUser user3 = ReadOnlyUser();
  //AdminUser user4 = AdminUser();

  //upcasting "Yukarı çevirim"

  //En üst sınıf türünde referans noktası olur
  //User user5 = AdminUser();
  //User user6 = ReadOnlyUser();

  // List<NormalUser> tumNormalUser = [];
  // List<AdminUser> tumAdminUser = [];
  // List<ReadOnlyUser> tumReadOnlyUser = [];

  //Yukardaki gibi yazmaktansa upcasting ile;
  //Farklı veri türlerini tek bir veri altında sakla
  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);

  //Poliformizim print

  test(user1);
  test(user2);
  print(user3);

}

void test(User kullanici) {
  kullanici.start(); //Poliformizm
}

class User {
  String email = "";
  String password = "";

  void start() {
    print("Parent user giriş yaptı");
  }
}

//Kalıtımı sınıf türetimini extends ile yaparız

class NormalUser extends User {
  void davetEt() {
    print("Normal kullanıcı davet etti");
  }

  //override anlamı: bu sınıfın üst sınıfını ez
  @override
  void start() {
    // TODO: implement start
    print("Normal user giriş yaptı");
  }
}

class ReadOnlyUser extends NormalUser {
  void name() {
    print("Sadece okuyabilirim");
  }

  @override
  void start() {
    // TODO: implement start
    print("Sadece okuyan user giriş yaptı");
  }
}

class AdminUser extends User {
  void KullaniciSayisi() {
    print("Kullanıcı sayısı: 122");
  }

  @override
  void start() {
    // TODO: implement start
    print("Admin giriş yaptı");
  }
}
