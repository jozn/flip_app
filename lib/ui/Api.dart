import 'dart:async' as $async;

import 'package:flip_app/pb/rpc_auth.pb.dart';
import 'package:flip_app/pb/sys.pb.dart';
import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';
import 'package:protobuf/protobuf.dart' as $pb;

var rpcNameToHashId = {
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

    var paramBuff = param.writeToBuffer();

    var hashId = rpcNameToHashId[methodName];

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


}
