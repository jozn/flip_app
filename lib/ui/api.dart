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


class RPC_Auth {
  static $async.Future<SendConfirmCodeResponse> sendConfirmCode(
      SendConfirmCodeParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 939965206; // SendConfirmCode
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = SendConfirmCodeResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ConfirmCodeResponse> confirmCode(
      ConfirmCodeParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1740258084; // ConfirmCode
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ConfirmCodeResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<SingUpResponse> singUp(
      SingUpParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 291193302; // SingUp
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = SingUpResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<SingInResponse> singIn(
      SingInParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1017957090; // SingIn
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = SingInResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<LogOutResponse> logOut(
      LogOutParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1283119009; // LogOut
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = LogOutResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
}
class RPC_Channel {
  static $async.Future<ChannelCreateChannelResponse> channelCreateChannel(
      ChannelCreateChannelParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 143251225; // ChannelCreateChannel
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelCreateChannelResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelEditChannelResponse> channelEditChannel(
      ChannelEditChannelParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 189471894; // ChannelEditChannel
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelEditChannelResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelDeleteChannelResponse> channelDeleteChannel(
      ChannelDeleteChannelParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1494483355; // ChannelDeleteChannel
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelDeleteChannelResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelAddAuthorResponse> channelAddAuthor(
      ChannelAddAuthorParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 780397316; // ChannelAddAuthor
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelAddAuthorResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelChangeAuthorPermissionResponse> channelChangeAuthorPermission(
      ChannelChangeAuthorPermissionParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 93233821; // ChannelChangeAuthorPermission
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelChangeAuthorPermissionResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelRemoveAuthorResponse> channelRemoveAuthor(
      ChannelRemoveAuthorParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 419542304; // ChannelRemoveAuthor
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelRemoveAuthorResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelFollowChannelResponse> channelFollowChannel(
      ChannelFollowChannelParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 744563779; // ChannelFollowChannel
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelFollowChannelResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelUnFollowChannelResponse> channelUnFollowChannel(
      ChannelUnFollowChannelParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 959512423; // ChannelUnFollowChannel
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelUnFollowChannelResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelRemoveFollowersResponse> channelRemoveFollowers(
      ChannelRemoveFollowersParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 869709257; // ChannelRemoveFollowers
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelRemoveFollowersResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelSubscribeResponse> channelSubscribe(
      ChannelSubscribeParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1367898912; // ChannelSubscribe
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelSubscribeResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelUnSubscribeResponse> channelUnSubscribe(
      ChannelUnSubscribeParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 858172401; // ChannelUnSubscribe
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelUnSubscribeResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelRemoveSubscribersResponse> channelRemoveSubscribers(
      ChannelRemoveSubscribersParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 729024592; // ChannelRemoveSubscribers
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelRemoveSubscribersResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelChangePrivacyResponse> channelChangePrivacy(
      ChannelChangePrivacyParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 79012409; // ChannelChangePrivacy
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelChangePrivacyResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelChangeDefaultPermissionResponse> channelChangeDefaultPermission(
      ChannelChangeDefaultPermissionParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1582638498; // ChannelChangeDefaultPermission
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelChangeDefaultPermissionResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelRevokeLinkResponse> channelRevokeLink(
      ChannelRevokeLinkParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1912530021; // ChannelRevokeLink
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelRevokeLinkResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelChangeUsernameResponse> channelChangeUsername(
      ChannelChangeUsernameParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 983884462; // ChannelChangeUsername
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelChangeUsernameResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelBlockChannelResponse> channelBlockChannel(
      ChannelBlockChannelParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 2037016989; // ChannelBlockChannel
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelBlockChannelResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelSendMessageResponse> channelSendMessage(
      ChannelSendMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1200751231; // ChannelSendMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelSendMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelEditMessageResponse> channelEditMessage(
      ChannelEditMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 727437726; // ChannelEditMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelEditMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelPinMessageResponse> channelPinMessage(
      ChannelPinMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 259263709; // ChannelPinMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelPinMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelUnPinMessageResponse> channelUnPinMessage(
      ChannelUnPinMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 113943649; // ChannelUnPinMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelUnPinMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelDeleteMessageResponse> channelDeleteMessage(
      ChannelDeleteMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 644189206; // ChannelDeleteMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelDeleteMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelDeleteMessagesResponse> channelDeleteMessages(
      ChannelDeleteMessagesParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 2124822181; // ChannelDeleteMessages
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelDeleteMessagesResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelClearHistoryResponse> channelClearHistory(
      ChannelClearHistoryParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1164398815; // ChannelClearHistory
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelClearHistoryResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelAvatarAddResponse> channelAvatarAdd(
      ChannelAvatarAddParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1021808696; // ChannelAvatarAdd
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelAvatarAddResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelAvatarChangeResponse> channelAvatarChange(
      ChannelAvatarChangeParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1968579501; // ChannelAvatarChange
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelAvatarChangeResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelAvatarDeleteResponse> channelAvatarDelete(
      ChannelAvatarDeleteParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1626010891; // ChannelAvatarDelete
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelAvatarDeleteResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelAvatarGetListResponse> channelAvatarGetList(
      ChannelAvatarGetListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1925044843; // ChannelAvatarGetList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelAvatarGetListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelSendDoingActionResponse> channelSendDoingAction(
      ChannelSendDoingActionParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 973237257; // ChannelSendDoingAction
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelSendDoingActionResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelReportChannelResponse> channelReportChannel(
      ChannelReportChannelParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 792938145; // ChannelReportChannel
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelReportChannelResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelReportMessageResponse> channelReportMessage(
      ChannelReportMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 2053528327; // ChannelReportMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelReportMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelGetFullResponse> channelGetFull(
      ChannelGetFullParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1684531258; // ChannelGetFull
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelGetFullResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelGetMessagesListResponse> channelGetMessagesList(
      ChannelGetMessagesListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1339072968; // ChannelGetMessagesList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelGetMessagesListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelGetMediaListResponse> channelGetMediaList(
      ChannelGetMediaListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 985772653; // ChannelGetMediaList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelGetMediaListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelGetAuthorsResponse> channelGetAuthors(
      ChannelGetAuthorsParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1373284924; // ChannelGetAuthors
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelGetAuthorsResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelGetFollowersResponse> channelGetFollowers(
      ChannelGetFollowersParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1747172143; // ChannelGetFollowers
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelGetFollowersResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelGetFollowingsResponse> channelGetFollowings(
      ChannelGetFollowingsParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1838438980; // ChannelGetFollowings
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelGetFollowingsResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelGetSubscribersResponse> channelGetSubscribers(
      ChannelGetSubscribersParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 2146806736; // ChannelGetSubscribers
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelGetSubscribersResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelBlockedResponse> channelBlocked(
      ChannelBlockedParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1674411747; // ChannelBlocked
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelBlockedResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChannelSetDraftResponse> channelSetDraft(
      ChannelSetDraftParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1403193015; // ChannelSetDraft
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChannelSetDraftResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
}
class RPC_Chat {
  static $async.Future<ChatSendMessageResponse> chatSendMessage(
      ChatSendMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1131621475; // ChatSendMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChatSendMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChatEditMessageResponse> chatEditMessage(
      ChatEditMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1806258329; // ChatEditMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChatEditMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChatDeleteMessagesResponse> chatDeleteMessages(
      ChatDeleteMessagesParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 933526170; // ChatDeleteMessages
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChatDeleteMessagesResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChatDeleteHistoryResponse> chatDeleteHistory(
      ChatDeleteHistoryParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1088992782; // ChatDeleteHistory
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChatDeleteHistoryResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChatSendDoingActionResponse> chatSendDoingAction(
      ChatSendDoingActionParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1319324241; // ChatSendDoingAction
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChatSendDoingActionResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChatReportChatResponse> chatReportChat(
      ChatReportChatParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1345425871; // ChatReportChat
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChatReportChatResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChatGetFullMessageResponse> chatGetFull(
      ChatGetFullMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1768678453; // ChatGetFull
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChatGetFullMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChatGetMessagesListResponse> chatGetMessagesList(
      ChatGetMessagesListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 121549718; // ChatGetMessagesList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChatGetMessagesListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<ChatGetMediaListResponse> chatGetMediaList(
      ChatGetMediaListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1346774525; // ChatGetMediaList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChatGetMediaListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
}
class RPC_Direct {
  static $async.Future<DirectDeleteDirectResponse> directDeleteDirect(
      DirectDeleteDirectParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1478067518; // DirectDeleteDirect
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectDeleteDirectResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectChangeTitleResponse> directChangeTitle(
      DirectChangeTitleParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 2041790485; // DirectChangeTitle
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectChangeTitleResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectSetCustomNotificationResponse> directSetCustomNotification(
      DirectSetCustomNotificationParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 548699291; // DirectSetCustomNotification
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectSetCustomNotificationResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectSendActionDoingResponse> directSendActionDoing(
      DirectSendActionDoingParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1417285757; // DirectSendActionDoing
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectSendActionDoingResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectSetDraftResponse> directSetDraft(
      DirectSetDraftParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1860345925; // DirectSetDraft
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectSetDraftResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectDeleteDirectsResponse> directDeleteDirects(
      DirectDeleteDirectsParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1291891637; // DirectDeleteDirects
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectDeleteDirectsResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectMarkAsReadResponse> directMarkAsRead(
      DirectMarkAsReadParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1801774787; // DirectMarkAsRead
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectMarkAsReadResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectMarkAsUnReadResponse> directMarkAsUnRead(
      DirectMarkAsUnReadParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 313746334; // DirectMarkAsUnRead
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectMarkAsUnReadResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectPinDirectsResponse> directPinDirects(
      DirectPinDirectsParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1179089068; // DirectPinDirects
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectPinDirectsResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectUnPinDirectsResponse> directUnPinDirects(
      DirectUnPinDirectsParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1517245560; // DirectUnPinDirects
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectUnPinDirectsResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectArchiveDirectsResponse> directArchiveDirects(
      DirectArchiveDirectsParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1441782770; // DirectArchiveDirects
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectArchiveDirectsResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectUnArchiveDirectsResponse> directUnArchiveDirects(
      DirectUnArchiveDirectsParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1951553867; // DirectUnArchiveDirects
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectUnArchiveDirectsResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectClearHistoriesResponse> directClearHistories(
      DirectClearHistoriesParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 904052140; // DirectClearHistories
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectClearHistoriesResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectMuteDirectsResponse> directMuteDirects(
      DirectMuteDirectsParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1138477048; // DirectMuteDirects
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectMuteDirectsResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectUnMuteDirectsResponse> directUnMuteDirects(
      DirectUnMuteDirectsParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1691834263; // DirectUnMuteDirects
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectUnMuteDirectsResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectCreateFolderResponse> directCreateFolder(
      DirectCreateFolderParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1878673022; // DirectCreateFolder
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectCreateFolderResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectChangeFolderResponse> directChangeFolder(
      DirectChangeFolderParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1861381591; // DirectChangeFolder
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectChangeFolderResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectRemoveFromFolderResponse> directRemoveFromFolder(
      DirectRemoveFromFolderParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1818954127; // DirectRemoveFromFolder
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectRemoveFromFolderResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectReordersFolderResponse> directReordersFolder(
      DirectReordersFolderParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1264591958; // DirectReordersFolder
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectReordersFolderResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectDeleteFolderResponse> directDeleteFolder(
      DirectDeleteFolderParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 962281627; // DirectDeleteFolder
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectDeleteFolderResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectGetChatsListResponse> directGetChatsList(
      DirectGetChatsListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1570934969; // DirectGetChatsList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectGetChatsListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectGetGroupsListResponse> directGetGroupsList(
      DirectGetGroupsListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 545957996; // DirectGetGroupsList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectGetGroupsListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectGetChannelsListResponse> directGetChannelsList(
      DirectGetChannelsListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1608173619; // DirectGetChannelsList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectGetChannelsListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectGetFoldersListResponse> directGetFoldersList(
      DirectGetFoldersListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1384523712; // DirectGetFoldersList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectGetFoldersListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<DirectGetFoldersFullListResponse> directGetFoldersFullList(
      DirectGetFoldersFullListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 611850722; // DirectGetFoldersFullList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = DirectGetFoldersFullListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
}
class RPC_Group {
  static $async.Future<GroupCreateGroupResponse> groupCreateGroup(
      GroupCreateGroupParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1205960678; // GroupCreateGroup
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupCreateGroupResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupEditGroupResponse> groupEditGroup(
      GroupEditGroupParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1665019493; // GroupEditGroup
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupEditGroupResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupDeleteGroupResponse> groupDeleteGroup(
      GroupDeleteGroupParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 365183375; // GroupDeleteGroup
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupDeleteGroupResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupAddAdminResponse> groupAddAdmin(
      GroupAddAdminParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 958971956; // GroupAddAdmin
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupAddAdminResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupAddMemberResponse> groupAddMember(
      GroupAddMemberParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 676599227; // GroupAddMember
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupAddMemberResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupRemoveMemberResponse> groupRemoveMember(
      GroupRemoveMemberParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 2012702964; // GroupRemoveMember
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupRemoveMemberResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupChangeMemberLevelResponse> groupChangeMemberLevel(
      GroupChangeMemberLevelParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 589574238; // GroupChangeMemberLevel
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupChangeMemberLevelResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupChangeMemberPermissionResponse> groupChangeMemberPermission(
      GroupChangeMemberPermissionParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 2132464067; // GroupChangeMemberPermission
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupChangeMemberPermissionResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<JoinGroupResponse> groupJoinGroup(
      JoinGroupParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 591743429; // GroupJoinGroup
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = JoinGroupResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupLeaveGroupResponse> groupLeaveGroup(
      GroupLeaveGroupParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 361834630; // GroupLeaveGroup
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupLeaveGroupResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupBanMemberResponse> groupBanMember(
      GroupBanMemberParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 548504852; // GroupBanMember
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupBanMemberResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupChangePrivacyResponse> groupChangePrivacy(
      GroupChangePrivacyParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1497988410; // GroupChangePrivacy
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupChangePrivacyResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupChangeDefaultPermissionResponse> groupChangeDefaultPermission(
      GroupChangeDefaultPermissionParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 605792138; // GroupChangeDefaultPermission
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupChangeDefaultPermissionResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupRevokeLinkResponse> groupRevokeLink(
      GroupRevokeLinkParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 406592509; // GroupRevokeLink
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupRevokeLinkResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupChangeUsernameResponse> groupChangeUsername(
      GroupChangeUsernameParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 832997038; // GroupChangeUsername
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupChangeUsernameResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupSendMessageResponse> groupSendMessage(
      GroupSendMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 599852950; // GroupSendMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupSendMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupEditMessageResponse> groupEditMessage(
      GroupEditMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 742937895; // GroupEditMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupEditMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupPinMessageResponse> groupPinMessage(
      GroupPinMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 184560027; // GroupPinMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupPinMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupUnPinMessageResponse> groupUnPinMessage(
      GroupUnPinMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1290613173; // GroupUnPinMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupUnPinMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupDeleteMessageResponse> groupDeleteMessage(
      GroupDeleteMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 393991035; // GroupDeleteMessage
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupDeleteMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupDeleteMessagesResponse> groupDeleteMessages(
      GroupDeleteMessagesParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 276700675; // GroupDeleteMessages
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupDeleteMessagesResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupDeleteHistoryResponse> groupDeleteHistory(
      GroupDeleteHistoryParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1270953793; // GroupDeleteHistory
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupDeleteHistoryResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupClearHistoryResponse> groupClearHistory(
      GroupClearHistoryParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1352552449; // GroupClearHistory
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupClearHistoryResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupAvatarAddResponse> groupAvatarAdd(
      GroupAvatarAddParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1202058216; // GroupAvatarAdd
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupAvatarAddResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupAvatarChangeResponse> groupAvatarChange(
      GroupAvatarChangeParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 108612523; // GroupAvatarChange
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupAvatarChangeResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupAvatarDeleteResponse> groupAvatarDelete(
      GroupAvatarDeleteParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 775862697; // GroupAvatarDelete
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupAvatarDeleteResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupAvatarGetListResponse> groupAvatarGetList(
      GroupAvatarGetListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 939443722; // GroupAvatarGetList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupAvatarGetListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupSendDoingActionResponse> groupSendDoingAction(
      GroupSendDoingActionParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 2022474356; // GroupSendDoingAction
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupSendDoingActionResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupReportGroupResponse> groupReportGroup(
      GroupReportGroupParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1759704420; // GroupReportGroup
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupReportGroupResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupGetFullMessageResponse> groupGetFull(
      GroupGetFullMessageParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 200351324; // GroupGetFull
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupGetFullMessageResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupGetMessagesListResponse> groupGetMessagesList(
      GroupGetMessagesListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1541835459; // GroupGetMessagesList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupGetMessagesListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupGetMediaListResponse> groupGetMediaList(
      GroupGetMediaListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 2143016912; // GroupGetMediaList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupGetMediaListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupGetMembersListResponse> groupGetMembersList(
      GroupGetMembersListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 429215412; // GroupGetMembersList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupGetMembersListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupGetAdminsListResponse> groupGetAdminsList(
      GroupGetAdminsListParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 332260610; // GroupGetAdminsList
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupGetAdminsListResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GroupSetDraftResponse> groupSetDraft(
      GroupSetDraftParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 77668156; // GroupSetDraft
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GroupSetDraftResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
}
class RPC_Sample {
  static $async.Future<GetUsers1Response> getUsers1(
      GetUsers1Param param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 486248681; // GetUsers1
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GetUsers1Response();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GetProfilesResponse> getProfiles(
      GetProfilesParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 822554282; // GetProfiles
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GetProfilesResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GetChannelsResponse> getChannels(
      GetChannelsParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1734748927; // GetChannels
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GetChannelsResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GetDirectsResponse> getDirects(
      GetDirectsParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 558085683; // GetDirects
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GetDirectsResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<GetMessagesResponse> getMessages(
      GetMessagesParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1160951872; // GetMessages
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = GetMessagesResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
}
class RPC_Shared {
  static $async.Future<EchoResponse> echo(
      EchoParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 101973561; // Echo
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = EchoResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
  static $async.Future<CheckUserNameResponse> checkUserName(
      CheckUserNameParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1897027349; // CheckUserName
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = CheckUserNameResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
}
class RPC_Upload {
  static $async.Future<UploadFileResponse> uploadFile(
      UploadFileParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 1702285478; // UploadFile
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = UploadFileResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
}
class RPC_User {
  static $async.Future<ChangePhoneNumberResponse> changePhoneNumber(
      ChangePhoneNumberParam param) async {
    var paramBuff = param.writeToBuffer();

    var invoke = Invoke();
    invoke.namespace = 0;
    invoke.isResponse = false;
    invoke.method = 706069694; // ChangePhoneNumber
    invoke.rpcData = paramBuff;

    var invokeBuff = invoke.writeToBuffer();

    var res = await http.post(
      "http://192.168.43.160:3002/rpc",
      body: invokeBuff,
      // encoding: Encoding.getByName("utf-8")
    );
    // print('Response ## len : ${res.body.length}');
    // print('Response ## bts  : ${res.bodyBytes}');

    var response = ChangePhoneNumberResponse();
    response.mergeFromBuffer(res.bodyBytes);
    return response;
  }
  
}

