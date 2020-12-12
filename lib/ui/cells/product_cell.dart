import 'dart:math';

import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/utils/helper_cells.dart';
import 'package:flip_app/ui/utils/images_mock.dart';
import 'package:flutter/material.dart';

class ProductCells {
  static Widget getSampleProductImage({double size = 120, String src}) {
    //dep
    var w = Center(
      child: CircleImage(
        imageProvider: AssetImage("assets/avatars/9.jpg"),
        size: size,
      ),
    );

    var rnd = Random().nextInt(140) + 1;
    var img = imagesMock[rnd];
    var w2 = GestureDetector(
      onTap: () {
        // FNav.push(ChannelPage());
      },
      child: SizedBox(
          width: size,
          child: Center(
            child: Card(
                // color: Colors.blue,
                margin: EdgeInsets.all(0),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  "http://192.168.43.160:5000" + img.src,
                  height: size,
                  width: size,
                  fit: BoxFit.cover,
                )),
          )),
    );
    return w2;
  }

  static Widget getSampleProductBox(
      {double size = 120, String src, BuildContext context}) {
    //dep
    var w = Center(
      child: CircleImage(
        imageProvider: AssetImage("assets/avatars/9.jpg"),
        size: size,
      ),
    );
    var windowWidth = (MediaQuery.of(context).size.width / 2);
    var rnd = Random().nextInt(140) + 1;
    var img = imagesMock[rnd];
    var iw = size / 2;
    var w2 = GestureDetector(
        onTap: () {
          // FNav.push(ChannelPage());
          print("taped");
        },
        child: Card(
          color: Colors.grey[50],
          child: Container(
              width: windowWidth,
              // height: windowWidth,
              // color: Colors.blue,
              margin: EdgeInsets.all(2),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Card(
                        color: Colors.blue,
                        margin: EdgeInsets.all(0),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          "http://192.168.43.160:5000" + img.src,
                          width: windowWidth,
                          height: windowWidth, //* 3 / 4,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "TShirt hot for summer",
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: FProductHelper.getStarsRating(4.5, size: 15),
                        ),

                        /*Text(
                          "free derlivery",
                        ),*/
                        // Expanded(child: SizedBox()),
                        Text("125,000")
                      ],
                    ),
                  )
                ],
              )),
        ));
    return w2;
  }
}
