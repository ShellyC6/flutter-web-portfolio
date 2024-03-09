import 'package:flutter/material.dart';
import 'package:shelly_caprice/core/constants/colors.dart';
import 'package:shelly_caprice/core/routes/routes.dart';

class DrawerItemWidget extends StatelessWidget {
  final String title;
  final String routeName;
  final bool selected;
  final Function onHighlight;

  const DrawerItemWidget({
    super.key,
    required this.title,
    required this.routeName,
    required this.selected,
    required this.onHighlight,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: selected ? const TextStyle(fontWeight: FontWeight.bold) : null,
      ),
      selected: selected,
      selectedColor: AppColors.vert,
      onTap: () {
        navKey.currentState?.pushNamed(routeName);
        onHighlight(routeName);
      },
    );
  }
}