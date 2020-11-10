import 'dart:async' as $async;
import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:flip_app/pb/global.pb.dart';

import 'package:flip_app/pb/rpc_auth.pb.dart';
import 'package:flip_app/pb/rpc_channel.pb.dart';
import 'package:flip_app/pb/rpc_chat.pb.dart';
import 'package:flip_app/pb/rpc_direct.pb.dart';
import 'package:flip_app/pb/rpc_group.pb.dart';
import 'package:flip_app/pb/rpc_sample.pb.dart';
import 'package:flip_app/pb/rpc_shared.pb.dart';
import 'package:flip_app/pb/rpc_upload.pb.dart';
import 'package:flip_app/pb/rpc_user.pb.dart';

class Sample {
  static $async.Future<GetProfilesResponse> getProfiles(
      GetProfilesParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 822554282;
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.159:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );

    print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GetProfilesResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }

  static $async.Future<GetProfilesResponse> getProfiles2(
      GetProfilesParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 822554282;
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.159:3002/rpc",
      body: invokeBuff,
    );

    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GetProfilesResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
}
