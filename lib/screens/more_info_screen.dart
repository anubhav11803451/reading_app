import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class moreinfo extends StatelessWidget {
  final thumb;
  const moreinfo({this.thumb});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'More Info',
          style: GoogleFonts.handlee(),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            height: 340,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.deepOrangeAccent,
                  blurRadius: 8,
                  offset: Offset(0, 8),
                ),
              ],
              image: DecorationImage(
                  image: AssetImage('assets/books/' + thumb + '.png'), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 15),
          Text(
            thumb,
            style: GoogleFonts.baloo(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Author : Someone',
                style: GoogleFonts.poiretOne(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Illustrator : Someone',
                style: GoogleFonts.poiretOne(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Published : Someday',
                style: GoogleFonts.poiretOne(color: Colors.white),
              ),
              SizedBox(
                height: 90,
              ),
              Text(
                'Designed with 🧡 by :  Anubhav Kumar Gupt',
                style: GoogleFonts.handlee(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
