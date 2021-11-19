import'package:flutter/material.dart';

const kScaffoldColor = Color(0xFF273242);
const kBackgroundColor = Color(0xFF101427);
const kKep1erColor = Colors.orangeAccent;
const kOneColor = Colors.white;

const appBarTextStyle =
TextStyle(
    fontFamily: 'DrukWide',
    fontSize: 20.0,
    fontWeight:
    FontWeight.bold,
    color: kKep1erColor
);

const appBarTextStyle2 =
TextStyle(
    fontFamily: 'DrukWide',
    fontSize: 20.0,
    fontWeight:
    FontWeight.bold,
    color: kOneColor
);

const welcomeTextStyle =
TextStyle(
    fontFamily: 'DrukWide',
    fontSize: 35.0,
    color: kKep1erColor
);

const welcomeTextStyle2 =
TextStyle(
    fontFamily: 'DrukWide',
    fontSize: 35.0,
    color: kOneColor
);

const buttonTextStyle =
TextStyle(
  fontFamily: 'Roboto',
  fontSize: 18.0,
  color: kOneColor,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.6,
);

const detailTextStyle =
TextStyle(
  fontFamily: 'Roboto',
  fontSize: 10.0,
  fontStyle: FontStyle.italic,
);

const descripTextStyle =
TextStyle(
  fontFamily: 'Roboto',
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
);

const cardTextStyle =
TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.orangeAccent,
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  ),
);