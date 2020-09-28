import 'package:flip_app/shared/my_colors.dart';
import 'package:flip_app/shared/my_text.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class Shared {
  static void showToast(BuildContext context, String action) {
    print(action);
    Toast.show(action + "", context);
  }

  static double getLogicalPixelFromDevicePixel(
      BuildContext context, double pixels) {
    var ratio = MediaQuery.of(context).devicePixelRatio;
    return (pixels / ratio);
  }
}

class Contact {
  num id;
  String title;
  String date;
  String date2;
  String subtitle;
  String image;
}


class CircleImage extends StatelessWidget {

  final double size;
  final Color backgroundColor;
  final ImageProvider imageProvider;

  const CircleImage({
    Key key,
    @required this.imageProvider,
    this.size,
    this.backgroundColor,
  }) : assert(imageProvider != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));
    return Container(
        width: size != null ? size : 20,
        height: size != null ? size : 20,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor != null ? backgroundColor : Colors.transparent,
            image: new DecorationImage(
                fit: BoxFit.fill,
                image: imageProvider
            )
        )
    );
  }
}

class Message{
  int id;
  String date;
  String content;
  bool fromMe;
  bool showTime = true;

  Message(int id, String content, bool fromMe, String date) {
    this.id = id;
    this.date = date;
    this.content = content;
    this.fromMe = fromMe;
  }

  Message.time(int id, String content, bool fromMe, bool showTime, String date) {
    this.id = id;
    this.date = date;
    this.content = content;
    this.fromMe = fromMe;
    this.showTime = showTime;
  }
}


class Tools {
  static void setStatusBarColor(Color color) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  static String allCaps(String str) {
    if(str != null && str.isNotEmpty){
      return str.toUpperCase();
    }
    return str;
  }

  static String getFormattedDateShort(int time) {
    DateFormat newFormat = new DateFormat("MMM dd, yyyy");
    return newFormat.format(new DateTime.fromMillisecondsSinceEpoch(time));
  }

  static String getFormattedDateSimple(int time) {
    DateFormat newFormat = new DateFormat("MMMM dd, yyyy");
    return newFormat.format(new DateTime.fromMillisecondsSinceEpoch(time));
  }

  static String getFormattedDateEvent(int time) {
    DateFormat newFormat = new DateFormat("EEE, MMM dd yyyy");
    return newFormat.format(new DateTime.fromMillisecondsSinceEpoch(time));
  }

  static String getFormattedTimeEvent(int time) {
    DateFormat newFormat = new DateFormat("h:mm a");
    return newFormat.format(new DateTime.fromMillisecondsSinceEpoch(time));
  }
  static String getFormattedCardNo(String cardNo){
    if(cardNo.length < 5) return cardNo;
    return cardNo.replaceAllMapped(RegExp(r".{4}"), (match) => "${match.group(0)} ");
  }

  static void directUrl(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    }
  }

}