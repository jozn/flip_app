import 'package:flip_app/pb/rpc_auth.pb.dart';
import 'package:flip_app/pb/sys.pb.dart';
import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/fstrings.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:protobuf/protobuf.dart';

import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart' as $pb;

import 'package:flip_app/ui/Api.dart' as Api;


class LoginSimpleGreenRoute extends StatefulWidget {
  LoginSimpleGreenRoute();

  @override
  LoginSimpleGreenRouteState createState() => new LoginSimpleGreenRouteState();
}

class LoginSimpleGreenRouteState extends State<LoginSimpleGreenRoute> {

  void sendSmsCallback() async {
    // playPb();
    Shared.showToast(context, "sxnnnnnnnnxxxdf");

    var param = SendConfirmCodeParam();
    var res = await Api.Auth.sendConfirmCode(param);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar:
          PreferredSize(child: Container(), preferredSize: Size.fromHeight(0)),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(height: 25),
              Container(height: 5),
              Text(FStrings.login_welocmeTitle,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: Shared.IRAN_FONT)),
              // Spacer(),
              SizedBox(
                height: 60,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(FStrings.login_inputMobileTitle,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16,
                        fontFamily: Shared.IRAN_FONT)),
              ),
              SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.phone,
                autofocus: true,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "09123456789",
                  hintStyle: TextStyle(color: Colors.grey[400],),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey[400], width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey[400], width: 2),
                  ),
                ),
              ),
              Container(height: 80),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                height: 40,
                child: FlatButton(
                  child: Text(
                    FStrings.login_send_sms,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: Shared.IRAN_FONT),
                  ),
                  color: FColors.login_sendSmsButton,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20)),
                  onPressed: () {
                    // playPb();
                    sendSmsCallback();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/////////////////////// RPC ////////////////////
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

void playPb() async {
  print("playpb0");
  // Send request
  var ctx = $pb.ClientContext();
  var client = FlipRpcClient();
  var m = RPC_AuthApi(client);
  var req = SendConfirmCodeParam();
  req.writeToBuffer();

  var r = await m.sendConfirmCode(ctx, req);

  // sender();
}

/*class Api {
  static class RPC_Auth {
      $async.Future<SendConfirmCodeResponse> sendConfirmCode(
          $pb.ClientContext ctx, SendConfirmCodeParam request) {
          var emptyResponse = SendConfirmCodeResponse();
          return _client.invoke<SendConfirmCodeResponse>(
          ctx, 'RPC_Auth', 'SendConfirmCode', request, emptyResponse);
      }
  }
}*/

