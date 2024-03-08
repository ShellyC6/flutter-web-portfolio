import 'package:flutter/material.dart';
import 'package:shelly_caprice/core/routes/routes.dart';

class NavItemWidget extends StatelessWidget {
  final String title;
  final String routeName;
  const NavItemWidget({super.key, required this.title, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: TextButton(
        onPressed: () {
          navKey.currentState?.pushNamed(routeName);
        },
        child: Text(
          title,
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}