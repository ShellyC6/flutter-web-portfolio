import 'package:flutter/material.dart';
import 'package:shelly_caprice/core/routes/router_generator.dart';
import 'package:shelly_caprice/core/routes/routes.dart';
import 'package:shelly_caprice/presentation/pages/about_page.dart';
import 'package:shelly_caprice/presentation/pages/contact_page.dart';
import 'package:shelly_caprice/presentation/pages/home_page.dart';
import 'package:shelly_caprice/presentation/pages/main_page.dart';
import 'package:shelly_caprice/presentation/pages/portfolio_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shelly CAPRICE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (_, child) => MainPage(
        child: child ?? const HomePage(),
      ),
      initialRoute: routeHome,
      /*routes: {
        routeHome: (context) => const MainPage(
          child: HomePage(),
        ),
        routePortfolio: (context) => const MainPage(
          child: PortfolioPage(),
        ),
        routeAbout: (context) => AboutPage(),
        routeContact: (context) => ContactPage(),
      }*/
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
