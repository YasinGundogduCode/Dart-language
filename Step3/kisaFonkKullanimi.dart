void main(List<String> args) {
  sayilariTopla();
  print("Fark : " + sayilariCikart(10, 5).toString());
  print("Çarpım : " + sayilariCarp(5, 2).toString());
  print("Büyük sayı : " + buyukBul(15, 16).toString());
  print("Küçük sayı : " + kucukBul(5, 6).toString());
}

void sayilariTopla() {
  int s1 = 10, s2 = 5;
  print("Toplam : ${s1 + s2}");
}

//TEK SATIRLIK KISA GÖSTERİM (FAT ARROW)
int sayilariCikart(int s1, int s2) => s1 - s2;

int sayilariCarp(int s1, int s2) => s1 * s2;


int buyukBul(int s1, int s2) {
  if (s1 > s2) {
    return s1;
  } else {
    return s2;
  }
}

//ternary kullanımı
int kucukBul(int s1, int s2) => s1 < s2 ? s1 : s2;
