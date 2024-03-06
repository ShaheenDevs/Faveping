// ignore_for_file: deprecated_member_use

import 'package:faveping/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'FavePing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontFamily: 'Anta'),
          bodyText2: TextStyle(fontFamily: 'Anta'),
          headline1: TextStyle(fontFamily: 'Anta'),
          headline2: TextStyle(fontFamily: 'Anta'),
          headline3: TextStyle(fontFamily: 'Anta'),
          headline4: TextStyle(fontFamily: 'Anta'),
          headline5: TextStyle(fontFamily: 'Anta'),
          headline6: TextStyle(fontFamily: 'Anta'),
          subtitle1: TextStyle(fontFamily: 'Anta'),
          subtitle2: TextStyle(fontFamily: 'Anta'),
          caption: TextStyle(fontFamily: 'Anta'),
          button: TextStyle(fontFamily: 'Anta'),
          overline: TextStyle(fontFamily: 'Anta'),
        ),
      ),
      home: const MyBottomNavBar(),
    );
  }
}
