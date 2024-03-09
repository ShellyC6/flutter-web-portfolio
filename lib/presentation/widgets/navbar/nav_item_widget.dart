import 'package:flutter/material.dart';
import 'package:shelly_caprice/core/routes/routes.dart';

import '../../../core/constants/colors.dart';

class NavItemWidget extends StatelessWidget {
  final String title;
  final String routeName;
  final bool selected;
  final Function onHighlight;

  const NavItemWidget({
    super.key,
    required this.title,
    required this.routeName,
    required this.selected,
    required this.onHighlight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: TextButton(
        onPressed: () {
          navKey.currentState?.pushNamed(routeName);
          onHighlight(routeName);
        },
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.transparent,
            shadows: const [
              Shadow(
                  color: AppColors.blanc,
                  offset: Offset(0, -5))
            ],
            decoration: (selected) ? TextDecoration.underline : null,
            decorationColor: AppColors.blanc,
            decorationThickness: 2,
          ),
        ),
      ),
    );
  }
}