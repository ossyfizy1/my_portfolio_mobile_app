import 'package:flutter/material.dart';
import 'package:my_portfolio/auth/index.dart';
import 'package:my_portfolio/auth/route/routes.dart';
import 'package:my_portfolio/dashboard/index.dart';
import 'package:my_portfolio/dashboard/route/routes.dart';
import 'package:my_portfolio/slider/index.dart';

class RouterClass {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => const MyHomePage(
                  title: '',
                ));
      case AuthRoutes.signIn:
        return MaterialPageRoute(builder: (_) => const SignIn());

      case DashboardRoutes.dashboard:
        return MaterialPageRoute(builder: (_) => const Dashboard());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
