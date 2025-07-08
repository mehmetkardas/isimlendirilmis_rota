/*
-MaterialApp projenin bel kemiği olduğunu daha önce söylemiştik.Bunu ispatlamanın en güzel örneği rotalardır.
MaterialPageRoute sınıfı MaterialApp olmadan çalışmaz.

-Ben rotalara niye ihtiyaç duyarım?Ben her sayfa geçişinde MaterialPageRoute sınıfını çağırıyor muyum?
Bu performans açısından iyi değil.Bu yüzden rotaları kullanmak daha performanslıdır.

Rota kullanmanın iki yolu vardır.Bir tanesi standart olan diğeri gelişmiş olan.

Aralarındaki fark biri sadece sayfa geçişini sağlar.

Diğeri ise hem sayfa geçişini hemde veri aktarımını sağlar ama daha karmaşıktır.

Rotaları tanımlamak için MaterialApp içerisindeki routes parametresi kullanılır ve bizden
bir map ister içine rota ister.

Eğer ana rotayı tanımlamak istersek / işareti ile tanımlarız
        "/": (context) => Redpage(),
Eğer bunu yapıyorsunuz diğer rotaların başına / hep konulmalıdır.

Ayrıca bu kök dizinini (/) kullanacaksanız home parametresini kullanamazsınız kaldırmanız gerekir.

Eğer bu rotada herhangi bir yanlış yol olursa çalışan özel bir parametre vardır bu da materialApp içerisindedir.
Routesin bittiği yere sunu tanımlıyoruz tabi daha öncesinde bir hata sayfası oluştturduk

onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => HataSayfasi());
      },


*/
