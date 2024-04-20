import 'package:flutter/material.dart';

class MenuItemButtonWidget extends StatelessWidget {
  const MenuItemButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 400,
      height: 200,
      child: MyMenuBar(),
    );
  }
}

class MenuEntry {
  const MenuEntry({required this.label, this.onPressed, this.menuChildren})
      : assert(menuChildren == null || onPressed == null,
            'onPressed is ignored if menuChildren are provided');
  final String label;

  final VoidCallback? onPressed;
  final List<MenuEntry>? menuChildren;

  static List<Widget> build(List<MenuEntry> selections) {
    Widget buildSelection(MenuEntry selection) {
      if (selection.menuChildren != null) {
        return SubmenuButton(
          menuChildren: MenuEntry.build(selection.menuChildren!),
          child: Text(selection.label),
        );
      }
      return MenuItemButton(
        onPressed: selection.onPressed,
        child: Text(selection.label),
      );
    }

    return selections.map<Widget>(buildSelection).toList();
  }
}

class MyMenuBar extends StatefulWidget {
  const MyMenuBar({
    super.key,
  });

  @override
  State<MyMenuBar> createState() => _MyMenuBarState();
}

class _MyMenuBarState extends State<MyMenuBar> {
  String? _lastSelection;

  Color get backgroundColor => _backgroundColor;
  Color _backgroundColor = Colors.red;
  set backgroundColor(Color value) {
    if (_backgroundColor != value) {
      setState(() {
        _backgroundColor = value;
      });
    }
  }

  bool get showingMessage => _showMessage;
  bool _showMessage = false;
  set showingMessage(bool value) {
    if (_showMessage != value) {
      setState(() {
        _showMessage = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: MenuBar(
                children: MenuEntry.build(_getMenus()),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            color: backgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_lastSelection != null
                    ? 'Last Selected: $_lastSelection'
                    : ''),
              ],
            ),
          ),
        ),
      ],
    );
  }

  List<MenuEntry> _getMenus() {
    final List<MenuEntry> result = <MenuEntry>[
      MenuEntry(
        label: 'Menu',
        menuChildren: <MenuEntry>[
          MenuEntry(
            label: 'Background Color',
            menuChildren: <MenuEntry>[
              MenuEntry(
                label: 'Red Background',
                onPressed: () {
                  setState(() {
                    _lastSelection = 'Red Background';
                    backgroundColor = Colors.red;
                  });
                },
              ),
              MenuEntry(
                label: 'Green Background',
                onPressed: () {
                  setState(() {
                    _lastSelection = 'Green Background';
                    backgroundColor = Colors.green;
                  });
                },
              ),
              MenuEntry(
                label: 'Blue Background',
                onPressed: () {
                  setState(() {
                    _lastSelection = 'Blue Background';
                    backgroundColor = Colors.blue;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    ];
    return result;
  }
}
