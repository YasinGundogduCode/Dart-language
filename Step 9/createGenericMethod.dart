void main(List<String> args) {
  double ortalama = ortalamaBul<double>(5.3, 15.2);
  double ortalama2 = ortalamaBul<int>(5, 15);

  print(ortalama);
  print(ortalama2);
}

double ortalamaBul<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}
