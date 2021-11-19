import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import 'home.dart';

class Welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/welcomepage.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 90.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "KEP1ER ",
                          style: welcomeTextStyle,
                        ),
                        Text(
                          "ONE",
                          style: welcomeTextStyle2,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 120,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 50.0),
                        child: ElevatedButton(
                            style: raisedButtonStyle,
                            child: Text(
                              "EXPLORE",
                              style: buttonTextStyle,
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(
                                  MaterialPageRoute(
                                      builder: (context) => Home()
                                  )
                              );
                            }
                        ),
                      ),
                    ),
                ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
