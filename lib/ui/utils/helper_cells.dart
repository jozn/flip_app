import 'package:flip_app/ui/playground/hello_world.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FProductHelper {
  static Widget getStarsRating(double rating, {double size = 20}) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: RatingBarIndicator(
        itemBuilder: (context, index) => Icon(
          Icons.star,
          // color: Colors.amber[900],
          color: Colors.amber,
          // color: Colors.red,
        ),
        rating: rating,
        itemCount: 5,
        itemSize: size,
        // emptyColor: Colors.amber.withAlpha(50),
      ),
    );
  }
}
