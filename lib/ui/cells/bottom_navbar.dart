import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/nav.dart';
import 'package:flutter/material.dart';

class FBottomNavBarCell extends StatefulWidget {
  FBottomNavBarCell();

  @override
  _BottomNavBarState createState() => new _BottomNavBarState();
}

class _Cell {
  String title;
  IconData icon;
  FBranch branch;
  VoidCallback callback;

  _Cell({
    this.title,
    this.icon,
    this.branch,
    this.callback,
  });
}

class _CellColumn extends StatelessWidget {
  _Cell cell;
  double width;
  bool isActive;
  Function onTap;
  Function onLongPress;

  // _CellColumn.old(_Cell _item, double width, bool isActive) {
  //   this.cell = _item;
  //   this.width = width;
  //   this.isActive = isActive;
  // }

  _CellColumn(
      {this.cell, this.width, this.isActive, this.onTap, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    var iconColor =
        isActive ? FColors.bottomNavBar_iconActive : FColors.bottomNavBar_icon;
    var textColor = isActive
        ? FColors.bottomNavBar_tittleActive
        : FColors.bottomNavBar_tittle;

    return SizedBox(
      width: this.width,
      height: 50,
      child: InkWell(
        onTap: this.onTap,
        onLongPress: this.onLongPress,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                this.cell.icon,
                color: iconColor,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                this.cell.title,
                style: TextStyle(
                  color: textColor,
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

class _BottomNavBarState extends State<FBottomNavBarCell> {
  var itmes = [
    _Cell(
      title: "Shop",
      icon: Icons.shopping_cart,
      branch: FBranch.SHOP,
    ),
    _Cell(
      title: "Browse",
      icon: Icons.group_work,
      branch: FBranch.DISCOVER,
    ),
    _Cell(
      title: "Home",
      icon: Icons.home,
      branch: FBranch.HOME,
    ),
    _Cell(
      title: "Chat",
      icon: Icons.chat,
      branch: FBranch.CHAT,
    ),
    /*_Cell(
      title: "Chat",
      icon: Icons.title,
    ),*/
  ];

  var active = 1;

  @override
  Widget build(BuildContext context) {
    var s = FShared.getLogicalPixelFromDevicePixel(context, 1);
    var width = MediaQuery.of(context).size.width / itmes.length;

    var cells = <Widget>[];
    var activeBranch = FNav.getActiveBranch();

    for (var i = 0; i < itmes.length; i++) {
      var branchCell = itmes[i];
      var isActive = (activeBranch == branchCell.branch);
      var thisBranch = branchCell.branch;
      // cells.add(_CellColumn(branchCell, width, isActive));
      // cells.add(_CellColumn({branchCell: branchCell,width: width, isActive:isActive});
      cells.add(_CellColumn(
        cell: branchCell,
        isActive: isActive,
        width: width,
        onTap: () {
          FNav.goToBranch(thisBranch);
          setState(() {
            active += 1;
          });
        },
        onLongPress: () {
          FNav.goToBranch(thisBranch);
          setState(() {
            active += 1;
          });
        },
      ));
    }

    return new Container(
        color: FColors.bottomNavBar_background,
        height: 51,
        alignment: AlignmentDirectional.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: FShared.getLogicalPixelFromDevicePixel(context, 1),
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
        ));
  }
}
