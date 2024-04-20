import 'package:flutter/material.dart';

class DrawerButtonWidget extends StatelessWidget {
  const DrawerButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
