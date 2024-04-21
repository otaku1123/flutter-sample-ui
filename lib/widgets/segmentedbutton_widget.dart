import 'package:flutter/material.dart';

class SegmentedButtonWidget extends StatefulWidget {
  const SegmentedButtonWidget({super.key});

  @override
  State<SegmentedButtonWidget> createState() => _SegmentedButtonWidgetState();
}

class _SegmentedButtonWidgetState extends State<SegmentedButtonWidget> {
  int value = 1;
  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
        segments: const [
          ButtonSegment(value: 1, label: Text('Segment 1')),
          ButtonSegment(value: 2, label: Text('Segment 2')),
          ButtonSegment(value: 3, label: Text('Segment 3')),
        ],
        selected: {value},
        onSelectionChanged: (val) {
          setState(() {
            value = val.first;
          });
        });
  }
}
