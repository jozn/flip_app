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

var rpcNameToHashId = {
  'SendConfirmCode': 99432981,
  'ConfirmCode': 1139849846,
  'SingUp': 344412789,
  'SingIn': 5700586,
  'LogOut': 548012719,
  'ChannelCreateChannel': 740341541,
  'ChannelEditChannel': 329231200,
  'ChannelDeleteChannel': 177944127,
  'ChannelAddAuthor': 1711825211,
  'ChannelChangeAuthorPermission': 151376166,
  'ChannelRemoveAuthor': 738902973,
  'ChannelFollowChannel': 1627479123,
  'ChannelUnFollowChannel': 1037521736,
  'ChannelRemoveFollowers': 308740721,
  'ChannelSubscribe': 757900782,
  'ChannelUnSubscribe': 358413629,
  'ChannelRemoveSubscribers': 505495602,
  'ChannelChangePrivacy': 1733100870,
  'ChannelChangeDefaultPermission': 2017309544,
  'ChannelRevokeLink': 996833555,
  'ChannelChangeUsername': 1670162010,
  'ChannelBlockChannel': 712464279,
  'ChannelSendMessage': 1957690884,
  'ChannelEditMessage': 2096144443,
  'ChannelPinMessage': 1642528121,
  'ChannelUnPinMessage': 2083192996,
  'ChannelDeleteMessage': 1167266448,
  'ChannelDeleteMessages': 789593552,
  'ChannelClearHistory': 1169273718,
  'ChannelAvatarAdd': 1289673888,
  'ChannelAvatarChange': 886893206,
  'ChannelAvatarDelete': 1452867901,
  'ChannelAvatarGetList': 988947981,
  'ChannelSendDoingAction': 1633866869,
  'ChannelReportChannel': 1764489847,
  'ChannelReportMessage': 241326631,
  'ChannelGetFull': 259375337,
  'ChannelGetMessagesList': 427631986,
  'ChannelGetMediaList': 250698167,
  'ChannelGetAuthors': 1778309222,
  'ChannelGetFollowers': 1196343214,
  'ChannelGetFollowings': 35449020,
  'ChannelGetSubscribers': 1954004522,
  'ChannelBlocked': 1670519893,
  'ChannelSetDraft': 1563299078,
  'ChatSendMessage': 872296057,
  'ChatEditMessage': 548752544,
  'ChatDeleteMessages': 475175726,
  'ChatDeleteHistory': 2090393303,
  'ChatSendDoingAction': 1654010294,
  'ChatReportChat': 1433006017,
  'ChatGetFull': 1399898814,
  'ChatGetMessagesList': 2031841962,
  'ChatGetMediaList': 162122201,
  'DirectDeleteDirect': 95323214,
  'DirectChangeTitle': 250554551,
  'DirectSetCustomNotification': 458248252,
  'DirectSendActionDoing': 658009933,
  'DirectSetDraft': 712749707,
  'DirectDeleteDirects': 1197087360,
  'DirectMarkAsRead': 1429996148,
  'DirectMarkAsUnRead': 233319325,
  'DirectPinDirects': 1375511294,
  'DirectUnPinDirects': 293925235,
  'DirectArchiveDirects': 1416265881,
  'DirectUnArchiveDirects': 1615356451,
  'DirectClearHistories': 1518839919,
  'DirectMuteDirects': 179035912,
  'DirectUnMuteDirects': 719725946,
  'DirectCreateFolder': 2001408305,
  'DirectChangeFolder': 1814658660,
  'DirectRemoveFromFolder': 151098714,
  'DirectReordersFolder': 1957624017,
  'DirectDeleteFolder': 977344730,
  'DirectGetChatsList': 1003954339,
  'DirectGetGroupsList': 1110873556,
  'DirectGetChannelsList': 427433511,
  'DirectGetFoldersList': 1067480006,
  'DirectGetFoldersFullList': 1657882950,
  'GroupCreateGroup': 1140942978,
  'GroupEditGroup': 1880514193,
  'GroupDeleteGroup': 1459388602,
  'GroupAddAdmin': 2134185330,
  'GroupAddMember': 606751933,
  'GroupRemoveMember': 1837375022,
  'GroupChangeMemberLevel': 1539340173,
  'GroupChangeMemberPermission': 483512268,
  'GroupJoinGroup': 655613339,
  'GroupLeaveGroup': 579241895,
  'GroupBanMember': 1045673431,
  'GroupChangePrivacy': 600263304,
  'GroupChangeDefaultPermission': 954689199,
  'GroupRevokeLink': 1764467684,
  'GroupChangeUsername': 1191090261,
  'GroupSendMessage': 684584436,
  'GroupEditMessage': 1787622934,
  'GroupPinMessage': 1238271536,
  'GroupUnPinMessage': 631852378,
  'GroupDeleteMessage': 1194346075,
  'GroupDeleteMessages': 1584921307,
  'GroupDeleteHistory': 953107081,
  'GroupClearHistory': 1430468467,
  'GroupAvatarAdd': 1167941254,
  'GroupAvatarChange': 406803098,
  'GroupAvatarDelete': 854193498,
  'GroupAvatarGetList': 1102046093,
  'GroupSendDoingAction': 1686585448,
  'GroupReportGroup': 220798382,
  'GroupGetFull': 499140930,
  'GroupGetMessagesList': 1617930178,
  'GroupGetMediaList': 1490669886,
  'GroupGetMembersList': 502288128,
  'GroupGetAdminsList': 1772981789,
  'GroupSetDraft': 411748258,
  'GetUsers1': 920502617,
  'GetProfiles': 770967729,
  'GetChannels': 88100100,
  'GetDirects': 393387904,
  'GetMessages': 1834253004,
  'Echo': 1239211125,
  'CheckUserName': 1759322581,
  'UploadFile': 422068969,
  'ChangePhoneNumber': 605934586,
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

class FlipRpcPbClientContext extends $pb.ClientContext {}

class Auth {
  static $async.Future<SendConfirmCodeResponse> sendConfirmCode(
      SendConfirmCodeParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_AuthApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.sendConfirmCode(ctxRpc, param);
  }

  static $async.Future<ConfirmCodeResponse> confirmCode(
      ConfirmCodeParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_AuthApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.confirmCode(ctxRpc, param);
  }

  static $async.Future<SingUpResponse> singUp(SingUpParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_AuthApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.singUp(ctxRpc, param);
  }

  static $async.Future<SingInResponse> singIn(SingInParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_AuthApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.singIn(ctxRpc, param);
  }

  static $async.Future<LogOutResponse> logOut(LogOutParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_AuthApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.logOut(ctxRpc, param);
  }
}

class Channel {
  static $async.Future<ChannelCreateChannelResponse> channelCreateChannel(
      ChannelCreateChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelCreateChannel(ctxRpc, param);
  }

  static $async.Future<ChannelEditChannelResponse> channelEditChannel(
      ChannelEditChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelEditChannel(ctxRpc, param);
  }

  static $async.Future<ChannelDeleteChannelResponse> channelDeleteChannel(
      ChannelDeleteChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelDeleteChannel(ctxRpc, param);
  }

  static $async.Future<ChannelAddAuthorResponse> channelAddAuthor(
      ChannelAddAuthorParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelAddAuthor(ctxRpc, param);
  }

  static $async.Future<ChannelChangeAuthorPermissionResponse>
      channelChangeAuthorPermission(
          ChannelChangeAuthorPermissionParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelChangeAuthorPermission(ctxRpc, param);
  }

  static $async.Future<ChannelRemoveAuthorResponse> channelRemoveAuthor(
      ChannelRemoveAuthorParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelRemoveAuthor(ctxRpc, param);
  }

  static $async.Future<ChannelFollowChannelResponse> channelFollowChannel(
      ChannelFollowChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelFollowChannel(ctxRpc, param);
  }

  static $async.Future<ChannelUnFollowChannelResponse> channelUnFollowChannel(
      ChannelUnFollowChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelUnFollowChannel(ctxRpc, param);
  }

  static $async.Future<ChannelRemoveFollowersResponse> channelRemoveFollowers(
      ChannelRemoveFollowersParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelRemoveFollowers(ctxRpc, param);
  }

  static $async.Future<ChannelSubscribeResponse> channelSubscribe(
      ChannelSubscribeParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelSubscribe(ctxRpc, param);
  }

  static $async.Future<ChannelUnSubscribeResponse> channelUnSubscribe(
      ChannelUnSubscribeParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelUnSubscribe(ctxRpc, param);
  }

  static $async.Future<ChannelRemoveSubscribersResponse>
      channelRemoveSubscribers(ChannelRemoveSubscribersParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelRemoveSubscribers(ctxRpc, param);
  }

  static $async.Future<ChannelChangePrivacyResponse> channelChangePrivacy(
      ChannelChangePrivacyParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelChangePrivacy(ctxRpc, param);
  }

  static $async.Future<ChannelChangeDefaultPermissionResponse>
      channelChangeDefaultPermission(
          ChannelChangeDefaultPermissionParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelChangeDefaultPermission(ctxRpc, param);
  }

  static $async.Future<ChannelRevokeLinkResponse> channelRevokeLink(
      ChannelRevokeLinkParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelRevokeLink(ctxRpc, param);
  }

  static $async.Future<ChannelChangeUsernameResponse> channelChangeUsername(
      ChannelChangeUsernameParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelChangeUsername(ctxRpc, param);
  }

  static $async.Future<ChannelBlockChannelResponse> channelBlockChannel(
      ChannelBlockChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelBlockChannel(ctxRpc, param);
  }

  static $async.Future<ChannelSendMessageResponse> channelSendMessage(
      ChannelSendMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelSendMessage(ctxRpc, param);
  }

  static $async.Future<ChannelEditMessageResponse> channelEditMessage(
      ChannelEditMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelEditMessage(ctxRpc, param);
  }

  static $async.Future<ChannelPinMessageResponse> channelPinMessage(
      ChannelPinMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelPinMessage(ctxRpc, param);
  }

  static $async.Future<ChannelUnPinMessageResponse> channelUnPinMessage(
      ChannelUnPinMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelUnPinMessage(ctxRpc, param);
  }

  static $async.Future<ChannelDeleteMessageResponse> channelDeleteMessage(
      ChannelDeleteMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelDeleteMessage(ctxRpc, param);
  }

  static $async.Future<ChannelDeleteMessagesResponse> channelDeleteMessages(
      ChannelDeleteMessagesParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelDeleteMessages(ctxRpc, param);
  }

  static $async.Future<ChannelClearHistoryResponse> channelClearHistory(
      ChannelClearHistoryParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelClearHistory(ctxRpc, param);
  }

  static $async.Future<ChannelAvatarAddResponse> channelAvatarAdd(
      ChannelAvatarAddParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelAvatarAdd(ctxRpc, param);
  }

  static $async.Future<ChannelAvatarChangeResponse> channelAvatarChange(
      ChannelAvatarChangeParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelAvatarChange(ctxRpc, param);
  }

  static $async.Future<ChannelAvatarDeleteResponse> channelAvatarDelete(
      ChannelAvatarDeleteParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelAvatarDelete(ctxRpc, param);
  }

  static $async.Future<ChannelAvatarGetListResponse> channelAvatarGetList(
      ChannelAvatarGetListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelAvatarGetList(ctxRpc, param);
  }

  static $async.Future<ChannelSendDoingActionResponse> channelSendDoingAction(
      ChannelSendDoingActionParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelSendDoingAction(ctxRpc, param);
  }

  static $async.Future<ChannelReportChannelResponse> channelReportChannel(
      ChannelReportChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelReportChannel(ctxRpc, param);
  }

  static $async.Future<ChannelReportMessageResponse> channelReportMessage(
      ChannelReportMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelReportMessage(ctxRpc, param);
  }

  static $async.Future<ChannelGetFullResponse> channelGetFull(
      ChannelGetFullParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelGetFull(ctxRpc, param);
  }

  static $async.Future<ChannelGetMessagesListResponse> channelGetMessagesList(
      ChannelGetMessagesListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelGetMessagesList(ctxRpc, param);
  }

  static $async.Future<ChannelGetMediaListResponse> channelGetMediaList(
      ChannelGetMediaListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelGetMediaList(ctxRpc, param);
  }

  static $async.Future<ChannelGetAuthorsResponse> channelGetAuthors(
      ChannelGetAuthorsParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelGetAuthors(ctxRpc, param);
  }

  static $async.Future<ChannelGetFollowersResponse> channelGetFollowers(
      ChannelGetFollowersParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelGetFollowers(ctxRpc, param);
  }

  static $async.Future<ChannelGetFollowingsResponse> channelGetFollowings(
      ChannelGetFollowingsParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelGetFollowings(ctxRpc, param);
  }

  static $async.Future<ChannelGetSubscribersResponse> channelGetSubscribers(
      ChannelGetSubscribersParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelGetSubscribers(ctxRpc, param);
  }

  static $async.Future<ChannelBlockedResponse> channelBlocked(
      ChannelBlockedParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelBlocked(ctxRpc, param);
  }

  static $async.Future<ChannelSetDraftResponse> channelSetDraft(
      ChannelSetDraftParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChannelApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.channelSetDraft(ctxRpc, param);
  }
}

class Chat {
  static $async.Future<ChatSendMessageResponse> chatSendMessage(
      ChatSendMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChatApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.chatSendMessage(ctxRpc, param);
  }

  static $async.Future<ChatEditMessageResponse> chatEditMessage(
      ChatEditMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChatApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.chatEditMessage(ctxRpc, param);
  }

  static $async.Future<ChatDeleteMessagesResponse> chatDeleteMessages(
      ChatDeleteMessagesParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChatApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.chatDeleteMessages(ctxRpc, param);
  }

  static $async.Future<ChatDeleteHistoryResponse> chatDeleteHistory(
      ChatDeleteHistoryParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChatApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.chatDeleteHistory(ctxRpc, param);
  }

  static $async.Future<ChatSendDoingActionResponse> chatSendDoingAction(
      ChatSendDoingActionParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChatApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.chatSendDoingAction(ctxRpc, param);
  }

  static $async.Future<ChatReportChatResponse> chatReportChat(
      ChatReportChatParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChatApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.chatReportChat(ctxRpc, param);
  }

  static $async.Future<ChatGetFullMessageResponse> chatGetFull(
      ChatGetFullMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChatApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.chatGetFull(ctxRpc, param);
  }

  static $async.Future<ChatGetMessagesListResponse> chatGetMessagesList(
      ChatGetMessagesListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChatApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.chatGetMessagesList(ctxRpc, param);
  }

  static $async.Future<ChatGetMediaListResponse> chatGetMediaList(
      ChatGetMediaListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_ChatApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.chatGetMediaList(ctxRpc, param);
  }
}

class Direct {
  static $async.Future<DirectDeleteDirectResponse> directDeleteDirect(
      DirectDeleteDirectParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directDeleteDirect(ctxRpc, param);
  }

  static $async.Future<DirectChangeTitleResponse> directChangeTitle(
      DirectChangeTitleParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directChangeTitle(ctxRpc, param);
  }

  static $async.Future<DirectSetCustomNotificationResponse>
      directSetCustomNotification(
          DirectSetCustomNotificationParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directSetCustomNotification(ctxRpc, param);
  }

  static $async.Future<DirectSendActionDoingResponse> directSendActionDoing(
      DirectSendActionDoingParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directSendActionDoing(ctxRpc, param);
  }

  static $async.Future<DirectSetDraftResponse> directSetDraft(
      DirectSetDraftParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directSetDraft(ctxRpc, param);
  }

  static $async.Future<DirectDeleteDirectsResponse> directDeleteDirects(
      DirectDeleteDirectsParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directDeleteDirects(ctxRpc, param);
  }

  static $async.Future<DirectMarkAsReadResponse> directMarkAsRead(
      DirectMarkAsReadParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directMarkAsRead(ctxRpc, param);
  }

  static $async.Future<DirectMarkAsUnReadResponse> directMarkAsUnRead(
      DirectMarkAsUnReadParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directMarkAsUnRead(ctxRpc, param);
  }

  static $async.Future<DirectPinDirectsResponse> directPinDirects(
      DirectPinDirectsParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directPinDirects(ctxRpc, param);
  }

  static $async.Future<DirectUnPinDirectsResponse> directUnPinDirects(
      DirectUnPinDirectsParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directUnPinDirects(ctxRpc, param);
  }

  static $async.Future<DirectArchiveDirectsResponse> directArchiveDirects(
      DirectArchiveDirectsParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directArchiveDirects(ctxRpc, param);
  }

  static $async.Future<DirectUnArchiveDirectsResponse> directUnArchiveDirects(
      DirectUnArchiveDirectsParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directUnArchiveDirects(ctxRpc, param);
  }

  static $async.Future<DirectClearHistoriesResponse> directClearHistories(
      DirectClearHistoriesParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directClearHistories(ctxRpc, param);
  }

  static $async.Future<DirectMuteDirectsResponse> directMuteDirects(
      DirectMuteDirectsParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directMuteDirects(ctxRpc, param);
  }

  static $async.Future<DirectUnMuteDirectsResponse> directUnMuteDirects(
      DirectUnMuteDirectsParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directUnMuteDirects(ctxRpc, param);
  }

  static $async.Future<DirectCreateFolderResponse> directCreateFolder(
      DirectCreateFolderParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directCreateFolder(ctxRpc, param);
  }

  static $async.Future<DirectChangeFolderResponse> directChangeFolder(
      DirectChangeFolderParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directChangeFolder(ctxRpc, param);
  }

  static $async.Future<DirectRemoveFromFolderResponse> directRemoveFromFolder(
      DirectRemoveFromFolderParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directRemoveFromFolder(ctxRpc, param);
  }

  static $async.Future<DirectReordersFolderResponse> directReordersFolder(
      DirectReordersFolderParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directReordersFolder(ctxRpc, param);
  }

  static $async.Future<DirectDeleteFolderResponse> directDeleteFolder(
      DirectDeleteFolderParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directDeleteFolder(ctxRpc, param);
  }

  static $async.Future<DirectGetChatsListResponse> directGetChatsList(
      DirectGetChatsListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directGetChatsList(ctxRpc, param);
  }

  static $async.Future<DirectGetGroupsListResponse> directGetGroupsList(
      DirectGetGroupsListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directGetGroupsList(ctxRpc, param);
  }

  static $async.Future<DirectGetChannelsListResponse> directGetChannelsList(
      DirectGetChannelsListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directGetChannelsList(ctxRpc, param);
  }

  static $async.Future<DirectGetFoldersListResponse> directGetFoldersList(
      DirectGetFoldersListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directGetFoldersList(ctxRpc, param);
  }

  static $async.Future<DirectGetFoldersFullListResponse>
      directGetFoldersFullList(DirectGetFoldersFullListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_DirectApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.directGetFoldersFullList(ctxRpc, param);
  }
}

class Group {
  static $async.Future<GroupCreateGroupResponse> groupCreateGroup(
      GroupCreateGroupParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupCreateGroup(ctxRpc, param);
  }

  static $async.Future<GroupEditGroupResponse> groupEditGroup(
      GroupEditGroupParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupEditGroup(ctxRpc, param);
  }

  static $async.Future<GroupDeleteGroupResponse> groupDeleteGroup(
      GroupDeleteGroupParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupDeleteGroup(ctxRpc, param);
  }

  static $async.Future<GroupAddAdminResponse> groupAddAdmin(
      GroupAddAdminParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupAddAdmin(ctxRpc, param);
  }

  static $async.Future<GroupAddMemberResponse> groupAddMember(
      GroupAddMemberParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupAddMember(ctxRpc, param);
  }

  static $async.Future<GroupRemoveMemberResponse> groupRemoveMember(
      GroupRemoveMemberParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupRemoveMember(ctxRpc, param);
  }

  static $async.Future<GroupChangeMemberLevelResponse> groupChangeMemberLevel(
      GroupChangeMemberLevelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupChangeMemberLevel(ctxRpc, param);
  }

  static $async.Future<GroupChangeMemberPermissionResponse>
      groupChangeMemberPermission(
          GroupChangeMemberPermissionParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupChangeMemberPermission(ctxRpc, param);
  }

  static $async.Future<JoinGroupResponse> groupJoinGroup(
      JoinGroupParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupJoinGroup(ctxRpc, param);
  }

  static $async.Future<GroupLeaveGroupResponse> groupLeaveGroup(
      GroupLeaveGroupParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupLeaveGroup(ctxRpc, param);
  }

  static $async.Future<GroupBanMemberResponse> groupBanMember(
      GroupBanMemberParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupBanMember(ctxRpc, param);
  }

  static $async.Future<GroupChangePrivacyResponse> groupChangePrivacy(
      GroupChangePrivacyParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupChangePrivacy(ctxRpc, param);
  }

  static $async.Future<GroupChangeDefaultPermissionResponse>
      groupChangeDefaultPermission(
          GroupChangeDefaultPermissionParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupChangeDefaultPermission(ctxRpc, param);
  }

  static $async.Future<GroupRevokeLinkResponse> groupRevokeLink(
      GroupRevokeLinkParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupRevokeLink(ctxRpc, param);
  }

  static $async.Future<GroupChangeUsernameResponse> groupChangeUsername(
      GroupChangeUsernameParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupChangeUsername(ctxRpc, param);
  }

  static $async.Future<GroupSendMessageResponse> groupSendMessage(
      GroupSendMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupSendMessage(ctxRpc, param);
  }

  static $async.Future<GroupEditMessageResponse> groupEditMessage(
      GroupEditMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupEditMessage(ctxRpc, param);
  }

  static $async.Future<GroupPinMessageResponse> groupPinMessage(
      GroupPinMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupPinMessage(ctxRpc, param);
  }

  static $async.Future<GroupUnPinMessageResponse> groupUnPinMessage(
      GroupUnPinMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupUnPinMessage(ctxRpc, param);
  }

  static $async.Future<GroupDeleteMessageResponse> groupDeleteMessage(
      GroupDeleteMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupDeleteMessage(ctxRpc, param);
  }

  static $async.Future<GroupDeleteMessagesResponse> groupDeleteMessages(
      GroupDeleteMessagesParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupDeleteMessages(ctxRpc, param);
  }

  static $async.Future<GroupDeleteHistoryResponse> groupDeleteHistory(
      GroupDeleteHistoryParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupDeleteHistory(ctxRpc, param);
  }

  static $async.Future<GroupClearHistoryResponse> groupClearHistory(
      GroupClearHistoryParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupClearHistory(ctxRpc, param);
  }

  static $async.Future<GroupAvatarAddResponse> groupAvatarAdd(
      GroupAvatarAddParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupAvatarAdd(ctxRpc, param);
  }

  static $async.Future<GroupAvatarChangeResponse> groupAvatarChange(
      GroupAvatarChangeParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupAvatarChange(ctxRpc, param);
  }

  static $async.Future<GroupAvatarDeleteResponse> groupAvatarDelete(
      GroupAvatarDeleteParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupAvatarDelete(ctxRpc, param);
  }

  static $async.Future<GroupAvatarGetListResponse> groupAvatarGetList(
      GroupAvatarGetListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupAvatarGetList(ctxRpc, param);
  }

  static $async.Future<GroupSendDoingActionResponse> groupSendDoingAction(
      GroupSendDoingActionParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupSendDoingAction(ctxRpc, param);
  }

  static $async.Future<GroupReportGroupResponse> groupReportGroup(
      GroupReportGroupParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupReportGroup(ctxRpc, param);
  }

  static $async.Future<GroupGetFullMessageResponse> groupGetFull(
      GroupGetFullMessageParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupGetFull(ctxRpc, param);
  }

  static $async.Future<GroupGetMessagesListResponse> groupGetMessagesList(
      GroupGetMessagesListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupGetMessagesList(ctxRpc, param);
  }

  static $async.Future<GroupGetMediaListResponse> groupGetMediaList(
      GroupGetMediaListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupGetMediaList(ctxRpc, param);
  }

  static $async.Future<GroupGetMembersListResponse> groupGetMembersList(
      GroupGetMembersListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupGetMembersList(ctxRpc, param);
  }

  static $async.Future<GroupGetAdminsListResponse> groupGetAdminsList(
      GroupGetAdminsListParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupGetAdminsList(ctxRpc, param);
  }

  static $async.Future<GroupSetDraftResponse> groupSetDraft(
      GroupSetDraftParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GroupApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.groupSetDraft(ctxRpc, param);
  }
}

class Sample {
  static $async.Future<GetUsers1Response> getUsers1(
      GetUsers1Param param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SampleApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.getUsers1(ctxRpc, param);
  }

  static $async.Future<GetProfilesResponse> getProfiles(
      GetProfilesParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SampleApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.getProfiles(ctxRpc, param);
  }

  static $async.Future<GetChannelsResponse> getChannels(
      GetChannelsParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SampleApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.getChannels(ctxRpc, param);
  }

  static $async.Future<GetDirectsResponse> getDirects(
      GetDirectsParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SampleApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.getDirects(ctxRpc, param);
  }

  static $async.Future<GetMessagesResponse> getMessages(
      GetMessagesParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SampleApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.getMessages(ctxRpc, param);
  }
}

class Shared {
  static $async.Future<EchoResponse> echo(EchoParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SharedApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.echo(ctxRpc, param);
  }

  static $async.Future<CheckUserNameResponse> checkUserName(
      CheckUserNameParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SharedApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.checkUserName(ctxRpc, param);
  }
}

class Upload {
  static $async.Future<UploadFileResponse> uploadFile(
      UploadFileParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_UploadApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.uploadFile(ctxRpc, param);
  }
}

class User {
  static $async.Future<ChangePhoneNumberResponse> changePhoneNumber(
      ChangePhoneNumberParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_UserApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.changePhoneNumber(ctxRpc, param);
  }
}

class Auth22 {
  static $async.Future<SendConfirmCodeResponse> sendConfirmCode(
      SendConfirmCodeParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_AuthApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.sendConfirmCode(ctxRpc, param);
  }
}
