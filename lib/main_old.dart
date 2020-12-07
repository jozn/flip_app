import 'dart:convert';

import 'package:flip_app/shared/my_colors.dart';
import 'package:flip_app/ui/login/login_confirm_page.dart';
import 'package:flip_app/ui/login/login_simple_green.dart';
import 'package:flip_app/ui/nav.dart';
import 'package:flip_app/ui/playground/chat_list.dart';
import 'package:flip_app/ui/playground/contacts_list.dart';
import 'package:flip_app/ui/playground/hello_world.dart';
import 'package:flip_app/ui/playground/login.dart';
import 'package:flip_app/ui/playground/protcol_buffer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';
import 'package:toast/toast.dart';

// import 'pb/rpc_social.pb.dart';
import 'pb/global.pb.dart';

class FlipRpcClient extends RpcClient {
  @override
  Future<T> invoke<T extends GeneratedMessage>(
      ClientContext ctx,
      String serviceName,
      String methodName,
      GeneratedMessage request,
      T emptyResponse) {
    var d = request;
    var act = Invoke();
    act.namespace = 0;
    act.method = 939965206;
    // act.rpcData = ;

    http.post("http://127.0.0.1:3002/rpc",
        // body: ,
        encoding: Encoding.getByName("utf-8"));
  }
}

/*void playPb() {
  // Send request
  var ctx = $pb.ClientContext();
  var client = FlipRpcClient();
  var m = RPC_SocialApi(client);
  var req = EditCommentParam();
  req.writeToBuffer();

  m.editComment(ctx, req);
}*/

void main_old() {
  runApp(MyAppOld());
}

class MyAppOld extends StatelessWidget implements FPage {
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

  @override
  Widget getWidget() {
    return this;
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

  void hh() async {
    // var s = await http.post("dsf");
    var url = 'https://example.com/whatsit/create';
    var response =
        await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body.length}');

    try {
      var m = (await http.read('https://example.com/foobar.txt'));
      print(m.length);
    } catch (e) {
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
        get("Nav", FScaffold()),
        get("-----------------------", LoginSimpleGreenRoute()),
        ListTile(
          title: Text("Login 2"),
          onTap: () {
            goToPage(LoginCardLightRoute());
          },
        ),
        get("Login confim", LoginConfirmRoute()),
        get("Hello World", HelloWorldPage()),
        get("ContactsListPage", ContactsListPageOld()),
        get("ChatListPage", ChatListPage_DEP()),
        get("PB", PbPage()),
        Divider(
          height: 2,
          color: MyColors.grey_95,
        ),
      ],
    );
  }
}
