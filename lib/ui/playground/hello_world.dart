import 'package:flip_app/shared/fcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

export 'package:flutter_rating_bar/src/rating_bar_indicator.dart';

class HelloWorldPage extends StatefulWidget {
  HelloWorldPage();

  @override
  TopNavBarSimpleState createState() => new TopNavBarSimpleState();
}

class TopNavBarSimpleState extends State<HelloWorldPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: AppBar(
      //
      // ),
      extendBody: false,
      extendBodyBehindAppBar: false,
      body: SafeArea(
        child: Container(
            color: FColors.background,
            child: Center(
              /*child: Text(
                FStrings.hello_world,
                style: TextStyle(
                  color: FColors.red,
                  fontSize: 18,
                ),
              ),*/
              child: Column(
                children: <Widget>[
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  RatingBarIndicator(
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    rating: 4.7,
                    itemCount: 5,
                    itemSize: 60,
                    // emptyColor: Colors.amber.withAlpha(50),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
