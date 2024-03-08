import 'package:flutter/material.dart';
import 'package:shelly_caprice/core/routes/routes.dart';
import 'package:shelly_caprice/presentation/widgets/navbar/nav_item_widget.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: const [
          NavItemWidget(title: "Home", routeName: routeHome,),
          NavItemWidget(title: "Portfolio", routeName: routePortfolio,),
          NavItemWidget(title: "About", routeName: routeAbout,),
          NavItemWidget(title: "Contact", routeName: routeContact,),
        ],
      ),
    );
  }
}