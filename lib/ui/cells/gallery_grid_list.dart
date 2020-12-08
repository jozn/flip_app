import 'dart:math';

import 'package:flip_app/ui/utils/images_mock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getGrid(BuildContext context) {
  var o = Container(
    child: GridView.count(
      crossAxisCount: 3,
      children: List.generate(100, (index) {
        // return AvatarCells.getSimpleAvatar(size: 90);
        var rnd = Random().nextInt(59) + 1;
        var imgSrc =
            "http://192.168.43.160:5000/home/hamid/life/__files__/avatars/$rnd.jpg";
        var imgMok = imagesMock[index];
        var width = MediaQuery.of(context).size.width - 3;
        return Center(
          child: GestureDetector(
            onTap: () {
              print("called");
            },
            child: Card(
                // color: Colors.blue,
                margin: EdgeInsets.all(1),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    //borderRadius: BorderRadius.circular(800),
                    ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  "http://192.168.43.160:5000" + imgMok.src,
                  height: width,
                  width: width,
                  fit: BoxFit.cover,
                )),
          ),
        );
      }),
    ),
  );

  return o;
}
