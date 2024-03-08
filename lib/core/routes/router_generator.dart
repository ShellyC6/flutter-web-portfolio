import 'package:flutter/material.dart';
import 'package:shelly_caprice/core/routes/routes.dart';
import 'package:shelly_caprice/core/routes/unanimated_page_route.dart';
import 'package:shelly_caprice/presentation/pages/about_page.dart';
import 'package:shelly_caprice/presentation/pages/contact_page.dart';
import 'package:shelly_caprice/presentation/pages/home_page.dart';
import 'package:shelly_caprice/presentation/pages/portfolio_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return UnanimatedPageRoute(builder: (_) => const HomePage());
      case routePortfolio:
        return UnanimatedPageRoute(builder: (_) => const PortfolioPage());
      case routeAbout:
        return UnanimatedPageRoute(builder: (_) => const AboutPage());
      case routeContact:
        return UnanimatedPageRoute(builder: (_) => const ContactPage());
      default:
        return UnanimatedPageRoute(builder: (_) => const HomePage());
    }
  }
}