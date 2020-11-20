import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/fstrings.dart';
import 'package:flip_app/shared/my_text.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flutter/material.dart';

class BottomNavBarPage_DEP extends StatefulWidget {
  BottomNavBarPage_DEP();

  @override
  BottomNavBarState createState() => new BottomNavBarState();
}

class _Cell {
  String title;
  IconData icon;
  VoidCallback callback;

  _Cell({
    this.title,
    this.icon,
    this.callback,
  });
}

class _CellColumn extends StatelessWidget {
  _Cell cell;
  double width;

  _CellColumn(_Cell _item, double width) {
    this.cell = _item;
    this.width = width;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.width,
      height: 50,
      child: InkWell(
        onTap: () {
          Shared.showToast(context, "Hi 2");
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                this.cell.icon,
                color: FColors.bottomNavBar_icon,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                this.cell.title,
                style: TextStyle(
                  // color: FColors.bottomNavBar_tittle,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavBarState extends State<BottomNavBarPage_DEP> {
  var itmes = [
    _Cell(
      title: "Shop",
      icon: Icons.shopping_cart,
    ),
    _Cell(
      title: "Browse",
      icon: Icons.group_work,
    ),
    _Cell(
      title: "Home",
      icon: Icons.home,
    ),
    _Cell(
      title: "Chat",
      icon: Icons.chat,
    ),
    _Cell(
      title: "Chat",
      icon: Icons.title,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var s = Shared.getLogicalPixelFromDevicePixel(context, 1);
    var width = MediaQuery.of(context).size.width / 5;

    var cells = <Widget>[];

    for (var i = 0; i < itmes.length; i++) {
      cells.add(_CellColumn(itmes[i], width));
    }

    return new Scaffold(
        extendBody: false,
        extendBodyBehindAppBar: false,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Container(
                  color: FColors.bottomNavBar_background,
                  height: 51,
                  alignment: AlignmentDirectional.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height:
                            Shared.getLogicalPixelFromDevicePixel(context, 1),
                        width: double.infinity,
                        // color: Colors.grey[200],
                        decoration: new BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[400],
                              blurRadius: 0.1,
                              spreadRadius: -0.10,
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                      ),
                      Material(
                        elevation: 2,
                        shadowColor: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: cells,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
