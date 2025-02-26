/*Değişken: veriyi hafızaya almak. işlem yapmak istediğimizde çağırdığımızda gelmesini sağlamak
Özetle programlama dilinde işlediğimiz verileri bilgisayarın hafızasında tutmak için yapmış olduğumuz tanımlama.

num : tamsayı veya ondalıklı bir ifadeyi saklayabilir
int = tamsayıları saklarken kullanılan veri türüdür.
hexedecimal değerleri de saklayabilir. 0xAABBCC

double = ondalıklı ifadeler için kullanılan veri türüdür.
expones değerleri saklayabilir. 1.42e5

var anahtar kelime ile de tamsayı veya ondalıklı ifade saklanabilir.
var olarak int değer atandıysa sonrasında double değre atanamaz.

değişkenlerimize ilde değerleri atamak zorundayız. null kabul etmez.
null değeri kabul etmek istiyorsak int?, double? bool? gibi farklı değişken tanımları yapmalıyız.

boolean = true/false değeri alır
*/
void main(List<String> args) {
  int yas = 22;
  print(yas);

  yas = 21;
  print(yas);

  num yil = 2003;
  print(yil);

  double sayi = 12.2;
  double sayi2 = 12;
  print(sayi);
  print(sayi2);

  //Tam sayıya dönüştürme yöntemi
  int kilo = 75.6.toInt();
  print(kilo);

  var isim = "Yasin";
  print(isim);

  //Tanımlanmamış değer null değer almaz. veri değişken türleri default olarak null değer almaz.
  // int num;
  // print(num);

  //Değişkene null değer atamak. (?) işareti koyduktan sonra değişken null değer alabilir demiş oluyoruz.
  double? nul = null;
  print(nul);
}
