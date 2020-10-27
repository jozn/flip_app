import 'dart:convert';

import 'package:flip_app/pb/rpc_social.pb.dart';
import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/fstrings.dart';
import 'package:flip_app/shared/my_text.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../pb/rpc_social.pb.dart';
import '../pb/rpc_auth.pb.dart';
import '../pb/sys.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/protobuf.dart';

class PbPage extends StatefulWidget {
  PbPage();

  @override
  TopNavBarSimpleState createState() => new TopNavBarSimpleState();
}

class TopNavBarSimpleState extends State<PbPage> {
  @override
  Widget build(BuildContext context) {
    playPb();
    return new Scaffold(
      // appBar: AppBar(
      //
      // ),
      extendBody: false,
      extendBodyBehindAppBar: false,
      body: SafeArea(
        child: Container(
            color: FColors.background,
            child: Center(
              child: Text(
                "sebd",
                style: TextStyle(
                  color: FColors.red,
                  fontSize: 18,
                ),
              ),
            )),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////
class FlipRpcClient extends RpcClient {
  @override
  Future<T> invoke<T extends GeneratedMessage>(
      ClientContext ctx,
      String serviceName,
      String methodName,
      GeneratedMessage request,
      T emptyResponse) async {
    var d = request.writeToBuffer();
    var act = Invoke();
    act.namespace = 0;
    act.method = 939965206;
    // act.rpcData = d;
    // act.rpcData = null;

    print("inoke data: $d");
    print("inoke #$act");

    var dd = act.writeToBuffer();
    print("++++++ end $dd");
    var l = dd.length;
    print("++++++ end lenght $l");

    var m = Invoke.fromBuffer(dd);
    print("de: $m");

    var res = await http.post(
      "http://192.168.43.159:3002/rpc",
      body: dd,
      // encoding: Encoding.getByName("utf-8")
    );

    print('Response : ${res}');
  }
}

void playPb() {
  print("playpb0");
  // Send request
  var ctx = $pb.ClientContext();
  var client = FlipRpcClient();
  var m = RPC_AuthApi(client);
  var req = SendConfirmCodeParam();
  req.writeToBuffer();

  m.sendConfirmCode(ctx, req);

  // sender();
}

void sender() async {
  print("sender");

  var url = 'https://example.com/whatsit/create';
  var response =
      await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  print(await http.read('https://example.com/foobar.txt'));

  print("sender 2");
}
