import 'package:flutter/material.dart';
import 'package:todo_app_routes_using_provider/routes/info_page.dart';

class RouteGenerator {
  static const String homePage = '/';
  static const String infoPage = '/info';

  RouteGenerator._() {}

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case infoPage:
        return MaterialPageRoute(
          builder: (_) => const InfoPage(),
        );

      default:
        throw FormatException('Route not found');
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}