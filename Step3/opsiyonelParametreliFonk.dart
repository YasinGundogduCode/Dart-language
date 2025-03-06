/*
Methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilse de olur verilmese de durumlarında süslü ve köşeli parantez kullanırız.

Eğer köşeli parantez [] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır.

Eğer süslü parantez {} kullanırsak burada da parametreler isteğe bağlıdır ama bu parametreleri belirtirken sıralama önemini kaybeder ve de parametreleri geçerken isimlerini vermek zorunda kalırız.

Ayrıca method tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. Bu değerler sayesinde eğer kullanıcı method parametrelerini atamamışsa bu varsayılan değerler kullanılır.
*/

void main(List<String> args) {
  print("Toplam : " + sayilariTopla(5, 6, 7).toString());
  print("Çarpım : " + sayilariCarp(3, 3).toString());
  print("Fark : " + sayilariCikart(s3: 5, s2: 6, s1: 7).toString());
}

//required parametreler
int sayilariTopla(int s1, int s2, int s3) {
  return s1 + s2 + s3;
}

//Değer girme aralığını kullanıcıya bırakmak için;optional
//Burada s3'e 1 değeri verdik işleme göre değişir bu method çarpma işlemi yaptığı için kullanıcıya minimum 2 değer girmesini söyledik ve 3. değeri biz default olarak etsiz eleman verdik.Yani zorunlu olarak 2 adet parametre girilmeli
int sayilariCarp(int s1, int s2, [int s3 = 1]) {
  return s1 * s2 * s3;
}

//Burada yine opsiyonel yapıyoruz parametreleri.
//Yani parametreleri kendi istediğimiz sırayla veriyoruz mesela s1 değişkenini en son olarak da verebiliriz.
//Hata almamak null değere düşmemek için default olarak 0 atamak zorundayız.
int sayilariCikart({int s1 = 0 , int s2 = 0 , int s3 = 0}) {
  return s1 - s2 - s3;
}
