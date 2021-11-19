import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../component/model.dart';
import 'package:transparent_image/transparent_image.dart';

class Details extends StatelessWidget {
  final Nasa nasa;

  const Details({Key? key, required this.nasa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text(
          nasa.title
        ),
      ),

      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
             Center(
                  child: CircularProgressIndicator(
                  ),
              ),
              Hero(
                tag: nasa.date,
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: nasa.url,
                  fit: BoxFit.contain
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Text(
                nasa.date,
                style: detailTextStyle,
                ),
                Expanded(
                  child:  Text(
                    "© ${nasa.copyright}",
                    softWrap: true,
                    textAlign: TextAlign.end,
                    style: detailTextStyle,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            indent: 20.0,
            endIndent: 20.0,
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
            nasa.description,
            textAlign: TextAlign.justify,
            style: descripTextStyle,
              ),
            ),
        ],
      ),
    );
  }
}
