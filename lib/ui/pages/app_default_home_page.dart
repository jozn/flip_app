import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/cells/FBottomNavBarCell.dart';
import 'package:flip_app/ui/cells/FDrawerCell.dart';
import 'package:flip_app/ui/playground/chat_list.dart';
import 'package:flip_app/ui/playground/hello_world.dart';
import 'package:flip_app/ui/playground/login.dart';
import 'package:flutter/material.dart';

// import 'login.dart';

class AppDefaultHomePage extends StatefulWidget {
  AppDefaultHomePage();

  @override
  _AppDefaultHomePageState createState() => new _AppDefaultHomePageState();
}

class _AppDefaultHomePageState extends State<AppDefaultHomePage>
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
        endDrawer: _getDrawerScreen(context),
        backgroundColor: Colors.grey[200],
        bottomNavigationBar: FBottomNavBarCell(),
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
                                FShared.showToast(context, "More ");
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
                                FShared.showToast(context, "Back ");
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

Widget _getDrawerScreen(BuildContext context) {
  return FGetDrawerScreen(context);
}
