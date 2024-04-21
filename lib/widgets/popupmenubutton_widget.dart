import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatelessWidget {
  const PopupMenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (BuildContext context) {
      return <PopupMenuEntry>[
        const PopupMenuItem(
          child: Text('Item 1'),
        ),
        const PopupMenuItem(
          child: Text('Item 2'),
        ),
        const PopupMenuItem(
          child: Text('Item 3'),
        ),
      ];
    });
  }
}
