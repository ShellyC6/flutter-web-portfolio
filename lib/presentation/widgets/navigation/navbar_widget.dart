import 'package:flutter/material.dart';
import 'package:shelly_caprice/core/constants/sizes.dart';
import 'package:shelly_caprice/core/routes/routes.dart';
import 'package:shelly_caprice/presentation/widgets/navigation/nav_item_widget.dart';

import '../../../core/constants/colors.dart';

class NavbarWidget extends StatefulWidget {
  final Function onHighlight;
  final int index;
  const NavbarWidget({super.key, required this.onHighlight, required this.index});

  @override
  State<StatefulWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.vert,
      height: AppSizes.topBarHeight,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavItemWidget(
            title: "Accueil",
            routeName: routeHome,
            selected: widget.index==0,
            onHighlight: widget.onHighlight,
          ),
          NavItemWidget(
            title: "Portfolio",
            routeName: routePortfolio,
            selected: widget.index==1,
            onHighlight: widget.onHighlight,
          ),
          NavItemWidget(
            title: "A propos",
            routeName: routeAbout,
            selected: widget.index==2,
            onHighlight: widget.onHighlight,
          ),
          NavItemWidget(
            title: "Contact",
            routeName: routeContact,
            selected: widget.index==3,
            onHighlight: widget.onHighlight,
          ),
        ],
      ),
    );
  }
}