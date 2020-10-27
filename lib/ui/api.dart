import 'dart:async' as $async;
import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:flip_app/pb/sys.pb.dart';

import 'package:flip_app/pb/rpc_account.pb.dart';
import 'package:flip_app/pb/rpc_auth.pb.dart';
import 'package:flip_app/pb/rpc_channel.pb.dart';
import 'package:flip_app/pb/rpc_chat.pb.dart';
import 'package:flip_app/pb/rpc_direct.pb.dart';
import 'package:flip_app/pb/rpc_general.pb.dart';
import 'package:flip_app/pb/rpc_group.pb.dart';
import 'package:flip_app/pb/rpc_social.pb.dart';
import 'package:flip_app/pb/rpc_upload.pb.dart';

var rpcNameToHashId = {
  'ChangePhoneNumber': 706069694,
  'SendConfirmCode': 939965206,
  'ConfirmCode': 1740258084,
  'SingUp': 291193302,
  'SingIn': 1017957090,
  'LogOut': 1283119009,
  'ChannelCreateChannel': 143251225,
  'ChannelEditChannel': 189471894,
  'ChannelDeleteChannel': 1494483355,
  'ChannelAddAuthor': 780397316,
  'ChannelChangeAuthorPermission': 93233821,
  'ChannelRemoveAuthor': 419542304,
  'ChannelFollowChannel': 744563779,
  'ChannelUnFollowChannel': 959512423,
  'ChannelRemoveFollowers': 869709257,
  'ChannelSubscribe': 1367898912,
  'ChannelUnSubscribe': 858172401,
  'ChannelRemoveSubscribers': 729024592,
  'ChannelChangePrivacy': 79012409,
  'ChannelChangeDefaultPermission': 1582638498,
  'ChannelRevokeLink': 1912530021,
  'ChannelChangeUsername': 983884462,
  'ChannelBlockChannel': 2037016989,
  'ChannelSendMessage': 1200751231,
  'ChannelEditMessage': 727437726,
  'ChannelPinMessage': 259263709,
  'ChannelUnPinMessage': 113943649,
  'ChannelDeleteMessage': 644189206,
  'ChannelDeleteMessages': 2124822181,
  'ChannelClearHistory': 1164398815,
  'ChannelAvatarAdd': 1021808696,
  'ChannelAvatarChange': 1968579501,
  'ChannelAvatarDelete': 1626010891,
  'ChannelAvatarGetList': 1925044843,
  'ChannelSendDoingAction': 973237257,
  'ChannelReportChannel': 792938145,
  'ChannelReportMessage': 2053528327,
  'ChannelGetFull': 1684531258,
  'ChannelGetMessagesList': 1339072968,
  'ChannelGetMediaList': 985772653,
  'ChannelGetAuthors': 1373284924,
  'ChannelGetFollowers': 1747172143,
  'ChannelGetFollowings': 1838438980,
  'ChannelGetSubscribers': 2146806736,
  'ChannelBlocked': 1674411747,
  'ChannelSetDraft': 1403193015,
  'ChatSendMessage': 1131621475,
  'ChatEditMessage': 1806258329,
  'ChatDeleteMessages': 933526170,
  'ChatDeleteHistory': 1088992782,
  'ChatSendDoingAction': 1319324241,
  'ChatReportChat': 1345425871,
  'ChatGetFull': 1768678453,
  'ChatGetMessagesList': 121549718,
  'ChatGetMediaList': 1346774525,
  'DirectDeleteDirect': 1478067518,
  'DirectChangeTitle': 2041790485,
  'DirectSetCustomNotification': 548699291,
  'DirectSendActionDoing': 1417285757,
  'DirectSetDraft': 1860345925,
  'DirectDeleteDirects': 1291891637,
  'DirectMarkAsRead': 1801774787,
  'DirectMarkAsUnRead': 313746334,
  'DirectPinDirects': 1179089068,
  'DirectUnPinDirects': 1517245560,
  'DirectArchiveDirects': 1441782770,
  'DirectUnArchiveDirects': 1951553867,
  'DirectClearHistories': 904052140,
  'DirectMuteDirects': 1138477048,
  'DirectUnMuteDirects': 1691834263,
  'DirectCreateFolder': 1878673022,
  'DirectChangeFolder': 1861381591,
  'DirectRemoveFromFolder': 1818954127,
  'DirectReordersFolder': 1264591958,
  'DirectDeleteFolder': 962281627,
  'DirectGetChatsList': 1570934969,
  'DirectGetGroupsList': 545957996,
  'DirectGetChannelsList': 1608173619,
  'DirectGetFoldersList': 1384523712,
  'DirectGetFoldersFullList': 611850722,
  'Echo': 101973561,
  'CheckUserName': 1897027349,
  'GroupCreateGroup': 1205960678,
  'GroupEditGroup': 1665019493,
  'GroupDeleteGroup': 365183375,
  'GroupAddAdmin': 958971956,
  'GroupAddMember': 676599227,
  'GroupRemoveMember': 2012702964,
  'GroupChangeMemberLevel': 589574238,
  'GroupChangeMemberPermission': 2132464067,
  'GroupJoinGroup': 591743429,
  'GroupLeaveGroup': 361834630,
  'GroupBanMember': 548504852,
  'GroupChangePrivacy': 1497988410,
  'GroupChangeDefaultPermission': 605792138,
  'GroupRevokeLink': 406592509,
  'GroupChangeUsername': 832997038,
  'GroupSendMessage': 599852950,
  'GroupEditMessage': 742937895,
  'GroupPinMessage': 184560027,
  'GroupUnPinMessage': 1290613173,
  'GroupDeleteMessage': 393991035,
  'GroupDeleteMessages': 276700675,
  'GroupDeleteHistory': 1270953793,
  'GroupClearHistory': 1352552449,
  'GroupAvatarAdd': 1202058216,
  'GroupAvatarChange': 108612523,
  'GroupAvatarDelete': 775862697,
  'GroupAvatarGetList': 939443722,
  'GroupSendDoingAction': 2022474356,
  'GroupReportGroup': 1759704420,
  'GroupGetFull': 200351324,
  'GroupGetMessagesList': 1541835459,
  'GroupGetMediaList': 2143016912,
  'GroupGetMembersList': 429215412,
  'GroupGetAdminsList': 332260610,
  'GroupSetDraft': 77668156,
  'AddComment': 1222124115,
  'DeleteComment': 1684680875,
  'EditComment': 527415306,
  'LikeComment': 2086146002,
  'AddSeenPosts': 1118533600,
  'LikePost': 1313969677,
  'UnLikePost': 1332796256,
  'FollowChannel': 655898778,
  'UnFollowChannel': 483078047,
  'PinChannel': 1225489769,
  'UnPinChannel': 1585401362,
  'BlockChannel': 1902848482,
  'UnBlockChannel': 305468874,
  'UploadFile': 1702285478,
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

class Account {
  static $async.Future<ChangePhoneNumberResponse> changePhoneNumber(
      ChangePhoneNumberParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_AccountApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.changePhoneNumber(ctxRpc, param);
  }
}

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

class General {
  static $async.Future<EchoResponse> echo(EchoParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GeneralApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.echo(ctxRpc, param);
  }

  static $async.Future<CheckUserNameResponse> checkUserName(
      CheckUserNameParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_GeneralApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.checkUserName(ctxRpc, param);
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

class Social {
  static $async.Future<AddCommentResponse> addComment(
      AddCommentParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.addComment(ctxRpc, param);
  }

  static $async.Future<DeleteCommentResponse> deleteComment(
      DeleteCommentParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.deleteComment(ctxRpc, param);
  }

  static $async.Future<EditCommentResponse> editComment(
      EditCommentParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.editComment(ctxRpc, param);
  }

  static $async.Future<LikeCommentResponse> likeComment(
      LikeCommentParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.likeComment(ctxRpc, param);
  }

  static $async.Future<AddSeenPostsResponse> addSeenPosts(
      AddSeenPostsParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.addSeenPosts(ctxRpc, param);
  }

  static $async.Future<LikePostResponse> likePost(LikePostParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.likePost(ctxRpc, param);
  }

  static $async.Future<UnLikePostResponse> unLikePost(
      UnLikePostParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.unLikePost(ctxRpc, param);
  }

  static $async.Future<FollowChannelResponse> followChannel(
      FollowChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.followChannel(ctxRpc, param);
  }

  static $async.Future<UnFollowChannelResponse> unFollowChannel(
      UnFollowChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.unFollowChannel(ctxRpc, param);
  }

  static $async.Future<PinChannelResponse> pinChannel(
      PinChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.pinChannel(ctxRpc, param);
  }

  static $async.Future<UnPinChannelResponse> unPinChannel(
      UnPinChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.unPinChannel(ctxRpc, param);
  }

  static $async.Future<BlockChannelResponse> blockChannel(
      BlockChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.blockChannel(ctxRpc, param);
  }

  static $async.Future<UnBlockChannelResponse> unBlockChannel(
      UnBlockChannelParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_SocialApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.unBlockChannel(ctxRpc, param);
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

class Auth22 {
  static $async.Future<SendConfirmCodeResponse> sendConfirmCode(
      SendConfirmCodeParam param) async {
    var rpcClient = FlipHttpRpcClient();
    var serviceRpc = RPC_AuthApi(rpcClient);

    var ctxRpc = FlipRpcPbClientContext();

    return await serviceRpc.sendConfirmCode(ctxRpc, param);
  }
}
