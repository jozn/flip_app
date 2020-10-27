import 'package:flip_app/shared/shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fcolors.dart';

class SimpleTopNavBar extends StatelessWidget {
  final bool showGoButton;
  final String title;
  final Widget rightIcon;

  const SimpleTopNavBar({
    Key key,
    this.title = "Title",
    this.showGoButton,
    this.rightIcon,
  }) : super(key: key);

  static Widget topRightDefault = SizedBox(
    width: 50,
    child: GestureDetector(
      child: IconButton(
        color: FColors.topNavBar_buttons,
        splashRadius: 22,
        onPressed: () {
          //Shared.showToast(context, "More s");
        },
        icon: Icon(
          Icons.more_vert,
          size: 28,
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    var childs = <Widget>[];

    // left custom icon
    if (this.rightIcon != null) {
      childs.add(this.rightIcon);
    } else {
      childs.add(SizedBox(width: 50, child: SizedBox()));
    }

    // center title
    childs.add(Expanded(
      child: Center(
          child: Text(
        this.title,
        style: TextStyle(
          color: FColors.topNavBar_tittle,
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),
      )),
    ));

    // right go back button
    if (this.showGoButton) {
      childs.add(SizedBox(
        width: 50,
        child: GestureDetector(
          child: IconButton(
            color: FColors.topNavBar_buttons,
            splashRadius: 22,
            onPressed: () {
              Shared.goBack(context);
              Shared.showToast(context, "Back s");
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 28,
            ),
          ),
        ),
      ));
    } else {
      childs.add(SizedBox(width: 50, child: SizedBox()));
    }

    return Material(
      elevation: 2,
      shadowColor: Colors.grey[100],
      child: Container(
        // color: Colors.blue,
        child: SizedBox(
          height: 50,
          child: Row(children: childs),
        ),
      ),
    );
  }
}
