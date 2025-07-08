import 'package:flutter/material.dart';
import 'package:isimlendirilmis_rota/greenpage.dart';
import 'package:isimlendirilmis_rota/hatasayfasi.dart';
import 'package:isimlendirilmis_rota/redpage.dart';
import 'package:isimlendirilmis_rota/yellowpage.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => Redpage());

      case "/yellowPage":
        return MaterialPageRoute(builder: (context) => Yellowpage());

      case "/greenPage":
        String name = settings.arguments as String;

        return MaterialPageRoute(builder: (context) => Greenpage(ad: name));

      default:
        return MaterialPageRoute(builder: (context) => HataSayfasi());
    }
  }
}
