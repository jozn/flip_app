import 'package:flip_app/shared/fstrings.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:flip_app/shared/shared.dart';


class ChatTabPage extends StatefulWidget {

  ChatTabPage();

  @override
  ChatTabPageState createState() => new ChatTabPageState();
}


class ChatTabPageState extends State<ChatTabPage> {

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext context;

  void onDrawerItemClicked(String name){
    Navigator.pop(context);
    Toast.show(name+" Selected", context);
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      scaffoldKey.currentState.openDrawer();
    });
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    Widget widget =  Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: new AppBar(
          title: new Text("Drawer Mail"),
          backgroundColor: Colors.pink[600],
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () { Navigator.pop(context); },
            ),
          ]
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 190,
                child: Stack(
                  children: <Widget>[
                    Image.asset("assets/avatars/5.jpg",
                      width: double.infinity, height: double.infinity, fit: BoxFit.cover,
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
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("John Miller",),
                                    Container(height: 5),
                                    Text("johnmiller@mail.com",)
                                  ],
                                ),
                              ),
                              InkWell(
                                child: Icon(Icons.arrow_drop_down, size: 24.0, color: Colors.white),
                                onTap: (){},
                              )
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Container(height: 8),
              ListTile(
                title: Text("All inboxes", ),
                leading: Icon(Icons.move_to_inbox, size: 25.0, color: Colors.grey[600]),
                trailing: Text("75",),
                onTap: (){onDrawerItemClicked("All inboxes");},
              ),
              Divider(),

            ],
          ),
        ),
      ),
    );
    return widget;
  }
}

