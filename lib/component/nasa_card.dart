import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_ink_well/image_ink_well.dart';
import '../utilities/constants.dart';
import '../screens/detail_page.dart';
import 'model.dart';

class NasaCard extends StatelessWidget {

  final Nasa nasa;

  const NasaCard({Key? key, required this.nasa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 16.0,
      margin: EdgeInsets.all(12.0),
      color: Color(0xFF101427),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: <Widget> [
          Stack(
            children:<Widget>[
              Container(
                width: 400,
                height: 300,
                // ignore: prefer_const_constructors
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                  ),
                ),
              ),
              Hero(
                tag: nasa.date,
                child: RoundedRectangleImageInkWell(
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Details(nasa: nasa),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(12.0),
                  height: 290,
                  width: 400,
                  fit: BoxFit.cover,
                  backgroundColor: Colors.transparent,
                  image: CachedNetworkImageProvider(nasa.url),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
            child: Text(
              nasa.title,
              style: cardTextStyle,
            ),
          ),
        ],
      ),
    );

  }
}
