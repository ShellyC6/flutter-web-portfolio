import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shelly_caprice/core/constants/colors.dart';
import 'package:shelly_caprice/core/constants/sizes.dart';
import 'package:shelly_caprice/presentation/widgets/navigation/drawer_widget.dart';
import 'package:shelly_caprice/presentation/widgets/navigation/navbar_widget.dart';

import '../../core/routes/routes.dart';

class MainPage extends StatefulWidget {
  final Widget child;

  const MainPage({super.key, required this.child});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => Scaffold(
        backgroundColor: AppColors.blanc,
        body: Column(
          children: [
            NavbarWidget(onHighlight: onHighlight, index: index,),
            Expanded(child: widget.child),
          ],
        ),
      ),
      mobile: (BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(AppSizes.topBarHeight),
          child: AppBar(
            backgroundColor: AppColors.vert,
            elevation: 0,
          ),
        ),
        body: Column(
          children: [
            Expanded(child: widget.child),
          ],
        ),
        drawer: DrawerWidget(onHighlight: onHighlight, index: index,),
      ),
    );
  }

  void onHighlight(String route) {
    switch (route) {
      case routeHome:
        changeHighlight(0);
        break;
      case routePortfolio:
        changeHighlight(1);
        break;
      case routeAbout:
        changeHighlight(2);
        break;
      case routeContact:
        changeHighlight(3);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}