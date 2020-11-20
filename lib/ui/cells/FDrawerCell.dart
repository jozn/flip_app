import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/playground/login.dart';
import 'package:flutter/material.dart';

class _CellRowDrawer extends StatelessWidget {
  _CellDrawerInfo info;

  _CellRowDrawer(_CellDrawerInfo info) {
    this.info = info;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (info.callback != null) {
          info.callback.call();
        }
      },
      child: Container(
        height: 46,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Text(info.title,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 16,
                    ))),
            Container(width: 20),
            Icon(
              info.icon,
              color: Colors.blueGrey[600],
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}

class _CellDrawerInfo {
  String title;
  IconData icon;
  VoidCallback callback;

  _CellDrawerInfo({
    this.title,
    this.icon,
    this.callback,
  });
}

Widget FGetDrawerScreen(BuildContext context) {
  var goToPage = (Widget w) {
    FShared.showToast(context, "Go TO Page - Remove me");
    return;
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return w;
    }));
  };

  var cells = [
    _CellDrawerInfo(
      title: "Settings",
      icon: Icons.settings,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _CellDrawerInfo(
      title: "Notification",
      icon: Icons.notifications,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _CellDrawerInfo(
      title: "New group",
      icon: Icons.group,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _CellDrawerInfo(
      title: "New Channels",
      icon: Icons.speaker_group,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _CellDrawerInfo(
      title: "Contacts",
      icon: Icons.person,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _CellDrawerInfo(
      title: "Notification",
      icon: Icons.notifications,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _CellDrawerInfo(
      title: "Add Store",
      icon: Icons.store,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _CellDrawerInfo(
      title: "Moderators",
      icon: Icons.delete_sweep,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
  ];

  var cellsWidgets = <Widget>[];
  for (var i = 0; i < cells.length; i++) {
    cellsWidgets.add(_CellRowDrawer(cells[i]));
  }

  return Container(
    width: 260,
    child: Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              color: Colors.grey[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(height: 30),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: FColors.contactsPage_lastActivity,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(("assets/avatars/1.jpg")),
                    ),
                  ),
                  Container(height: 7),
                  Text(
                    "Evans Collins",
                  ),
                  Container(height: 4),
                  Text(
                    "evan.collins@mail.com",
                  )
                ],
              ),
            ),
            // Container(height: 5),
            Divider(
              height: 2,
            ),
            Container(height: 5),
            Column(
              children: cellsWidgets,
            ),
          ],
        ),
      ),
    ),
  );
}
