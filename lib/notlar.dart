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

OnGenerateRoute:
Yine MaterialApp içerisinde bulunur.
onGenerateRoute: adında bir parametresi vardır.

Bunun önceki konudan farkı sadece sayfa açma işlemini değil aynı zamanda veri aktarımı yapmak içinde
kullanabildiği için daha fazla işimize yarar.

Ben MaterialAppin içini doldurmak istemiyorum.O yüzden farklı bir dosya oluşturup orda bu işlemi
tamamlayıp materialAppte çağırıcaö
Öncelikle route_generator.dart adında bir dosya oluşturalım.

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => Redpage());

      case "/yellowPage":
        return MaterialPageRoute(builder: (context) => Yellowpage());

      case "/greenPage":
        return MaterialPageRoute(builder: (context) => Greenpage());

      default:
        return MaterialPageRoute(builder: (context) => HataSayfasi());
    }
  }
}

MaterialAppde onGenerate olan yere şu şekilde çağırıyoruz.
 onGenerateRoute: RouteGenerator.routeGenerator,

 route ile aynı anda çağırılamaz hata alırsınız ya o ya bu


 OnGenerateRoue ile kurucu yardımıyla veri gönderme

 1)Sayfaya gidecek olan butonun olduğu sayfada veri oluşturulur.
 2)Verinin gideceği sayfada kurucusunda alınacak veri için hazırlık yapılır.

 3)Rota yönetiminin olduğu sayfada(route_generator) veri verinin gideceği sayfaya gönderilir.
 case "/greenPage":
        String name = settings.arguments as String;

        return MaterialPageRoute(builder: (context) => Greenpage(ad: name));

4)Anasayfadaki veriyi gönderen butona şu yazılır
                Navigator.of(context).pushNamed("/greenPage", arguments: name);

5)Sonuç olarak veri gönderilir.




*/
