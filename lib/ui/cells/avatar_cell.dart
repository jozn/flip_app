import 'dart:math';

import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/pages/channel_tab_page.dart';
import 'package:flutter/material.dart';

import '../nav.dart';

class AvatarCells {
  static Widget getSimpleAvatar({double size = 40, String src}) {
    //dep
    var w = Center(
      child: CircleImage(
        imageProvider: AssetImage("assets/avatars/9.jpg"),
        size: size,
      ),
    );

    var rnd = Random().nextInt(59) + 1;
    var imgSrc =
        "http://192.168.43.160:5000/home/hamid/life/__files__/avatars/$rnd.jpg";
    if (src != null) {
      // FOR NOW JUST RANDOM
      //imgSrc = "http://192.168.43.160:5000" + src;
    }

    var w2 = GestureDetector(
      onTap: () {
        FNav.push(ChannelPage());
      },
      child: SizedBox(
          width: size,
          child: Center(
            child: Card(
                // color: Colors.blue,
                margin: EdgeInsets.all(0),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(800),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  imgSrc,
                  height: size,
                  fit: BoxFit.fitHeight,
                )),
          )),
    );
    return w2;
  }
}
