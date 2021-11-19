import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../functions/fetch_nasa.dart';
import '../component/model.dart';
import '../component/nasa_card.dart';
import '../functions/error.dart';


class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

// Promise to dart to initialize this value in the future
late Future <List<Nasa>> nasa;

class _HomeState extends State<Home> {
  @override
  void initState(){
    super.initState();
    nasa = fetchNasa();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              "KEP1ER",
              style: appBarTextStyle,
            ),

            Text(
              " ONE",
              style: appBarTextStyle2,
            ),

          ],
        ),
        elevation: 16.0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.autorenew),
            onPressed: () {
              setState((){
                nasa = fetchNasa();
              });
            },),
        ],
        ),

      // Creates widget based on latest data being received
      body: FutureBuilder(
        future: nasa,
        builder: (
            BuildContext context,
            AsyncSnapshot<List<Nasa>> snapshot) {
              // Checks if there is a jsonData being received
              if (snapshot.hasData) {
                return ListView(
                  padding: EdgeInsets.all(16.0),
                  children: snapshot.data!.map((nasa) => NasaCard(nasa: nasa))
                      .toList(),
                );
              }
              else if (snapshot.hasError){
                return Error(error: snapshot.error, title: 'Error',);
              }

              else{
                return Center (
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                  ),
                );
              }
            }
         ),
    );
  }
}
