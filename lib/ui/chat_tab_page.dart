import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/chat_list.dart';
import 'package:flutter/material.dart';

class ChatTabPage extends StatefulWidget {

  ChatTabPage();

  @override
  ChatTabPageState createState() => new ChatTabPageState();
}


class ChatTabPageState extends State<ChatTabPage> with SingleTickerProviderStateMixin{

  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this,initialIndex: 1);
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Container(

          child: Column(

            children: <Widget>[
              Container( // Header
                height: 50,
                // color: Color(0x00000000),
                decoration: BoxDecoration(
                  color: FColors.background,
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Card(
                  margin: EdgeInsets.fromLTRB(0,0,0,1),
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
                                indicatorSize: TabBarIndicatorSize.tab, indicatorWeight: 2,
                                labelStyle: TextStyle(color: FColors.black,),
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
                    Tab(text: "GAMES 555"),
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
      )
    );
  }

  @override
  Widget build_old(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller){
          return <Widget>[
            SliverAppBar(
              // title: Text('Store'), pinned: true, floating: true,
              backgroundColor: Colors.blueGrey[600],
              // leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {
              //   Navigator.pop(context);
              // }),
              // actions: <Widget>[
              //   IconButton(
              //     icon: const Icon(Icons.search),
              //     onPressed: () {},
              //   ),// overflow menu
              //   PopupMenuButton<String>(
              //     onSelected: (String value){},
              //     itemBuilder: (context) => [
              //       PopupMenuItem(
              //         value: "Settings",
              //         child: Text("Settings"),
              //       ),
              //     ],
              //   )
              // ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab, indicatorWeight: 4,
                // labelStyle:
                unselectedLabelColor: Colors.grey[400],
                tabs: [
                  Tab(text: "MUSIC"),
                  Tab(text: "MOVIE"),
                  Tab(text: "BOOKS"),
                  Tab(text: "GAMES"),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: [
            Tab(text: "GAMES"),
            Tab(text: "GAMES"),
            Tab(text: "GAMES"),
            Tab(text: "GAMES"),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

