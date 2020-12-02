import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flutter/material.dart';

class FSimpleTopNavBarCell extends StatefulWidget
    implements PreferredSizeWidget {
  String title;

  FSimpleTopNavBarCell({this.title});

  @override
  _TopNavBarSimpleState createState() => new _TopNavBarSimpleState(this);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}

class _TopNavBarSimpleState extends State<FSimpleTopNavBarCell> {
  FSimpleTopNavBarCell param;

  _TopNavBarSimpleState(this.param);

  @override
  Widget build(BuildContext context) {
    var s = FShared.getLogicalPixelFromDevicePixel(context, 1);
    return new Container(
        color: FColors.topNavBar_background,
        height: 51,
        alignment: AlignmentDirectional.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Material(
              elevation: 2,
              shadowColor: Colors.grey[100],
              child: Container(
                // color: Colors.blue,
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 50,
                        child: GestureDetector(
                          child: IconButton(
                            color: FColors.topNavBar_buttons,
                            splashRadius: 22,
                            onPressed: () {
                              FShared.showToast(context, "More $s");
                            },
                            icon: Icon(
                              Icons.more_vert,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                            child: Text(
                          param.title,
                          style: TextStyle(
                            color: FColors.topNavBar_tittle,
                            fontSize: 16,
                            fontFamily: FShared.IRAN_FONT,
                            // fontWeight: FontWeight.w300,
                          ),
                        )),
                      ),
                      SizedBox(
                        width: 50,
                        child: GestureDetector(
                          child: IconButton(
                            color: FColors.topNavBar_buttons,
                            splashRadius: 22,
                            onPressed: () {
                              FShared.goBack(context);
                              // Shared.showToast(context, "Back $s");
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
