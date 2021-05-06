import 'package:flutter/material.dart';
import '../pages/loginPage.dart';
import '../pages/botonesPage.dart';
import '../pages/botonAPage.dart';
import '../pages/botonBPage.dart';
import '../pages/botonCPage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/botonesPage':
        return MaterialPageRoute(builder: (_) => BotonesPage());
      case '/botonAPage':
        return MaterialPageRoute(builder: (_) => BotonAPage());
      case '/botonBPage':
        return MaterialPageRoute(builder: (_) => BotonBPage());
      case '/botonCPage':
        return MaterialPageRoute(builder: (_) => BotonCPage());
      default:
        return MaterialPageRoute(builder: (_) => LoginPage());
    }
  }
}
