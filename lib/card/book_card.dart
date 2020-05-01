import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookCard extends StatelessWidget {
  final String thumb;
  final Color color;

  const BookCard({this.thumb, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.deepOrangeAccent,
            blurRadius: 8.0,
            offset: Offset(0.0, 8.0,)
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/books/" + thumb + ".png",
              fit: BoxFit.contain,
            ),
          ),
          Text(
            thumb,
            style: GoogleFonts.handlee(fontSize: 15, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
