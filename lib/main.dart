import 'package:finvitation/ui/res/colors.dart';
import 'package:flutter/material.dart';
import 'ui/pages/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: primaryColor,
          buttonTheme: ButtonThemeData(
            padding: const EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0)),
          )),
      home: LandingPage(),
    );
  }
}
