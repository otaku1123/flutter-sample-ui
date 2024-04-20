import 'package:flutter/material.dart';

class FilledButtonWidget extends StatelessWidget {
  const FilledButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        // Implement button press action
      },
      child: const Text('Filled Button'),
    );
  }
}
