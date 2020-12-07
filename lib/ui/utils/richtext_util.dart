import 'dart:math';
import 'dart:ui';

import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichMsgText {
  static Widget getMsgRichText(Message msg, bool showRich) {
    // Dep simple txt
    if (showRich == false) {
      Widget out = Text(
        msg.text,
        softWrap: true,
        maxLines: 10000,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: FShared.IRAN_FONT,
        ),
      );
      return out;
    }

    var txts = msg.text.split(" ");
    var rich = <TextSpan>[];

    var rnd = Random();

    for (var i = 0; i < txts.length; i++) {
      var t = txts[i];
      var r = rnd.nextInt(10);
      TextSpan rt;
      if (r < 1) {
        rt = _getBold(t + " ");
      } else if (r < 3) {
        rt = _getLink(t + " ");
      } else if (r < 4) {
        rt = TextSpan(text: t + " ", style: TextStyle(color: Colors.red));
      } else {
        rt = TextSpan(
          text: t + " ",
        );
      }
      rich.add(rt);
    }

    Widget out2 = RichText(
      textDirection: TextDirection.rtl,
      text: TextSpan(
        // text: 'Hello ',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: FShared.IRAN_FONT,
        ),
        children: rich,
      ),
    );
    return out2;
  }

  static TextSpan _getBold(String text) {
    return TextSpan(text: text, style: TextStyle(fontWeight: FontWeight.bold));
  }

  static TextSpan _getLink(String text) {
    var rt = TextSpan(
      text: text,
      style: TextStyle(color: Colors.blue),
      recognizer: new TapGestureRecognizer()
        ..onTap = () {
          print(
              'https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
        },
    );
    return rt;
  }
}
