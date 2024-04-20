import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({super.key});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        items: const [
          DropdownMenuItem(value: 1, child: Text('Item 1')),
          DropdownMenuItem(value: 2, child: Text('Item 2')),
          DropdownMenuItem(value: 3, child: Text('Item 3')),
        ],
        value: _value,
        onChanged: (value) {
          setState(() {
            _value = value!;
          });
        });
  }
}
