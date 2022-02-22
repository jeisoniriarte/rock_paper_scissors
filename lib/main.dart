import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/screens/main_screen.dart';
import 'package:rock_paper_scissors/utils/constants.dart' as utils;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Piedra Papel Tijeras',
      theme: ThemeData(
        scaffoldBackgroundColor: utils.colorPrimary,
        fontFamily: utils.fontFamilyRegular,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainScreen(),
    );
  }
}
