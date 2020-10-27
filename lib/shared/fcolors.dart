// import 'dart:ui';
import 'package:color_convert/color_convert.dart';
import 'package:flutter/material.dart';

class FColors {
  // static const Color background = Color(0xffffeeee);
  static const Color background = Color(0xffffffff);
  static const Color transparent = Color(0x00ffffff);

  static const Color red = Colors.red;
  static const Color blue = Colors.blue;
  static const Color black = Colors.black;
  static const Color primary2 = Color(0xFF1976D2);
  // static Color primary2 = convert.hex.lab('DEADBF');;
  // static const Color primary = Color.;

  static const Color pages_background = Color(0xffffeeee); //Color(0xffffffff);

  static const Color fontColorDark0 = Color(0xff000000);
  static const Color fontColorDark1 = Color(0xff111111);
  static const Color fontColorDark2 = Color(0xff222222);
  static const Color fontColorDark3 = Color(0xff333333);
  static const Color fontColorDark4 = Color(0xff444444);

  // Top Nav bar
  static const Color topNavBar_background = background;
  static const Color topNavBar_buttons = Color(0xFF222222);
  static const Color topNavBar_tittle = Color(0xFF000000);

  // Bottom Nav bar
  static const Color bottomNavBar_background = background;
  static const Color bottomNavBar_icon = Color(0xFFff2222);
  static const Color bottomNavBar_iconActive = Color(0xFFff6666);
  static const Color bottomNavBar_tittle = Color(0xFF222222);

  // Contacts page
  static const Color contactsPage_rowUserTittle = fontColorDark1;
  static const Color contactsPage_lastActivity = Color(0xff888888);
  static const Color contactsPage_divider = Color(0xffcccccc);

  // Chat Inbox Row
  static const Color inboxRow_unseenBadgeBackground = blue;
  static const Color inboxRow_unseenBadgeCounter = Colors.white;
}
