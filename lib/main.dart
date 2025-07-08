import 'package:flutter/material.dart';
import 'package:isimlendirilmis_rota/greenpage.dart';
import 'package:isimlendirilmis_rota/hatasayfasi.dart';
import 'package:isimlendirilmis_rota/redpage.dart';
import 'package:isimlendirilmis_rota/route_generator.dart';
import 'package:isimlendirilmis_rota/yellowpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.routeGenerator,

      /* routes: {
        "/": (context) => Redpage(),
        "/yellowPage": (context) => Yellowpage(),
        "/greenPage": (context) => Greenpage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => HataSayfasi());
      },*/
      debugShowCheckedModeBanner: false,
      home: Redpage(),
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
