import 'package:flutter/material.dart';
import 'package:sample_ui_app/widgets/drawerbutton_widget.dart';
import 'package:sample_ui_app/widgets/dropdownbutton_widget.dart';
import 'package:sample_ui_app/widgets/elevatedbutton_widget.dart';
import 'package:sample_ui_app/widgets/filledbutton_widget.dart';
import 'package:sample_ui_app/widgets/floatingactionbutton_widget.dart';
import 'package:sample_ui_app/widgets/iconbutton_widget.dart';
import 'package:sample_ui_app/widgets/menuitembutton_widget.dart';
import 'package:sample_ui_app/widgets/outlinedbutton_widget.dart';
import 'package:sample_ui_app/widgets/popupmenubutton_widget.dart';
import 'package:sample_ui_app/widgets/radiomenubutton_widget.dart';
import 'package:sample_ui_app/widgets/segmentedbutton_widget.dart';
import 'package:sample_ui_app/widgets/textbutton_widget.dart';
import 'package:sample_ui_app/widgets/togglebuttons_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('UI確認アプリ'),
      ),
      drawer: const Drawer(
        child: Center(
          child: Text('Drawer'),
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('DrawerButtonWidget'),
              DrawerButtonWidget(),
              Divider(),
              Text('DropdownButtonWidget'),
              DropdownButtonWidget(),
              Divider(),
              Text('ElevatedButtonWidget'),
              ElevatedButtonWidget(),
              Divider(),
              Text('FilledButtonWidget'),
              FilledButtonWidget(),
              Divider(),
              Text('FloatingActionButtonWidget'),
              FloatingActionButtonWidget(),
              Divider(),
              Text('IconButtonWidget'),
              IconButtonWidget(),
              Divider(),
              Text('MenuItemButtonWidget'),
              MenuItemButtonWidget(),
              Divider(),
              Text('OutlinedButtonWidget'),
              OutlinedButtonWidget(),
              Divider(),
              Text('PopupMenuButtonWidget'),
              PopupMenuButtonWidget(),
              Divider(),
              Text('RadioMenuButtonWidget'),
              RadioMenuButtonWidget(),
              Divider(),
              Text('SegmentedButtonWidget'),
              SegmentedButtonWidget(),
              Divider(),
              Text('TextButtonWidget'),
              TextButtonWidget(),
              Divider(),
              Text('ToggleButtonsWidget'),
              ToggleButtonsWidget(),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
