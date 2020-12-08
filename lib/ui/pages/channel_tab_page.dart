import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/fstrings.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/cells/avatar_cell.dart';
import 'package:flip_app/ui/cells/direct_chat.dart';
import 'package:flip_app/ui/cells/drawer.dart';
import 'package:flip_app/ui/cells/gallery_grid_list.dart';
import 'package:flip_app/ui/cells/message_list_play.dart';
import 'package:flip_app/ui/nav.dart';
import 'package:flutter/material.dart';

// import 'login.dart';

class ChannelPage extends StatefulWidget implements FPage {
  ChannelPage();

  @override
  _ChannelPageState createState() => new _ChannelPageState();

  @override
  Widget getWidget() {
    return this;
  }
}

class _ChannelPageState extends State<ChannelPage>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>(debugLabel: "sdf");
  BuildContext ctx;

  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 2);
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
        backgroundColor: Colors.red[300],
        // bottomNavigationBar: FBottomNavBarCell(),
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                _getTopTabBar(context, _tabController, scaffoldKey),
                Expanded(
                  child: TabBarView(
                    children: [
                      // HelloWorldPage(),
                      FDirectChatListCell(),
                      getGrid(context),
                      FMessageListCell_Play(),

                      // ChatListPage_DEP(),
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

Widget _getTopTabBar(BuildContext context, TabController _tabController,
    GlobalKey<ScaffoldState> scaffoldKey) {
  Widget getTitleText(String title) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: FShared.IRAN_FONT_LIGHT,
        fontSize: 14,
      ),
    );
  }

  return Container(
    // Header
    height: 76,
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
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: <Widget>[
            _getNavChannelInfo(context),
            _getNavTabs(context, _tabController),
          ],
        ),
      ),
    ),
  );
}

Widget _getNavTabs(BuildContext context, TabController _tabController) {
  Widget getTitleText(String title) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: FShared.IRAN_FONT_LIGHT,
        fontSize: 14,
      ),
    );
  }

  return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        height: 25,
        // color: Colors.greenAccent,
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
            Tab(
              child: getTitleText(FStrings.channelPage_posts),
            ),
            Tab(
              child: getTitleText(FStrings.channelPage_gallery),
            ),
            Tab(
              child: getTitleText(FStrings.channelPage_music),
            ),
            //Tab(text: "Chat"),
          ],
          controller: _tabController,
        ),
      ));
}

Widget _getNavChannelInfo(
  BuildContext context,
) {
  return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: 50,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 50,
              child: GestureDetector(
                onTap: () {},
                child: Center(
                  child: IconButton(
                    color: FColors.topNavBar_buttons,
                    splashRadius: 22,
                    onPressed: () {
                      FShared.showToast(context, "Back ");
                      FNav.pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 22,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 50,
                    child: GestureDetector(
                      child: AvatarCells.getSimpleAvatar(size: 44),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "آخرین خبر",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                          fontFamily: FShared.IRAN_FONT,
                        ),
                      ),
                      Text(
                        "13.7K مشترک+دنباکننده",
                        // "13.7K",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 12,
                          fontFamily: FShared.IRAN_FONT,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
          ],
        ),
      ));
}
