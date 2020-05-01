import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:readingapp/card/swipe_card.dart';
import 'package:readingapp/route/scale_route.dart';


class newscreen extends StatelessWidget {
  final thumb;
  const newscreen({this.thumb});
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
                    thumb,
                    style: GoogleFonts.baloo(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
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
                  Icon(Icons.star, color: Colors.yellow, size: 13.5),
                  Icon(Icons.star, color: Colors.yellow, size: 13.5),
                  Icon(Icons.star, color: Colors.yellow, size: 13.5),
                  Icon(Icons.star, color: Colors.yellow, size: 13.5),
                  Icon(Icons.star, color: Colors.yellow, size: 13.5),
                ],
              ),
              Container(
                padding: EdgeInsets.all(2),
                child: Text(
                  'Category',
                  style: GoogleFonts.handlee(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

//    Color color = Theme.of(context).primaryColor;

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
                  'Quisque consequat at neque in eleifend. Mauris tincidunt augue quis sapien sagittis,'
                      'non venenatis dui commodo. Donec fringilla mi ut mi tincidunt vestibulum.'
                      'Morbi viverra erat et velit elementum, ac scelerisque sem rhoncus.'
                      'Praesent scelerisque est vitae consectetur vestibulum. Nam tempus ut lorem ut consequat.'
                      '|Nam at sollicitudin augue, eu aliquet nibh. Sed tempus quis velit facilisis rutrum. '
                      'Fusce gravida hendrerit mi, eu vehicula libero pretium vitae.',
                  style: GoogleFonts.poiretOne(
                    fontSize: 13,
                    color: Colors.white,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(0),
            child: RaisedButton(
              padding: EdgeInsets.all(8),
              child: Text(
                'Read Book',
                style: GoogleFonts.handlee(),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.deepOrangeAccent,
              elevation: 8,
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: RaisedButton(
              padding: EdgeInsets.all(8),
              child: Text(
                'More info',
                style: GoogleFonts.handlee(),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.white,
              elevation: 8,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.book),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 8,
        tooltip: 'Book Library',
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
//        elevation: 20,
        color: Colors.black,
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home,color: Colors.deepOrangeAccent,),
              onPressed: () {},
            ),

            IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.deepOrangeAccent,),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/books/" + thumb + ".png",
            width: 400,
            height: 250,
//              fit: BoxFit.cover,
          ),
          titleSection,
          stitleSection,
          buttonSection,
        ],
      ),
      backgroundColor: Colors.black,
    );


  }

}
