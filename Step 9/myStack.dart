class StringStack {
  List<String> _stringStack = <String>[];

//İlk giren son çıkart stack yapısı
  void push(String ekle) {
    _stringStack.add(ekle);
  }

  String pop() {
    return _stringStack.removeLast();
  }
}
