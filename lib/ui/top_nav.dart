import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/fstrings.dart';
import 'package:flip_app/shared/my_text.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flutter/material.dart';

class TopNavBarPage extends StatefulWidget {
  TopNavBarPage();

  @override
  TopNavBarSimpleState createState() => new TopNavBarSimpleState();
}

class TopNavBarSimpleState extends State<TopNavBarPage> {
  @override
  Widget build(BuildContext context) {
    var s = Shared.getLogicalPixelFromDevicePixel(context, 1);
    return new Scaffold(
        // appBar: AppBar(
        //
        // ),
        extendBody: false,
        extendBodyBehindAppBar: false,
        body: SafeArea(
          child: Container(
              // color: FColors.background,
              height: 50 + s,
              alignment: AlignmentDirectional.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    // color: Colors.blue,
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 70,
                            child: GestureDetector(
                              child: IconButton(
                                color: Colors.blueGrey,
                                splashRadius: 22,
                                onPressed: () {
                                  Shared.showToast(context, "Back $s");
                                },
                                icon: Icon(
                                  Icons.more_vert,
                                  size: 28,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                                child: Text(
                              "Center",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            )),
                          ),
                          SizedBox(
                            width: 70,
                            child: GestureDetector(
                              child: IconButton(
                                color: Colors.blueGrey,
                                splashRadius: 22,
                                onPressed: () {
                                  Shared.showToast(context, "Back $s");
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 28,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: Shared.getLogicalPixelFromDevicePixel(context, 1),
                    width: double.infinity,
                    // color: Colors.grey[200],
                    decoration: new BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          blurRadius: 0.1,
                          spreadRadius: 0,
                          offset: Offset(0, 0),
                        )
                      ],
                    ),
                    // child: PhysicalModel(
                    //   color: Colors.,
                    // )
                  )
                ],
              )),
        ));
  }
}
