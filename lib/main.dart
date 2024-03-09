import 'package:flutter/material.dart';
import 'package:shelly_caprice/core/routes/router_generator.dart';
import 'package:shelly_caprice/core/routes/routes.dart';
import 'package:shelly_caprice/presentation/pages/home_page.dart';
import 'package:shelly_caprice/presentation/pages/main_page.dart';

import 'core/constants/colors.dart';

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
        primaryColor: AppColors.vert,
      ),
      builder: (_, child) => Overlay(
        initialEntries: [
          OverlayEntry(
            builder: (_) => MainPage(
              child: child ?? const HomePage(),
            ),
          )
        ],
      ),
      initialRoute: routeHome,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
