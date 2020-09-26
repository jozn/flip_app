import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/chat_list.dart';
import 'package:flip_app/ui/hello_world.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class ChatTabPage extends StatefulWidget {
  ChatTabPage();

  @override
  ChatTabPageState createState() => new ChatTabPageState();
}

class ChatTabPageState extends State<ChatTabPage>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>(debugLabel: "sdf");
  BuildContext ctx;

  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
    _scrollController = ScrollController();
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      scaffoldKey.currentState.openDrawer();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    this.ctx = context;
    return Scaffold(
        key: scaffoldKey,
        endDrawer: getDrawerScreen(context),
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  // Header
                  height: 50,
                  // color: Color(0x00000000),
                  decoration: BoxDecoration(
                    color: FColors.background,
                    // borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                    // color: FColors.topNavBar_background,
                    borderOnForeground: true,
                    shape: RoundedRectangleBorder(),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 50,
                          child: GestureDetector(
                            child: IconButton(
                              color: FColors.topNavBar_buttons,
                              splashRadius: 22,
                              onPressed: () {
                                Shared.showToast(context, "More ");
                              },
                              icon: Icon(
                                Icons.more_vert,
                                size: 21,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: TabBar(
                              indicatorColor: Colors.blue,
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicatorWeight: 2,
                              labelStyle: TextStyle(
                                color: FColors.black,
                              ),
                              unselectedLabelColor: Colors.blueGrey[600],
                              labelColor: Colors.blue,
                              tabs: [
                                Tab(text: "Groups"),
                                Tab(text: "Chat"),
                              ],
                              controller: _tabController,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: GestureDetector(
                            child: IconButton(
                              color: FColors.topNavBar_buttons,
                              splashRadius: 22,
                              onPressed: () {
                                Shared.showToast(context, "Back ");
                                scaffoldKey.currentState.openDrawer();
                              },
                              icon: Icon(
                                Icons.dehaze,
                                size: 21,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      HelloWorldPage(),
                      ChatListPage(),
                      // Tab(text: "GAMES 555"),
                      // Tab(text: "GAMES 555"),
                    ],
                    controller: _tabController,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class _CellRowDrawer extends StatelessWidget {
  _Cell info;

  _CellRowDrawer(_Cell info) {
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
            Icon(info.icon,
                color: Colors.blueGrey[600],
                size: 24,
              ),
          ],
        ),
      ),
    );
  }
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

Widget getDrawerScreen(BuildContext context) {

  var goToPage = (Widget w) {
    Shared.showToast(context, "Go TO Page - Remove me");
    return;
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return w;
    }));
  };

  var cells = [
    _Cell(
      title: "Settings",
      icon: Icons.settings,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _Cell(
      title: "Notification",
      icon: Icons.notifications,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _Cell(
      title: "New group",
      icon: Icons.group,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _Cell(
      title: "New Channels",
      icon: Icons.speaker_group,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _Cell(
      title: "Contacts",
      icon: Icons.person,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _Cell(
      title: "Notification",
      icon: Icons.notifications,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _Cell(
      title: "Add Store",
      icon: Icons.store,
      callback: () {
        goToPage(LoginCardLightRoute());
      },
    ),
    _Cell(
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
                  Container(height: 2),
                  Text(
                    "evan.collins@mail.com",
                  )
                ],
              ),
            ),
            Container(height: 8),
            Container(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text("Settings",
                            textDirection: TextDirection.rtl,
                            style: TextStyle())),
                    Container(width: 20),
                    Icon(Icons.menu,
                        color: FColors.contactsPage_lastActivity, size: 20),
                  ],
                ),
              ),
            ),
            Column(
              children: cellsWidgets,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget getDrawer2() {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 190,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "assets/avatars/5.jpg",
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 14),
                  child: CircleAvatar(
                    radius: 36,
                    backgroundColor: Colors.grey[100],
                    child: CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage("assets/avatars/5.jpg"),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "John Miller",
                                ),
                                Container(height: 5),
                                Text(
                                  "johnmiller@mail.com",
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            child: Icon(Icons.arrow_drop_down,
                                size: 24.0, color: Colors.white),
                            onTap: () {},
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
          Container(height: 8),
          ListTile(
            title: Text(
              "All inboxes",
            ),
            leading:
                Icon(Icons.move_to_inbox, size: 25.0, color: Colors.grey[600]),
            trailing: Text(
              "75",
            ),
            onTap: () {
              // onDrawerItemClicked("All inboxes");
            },
          ),
          Divider(),
        ],
      ),
    ),
  );
}
