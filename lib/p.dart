import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter/rendering.dart';

void main() {
//   debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                  const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  child: Text(
                    'The Little Mermaid',
                    style: GoogleFonts.aclonica(
                      color: Color(0xffB62C2B),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.yellow[500], size: 13.5),
                  Icon(Icons.star, color: Colors.yellow[500], size: 13.5),
                  Icon(Icons.star, color: Colors.yellow[500], size: 13.5),
                  Icon(Icons.star, color: Colors.yellow[500], size: 13.5),
                  Icon(Icons.star, color: Colors.yellow[500], size: 13.5),
                ],
              ),
              Container(
                padding: EdgeInsets.all(2),
                child: Text(
                  'Faiy Tales',
                  style: GoogleFonts.saira(
                    color: Color(0xffB2D374),
                    fontStyle: FontStyle.italic,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget stitleSection = Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'In this fairy tale, a short story with fantastic characters and events,'
                      ' the main character lives a royal life under the sea but constantly thinks of the world above. '
                      'When she goes to the surface for the first time at fifteen, the land dwellers on a ship captivate her,'
                      ' especially the prince whom she saves from drowning. Finding the embodiment of her love and longing, '
                      'she discovers a way to join her beloved on land and, despite the risks, pays a terrible price. '
                      'She quickly befriends the prince. After the prince marries another woman, '
                      'the story closes with the little mermaid throwing herself into the water, becoming seafoam, '
                      'and discovering that she may earn a mortal soul through good deeds yet to come',
                  style: GoogleFonts.saira(
                    fontSize: 11,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );


    Widget buttonSection = Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 0, top: 2, right: 50, bottom: 2),
            child: RaisedButton(
              padding: EdgeInsets.all(10),
              child: Text('Read Book'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Color(0xff81BBB1),
              elevation: 5,
              autofocus: true,
              focusElevation: 8,
              splashColor: Colors.deepOrange[500],
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 60, top: 2, right: 0, bottom: 2),
            child: RaisedButton(
              padding: EdgeInsets.all(10),
              child: Text('More info'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Color(0xffB7D576),
              elevation: 5,
              autofocus: true,
              focusElevation: 8,
              splashColor: Colors.deepOrange[500],
              onPressed: () {},
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
//          appBar: AppBar(
//            backgroundColor: Colors.white,
//            bottomOpacity: 20,
//          ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/1.png',
              width: 400,
              height: 250,
//              fit: BoxFit.cover,
            ),
            titleSection,
            stitleSection,
            buttonSection,
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

}
