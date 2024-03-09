import 'package:flutter/material.dart';
import 'package:shelly_caprice/core/routes/routes.dart';
import 'package:shelly_caprice/presentation/widgets/navbar/nav_item_widget.dart';

import '../../../core/constants/colors.dart';

class NavbarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.vert,
      height: 55.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavItemWidget(
            title: "Accueil",
            routeName: routeHome,
            selected: index==0,
            onHighlight: onHighlight,
          ),
          NavItemWidget(
            title: "Portfolio",
            routeName: routePortfolio,
            selected: index==1,
            onHighlight: onHighlight,
          ),
          NavItemWidget(
            title: "A propos",
            routeName: routeAbout,
            selected: index==2,
            onHighlight: onHighlight,
          ),
          NavItemWidget(
            title: "Contact",
            routeName: routeContact,
            selected: index==3,
            onHighlight: onHighlight,
          ),
        ],
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