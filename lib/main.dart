import 'package:flutter/material.dart';
import 'utilities/constants.dart';
import 'screens/welcome_page.dart';

void main() {
  runApp(Nasa());
}

class Nasa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KEP1ER ONE',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kScaffoldColor,
        appBarTheme: AppBarTheme(backgroundColor: kBackgroundColor),
      ),
      home: Welcome(
      ),
    );
  }

}

