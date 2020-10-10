import 'package:flip_app/shared/my_colors.dart';
import 'package:flip_app/ui/bottom_nav.dart';
import 'package:flip_app/ui/chat_list.dart';
import 'package:flip_app/ui/chat_tab_page.dart';
import 'package:flip_app/ui/contacts_list.dart';
import 'package:flip_app/ui/hello_world.dart';
import 'package:flip_app/ui/login.dart';
import 'package:flip_app/ui/login/login_simple_green.dart';
import 'package:flip_app/ui/messages_list.dart';
import 'package:flip_app/ui/tab_chat.dart';
import 'package:flip_app/ui/top_nav.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;

import 'ui/tab_chat.dart';
import 'pb/rpc_social.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

/*class FlipRpcClient extends RpcClient {

  @override
  Future<T> invoke<T extends GeneratedMessage>(
      ClientContext ctx,
      String serviceName,
      String methodName,
      GeneratedMessage request,
      T emptyResponse){

  }
}*/

void playPb(){
  // Send request
  var ctx = $pb.ClientContext();
  var m = RPC_SocialApi(null);
  var req = EditCommentParam();
  m.editComment(ctx, req);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // primarySwatch: FColors.primary2,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flip app"),
        ),
        body: ListBasicRoute(),
      ),
    );
  }
}

class ListBasicRoute extends StatefulWidget {
  ListBasicRoute();

  @override
  ListBasicRouteState createState() => new ListBasicRouteState();
}

class Menu {
  String title;
  Widget route;

  Menu({this.title, this.route});
}

class ListBasicRouteState extends State<ListBasicRoute> {
  BuildContext context;
  void onItemClick(int index) {
    Toast.show("ds", context, duration: Toast.LENGTH_SHORT);
  }

  void tap() {
    Toast.show("me", context);
  }

  Widget get(String title, Widget page) {
    return ListTile(
      // dense: true,
      title: Text(title),
      onTap: () {
        goToPage(page);
      },
    );
  }

  void  hh() async {
    // var s = await http.post("dsf");
    var url = 'https://example.com/whatsit/create';
    var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body.length}');

    try {
      var m = (await http.read('https://example.com/foobar.txt'));
      print(m.length);
    } catch(e) {
      print("sdf");
      print(e);
    }

  }

  void goToPage(Widget w) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return w;
    }));
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    hh();
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("Login 2"),
          onTap: () {
            goToPage(LoginCardLightRoute());
          },
        ),
        get("Login green", LoginSimpleGreenRoute()),
        get("Main Chat tab", ChatListPageOld()),
        get("Hello World", HelloWorldPage()),
        get("TopNavBarPage", TopNavBarPage()),
        get("BottomNavBarPage", BottomNavBarPage()),
        get("ContactsListPage", ContactsListPage()),
        get("ChatListPage", ChatListPage()),
        get("ChatTabPage", ChatTabPage()),
        get("ChatTelegramRoute", ChatTelegramRoute()),
        Divider(
          height: 2,
          color: MyColors.grey_95,
        ),
      ],
    );
  }
}
