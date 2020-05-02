import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:readingapp/card/book_card.dart';
import 'package:readingapp/route/scale_route.dart';
import 'package:readingapp/screens/discrip_sccreen.dart';

class swipecard extends StatelessWidget {
  final String title;
  final String model;
  final List<String> thumbs;
  final Color color;

  const swipecard({this.title, this.thumbs, this.model, this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        centerTitle: true,
        title: Text(
          title,
          style: GoogleFonts.handlee(fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_shopping_cart),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 8,
        tooltip: '',
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
              icon: Icon(
                Icons.search,
                color: Colors.deepOrangeAccent,
              ),
              onPressed: () {},
//                  _onPoseSelect(
//                context,
//                'Books',
//                ['HER','The chaos of longing','This is Me Letting you go',
//                  'Soft Thrones','Dear stranger i know how you feel'],
//                Colors.white,
//              ),
            ),
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.deepOrangeAccent,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 440,
          child: Swiper(
            itemCount: thumbs.length,
            loop: false,
            viewportFraction: 0.8,
            scale: 0.82,
            outer: true,
            pagination: SwiperPagination(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(20.0),
            ),
            onTap: (index) => _onSelect(context,thumbs[index]),
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Container(
                  height: 340,
                  width: 200,
                  child: BookCard(
                    thumb: thumbs[index],
                    color: color,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _onSelect(BuildContext context,
      String thumbs,
      ) async {
    Navigator.push(
      context,
      ScaleRoute(
        page: discription(
          thumb: thumbs,
        ),
      ),
    );
  }
}
