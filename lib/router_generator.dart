import 'package:flutter/material.dart';
import 'package:project_management/pages/content_page.dart';
import 'package:project_management/pages/home_page.dart';
import 'package:project_management/pages/intro_page.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const IntroPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/content':
        return MaterialPageRoute(builder: (_) => const ContentPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
