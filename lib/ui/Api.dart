import 'dart:collection';

import 'package:flip_app/pb/rpc_auth.pb.dart';
import 'package:flip_app/pb/sys.pb.dart';
import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';
import 'package:protobuf/protobuf.dart' as $pb;
import 'dart:async' as $async;

class FlipRpcClient2 extends RpcClient {
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

class FlipRpcClient3 extends RpcClient {
  @override
  Future<T> invoke<T extends GeneratedMessage>(
      ClientContext ctx,
      String serviceName,
      String methodName,
      GeneratedMessage request,
      T emptyResponse) async {
    
    var invokeBuff = request.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.159:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );

    print('Response : ${res}');
  }
}

var rpcNameToHashId = {
  // 'SendConfirmCode4': 939965206,
  'SendConfirmCode': 939965206,
};

class FlipHttpRpcClient extends RpcClient {
  @override
  Future<T> invoke<T extends GeneratedMessage>(
      ClientContext ctx,
      String serviceName,
      String methodName,
      GeneratedMessage param,
      T emptyResponse) async {

    print(methodName);
    var paramBuff = param.writeToBuffer();

    // rpcNameToHashId['SendConfirmCode'] = 939965206;

    var hashId = rpcNameToHashId[methodName];
    print(hashId);
    print(methodName == 'SendConfirmCode' );
    print(rpcNameToHashId);


    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = hashId;
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.159:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );

    print('Response : ${res}');
  }
}


class FlipRpcPbClientContext extends $pb.ClientContext {
  
}

class Auth {
  static $async.Future<SendConfirmCodeResponse> sendConfirmCode(SendConfirmCodeParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_AuthApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    print(1);

    return await serviceRpc.sendConfirmCode(ctxRpc, param);
  }

  static void sendConfirmCode2(SendConfirmCodeParam param) {

  }

}

class Auth2 {
  $async.Future<SendConfirmCodeResponse> sendConfirmCode(SendConfirmCodeParam param) {
      var paramBuff = param.writeToBuffer();

      var invoke = Invoke();
      invoke.namespace = 0;
      invoke.isResponse = false;
      invoke.method = 939965206;
      invoke.rpcData = paramBuff;

      var rpcClient = FlipRpcClient3();
      var serviceRpc = RPC_AuthApi(rpcClient);

      var ctxRpc = FlipRpcPbClientContext();

      serviceRpc.sendConfirmCode(ctxRpc, param);
      
  }

}

void playPb() {
  print("playpb0");
  // Send request
  var ctx = $pb.ClientContext();
  var client = FlipRpcClient2();
  var m = RPC_AuthApi(client);
  var req = SendConfirmCodeParam();
  req.writeToBuffer();

  var r = m.sendConfirmCode(ctx, req);

  // sender();
}


