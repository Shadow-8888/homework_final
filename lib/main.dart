import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_1/ui_1.dart';
import 'package:modul4_jabborov/ui_10/ui_10.dart';
import 'package:modul4_jabborov/ui_11/ui_11.dart';
import 'package:modul4_jabborov/ui_12/ui_12.dart';
import 'package:modul4_jabborov/ui_13/ui_13.dart';
import 'package:modul4_jabborov/ui_14/ui_14.dart';
import 'package:modul4_jabborov/ui_2/ui_2.dart';
import 'package:modul4_jabborov/ui_3/ui_3.dart';
import 'package:modul4_jabborov/ui_4/ui_4.dart';
import 'package:modul4_jabborov/ui_5/ui_5.dart';
import 'package:modul4_jabborov/ui_6/ui_6.dart';
import 'package:modul4_jabborov/ui_7/ui_7.dart';
import 'package:modul4_jabborov/ui_8/ui_8.dart';
import 'package:modul4_jabborov/ui_9/ui_9.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Uyga Vazifa",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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
  List<Widget> screens = const [
    Ui1(),
    Ui2(),
    Ui3(),
    Ui4(),
    Ui5(),
    Ui6(),
    Ui7(),
    Ui8(),
    Ui9(),
    Ui10(),
    Ui11(),
    Ui12(),
    Ui13(),
    Ui14(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (screens.length > index + 1) {
            setState(() {
              index++;
            });
          }
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
