import 'package:flip_app/shared/my_colors.dart';
import 'package:flip_app/shared/my_text.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Shared {
  static void showToast(BuildContext context, String action) {
    print(action);
    Toast.show(action + " clicked", context);
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
