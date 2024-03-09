import 'package:flutter/material.dart';
import 'package:shelly_caprice/core/routes/routes.dart';
import 'package:shelly_caprice/presentation/widgets/navigation/drawer_item_widget.dart';

class DrawerWidget extends StatefulWidget {
  final Function onHighlight;
  final int index;
  const DrawerWidget({super.key, required this.onHighlight, required this.index});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerItemWidget(
            title: "Accueil",
            routeName: routeHome,
            selected: widget.index==0,
            onHighlight: widget.onHighlight,
          ),
          DrawerItemWidget(
            title: "Portfolio",
            routeName: routePortfolio,
            selected: widget.index==1,
            onHighlight: widget.onHighlight,
          ),
          DrawerItemWidget(
            title: "A propos",
            routeName: routeAbout,
            selected: widget.index==2,
            onHighlight: widget.onHighlight,
          ),
          DrawerItemWidget(
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