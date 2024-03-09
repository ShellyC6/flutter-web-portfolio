import 'package:flutter/material.dart';
import 'package:shelly_caprice/presentation/widgets/navbar/navbar_widget.dart';

class MainPage extends StatelessWidget {
  final Widget child;
  const MainPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          NavbarWidget(),
          Expanded(child: child),
        ],
      ),
    );
  }

}