// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:bailink1_screens/routes/app_routes.dart';
import 'package:bailink1_screens/utils/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = window.physicalSize.width;
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Real Estate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        textTheme: width > 500 ? textThemeDefault : textThemeSmall,
        primaryColor: kColorWhite,
        colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: kColorDarkBlue),
      ),
    );
  }
}
