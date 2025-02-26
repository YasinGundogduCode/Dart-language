/* 

*/

void main(List<String> args) {
  num s1 = 11.9;
  num s2 = 11.9;

  if (s1 > s2) {
    //Parantez içi doğru/true ise
    print("Büyük olan sayı : $s1");
  } else if (s1 > s2) {
    //şart ifadesi yanlışsa/false ise
    print("Büyük olan sayı : $s2");
  } else {
    //tüm şartlar false ise
    print("$s1 ve $s2 eşittir.");
  }

  /*
100-90 AA
89-80 BB
79-70 CC
69-60 DD
59-40 EE
39-00 FF
*/
  var notDegeri = 75;

  if (notDegeri < 0 || notDegeri > 100) {
    print("Geçersiz bir not girilmiştir.");}
  else if (notDegeri >=90) {
    print("Notunuz : AA");
  } else if (notDegeri >= 80) {
    print("Notunuz : BB");
  } else if (notDegeri >= 70) {
    print("Notunuz : CC");
  } else if (notDegeri >= 60) {
    print("Notunuz : DD");
  } else if (notDegeri >= 40) {
    print("Notunuz : EE");
  } else {
    print("Notunuz : FF");
  }

  }



