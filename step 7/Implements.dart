
void main(List<String> args) {
  //implamet dart dilinde interfaceymiş gibi davranır
  //Sınıfımıza başka sınıfların özelliklerini ekleriz
}

abstract class living {
  void live();
  
}

abstract class flys {
  void fly();
}

abstract class Run {
  void run();
}

abstract class Brak {
  void bark();
}

//Sınıfımız birden fazla sınıfta bulunan yapıları kullanıyorsa: extends yerine implements yazarız.

//implements:
class Dog implements living, Run, Brak {
  @override
  void bark() {}

  @override
  void run() {}
  
  @override
  void live() {
    // TODO: implement live
  }
}

//extends:
class Bird extends flys{
  @override
  void fly() {
    // TODO: implement fly
  }
}


class People implements living,Run{
  @override
  void live() {
    // TODO: implement live
  }

  @override
  void run() {
    // TODO: implement run
  }

}
