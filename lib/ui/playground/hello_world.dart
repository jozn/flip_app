import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/fstrings.dart';
import 'package:flip_app/shared/my_text.dart';
import 'package:flutter/material.dart';

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
              child: Text(
                FStrings.hello_world,
                style: TextStyle(
                  color: FColors.red,
                  fontSize: 18,
                ),
              ),
            )),
      ),
    );
  }
}
