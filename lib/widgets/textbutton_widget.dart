import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        // Add your onPressed code here!
      },
      child: const Text('Text Button'),
    );
  }
}
