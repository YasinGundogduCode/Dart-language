void main(List<String> args) {
  idyeGore(5).then((value) {
    print(value);
    kursGetir(value["username"]).then((List kurslar) {
      String first = kurslar[0];
      print(kurslar);
      ilkKursYorumu(first).then((String yorum) {
        print(yorum);
      });
    });
  });
}

Future<Map<String, dynamic>> idyeGore(int id) {
  print("Kullanıcı geliyor... ");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {"username": "Yasin", "id": id};
  });
}

Future<List<String>> kursGetir(String username) {
  print("$username kursları geliyor...");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ["ingilizce", "edebiyat", "matematik"];
  });
}

Future<String> ilkKursYorumu(String kursAdi) {
  print("Kurs yorumu...");
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Berbat";
  });
}
