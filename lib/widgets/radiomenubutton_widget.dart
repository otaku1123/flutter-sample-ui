import 'package:flutter/material.dart';

class RadioMenuButtonWidget extends StatelessWidget {
  const RadioMenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      height: 150,
      child: MyRadioMenu(),
    );
  }
}

class MyRadioMenu extends StatefulWidget {
  const MyRadioMenu({super.key});

  @override
  State<MyRadioMenu> createState() => _MyRadioMenuState();
}

class _MyRadioMenuState extends State<MyRadioMenu> {
  final FocusNode _buttonFocusNode = FocusNode(debugLabel: 'Menu Button');
  Color _backgroundColor = Colors.red;

  @override
  void dispose() {
    _buttonFocusNode.dispose();
    super.dispose();
  }

  void _setBackgroundColor(Color? color) {
    setState(() {
      _backgroundColor = color!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        MenuAnchor(
          childFocusNode: _buttonFocusNode,
          menuChildren: <Widget>[
            RadioMenuButton<Color>(
              value: Colors.red,
              groupValue: _backgroundColor,
              onChanged: _setBackgroundColor,
              child: const Text('Red Background'),
            ),
            RadioMenuButton<Color>(
              value: Colors.green,
              groupValue: _backgroundColor,
              onChanged: _setBackgroundColor,
              child: const Text('Green Background'),
            ),
            RadioMenuButton<Color>(
              value: Colors.blue,
              groupValue: _backgroundColor,
              onChanged: _setBackgroundColor,
              child: const Text('Blue Background'),
            ),
          ],
          builder:
              (BuildContext context, MenuController controller, Widget? child) {
            return TextButton(
              focusNode: _buttonFocusNode,
              onPressed: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
              child: const Text('OPEN MENU'),
            );
          },
        ),
        Expanded(
          child: Container(
            color: _backgroundColor,
          ),
        ),
      ],
    );
  }
}
