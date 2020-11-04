///
//  Generated code. Do not modify.
//  source: rpc_group.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'rpc_group.pb.dart' as $4;
import 'rpc_group.pbjson.dart';

export 'rpc_group.pb.dart';

abstract class RPC_GroupServiceBase extends $pb.GeneratedService {
  $async.Future<$4.GroupCreateGroupResponse> groupCreateGroup(
      $pb.ServerContext ctx, $4.GroupCreateGroupParam request);
  $async.Future<$4.GroupEditGroupResponse> groupEditGroup(
      $pb.ServerContext ctx, $4.GroupEditGroupParam request);
  $async.Future<$4.GroupDeleteGroupResponse> groupDeleteGroup(
      $pb.ServerContext ctx, $4.GroupDeleteGroupParam request);
  $async.Future<$4.GroupAddAdminResponse> groupAddAdmin(
      $pb.ServerContext ctx, $4.GroupAddAdminParam request);
  $async.Future<$4.GroupAddMemberResponse> groupAddMember(
      $pb.ServerContext ctx, $4.GroupAddMemberParam request);
  $async.Future<$4.GroupRemoveMemberResponse> groupRemoveMember(
      $pb.ServerContext ctx, $4.GroupRemoveMemberParam request);
  $async.Future<$4.GroupChangeMemberLevelResponse> groupChangeMemberLevel(
      $pb.ServerContext ctx, $4.GroupChangeMemberLevelParam request);
  $async.Future<$4.GroupChangeMemberPermissionResponse>
      groupChangeMemberPermission(
          $pb.ServerContext ctx, $4.GroupChangeMemberPermissionParam request);
  $async.Future<$4.JoinGroupResponse> groupJoinGroup(
      $pb.ServerContext ctx, $4.JoinGroupParam request);
  $async.Future<$4.GroupLeaveGroupResponse> groupLeaveGroup(
      $pb.ServerContext ctx, $4.GroupLeaveGroupParam request);
  $async.Future<$4.GroupBanMemberResponse> groupBanMember(
      $pb.ServerContext ctx, $4.GroupBanMemberParam request);
  $async.Future<$4.GroupChangePrivacyResponse> groupChangePrivacy(
      $pb.ServerContext ctx, $4.GroupChangePrivacyParam request);
  $async.Future<$4.GroupChangeDefaultPermissionResponse>
      groupChangeDefaultPermission(
          $pb.ServerContext ctx, $4.GroupChangeDefaultPermissionParam request);
  $async.Future<$4.GroupRevokeLinkResponse> groupRevokeLink(
      $pb.ServerContext ctx, $4.GroupRevokeLinkParam request);
  $async.Future<$4.GroupChangeUsernameResponse> groupChangeUsername(
      $pb.ServerContext ctx, $4.GroupChangeUsernameParam request);
  $async.Future<$4.GroupSendMessageResponse> groupSendMessage(
      $pb.ServerContext ctx, $4.GroupSendMessageParam request);
  $async.Future<$4.GroupEditMessageResponse> groupEditMessage(
      $pb.ServerContext ctx, $4.GroupEditMessageParam request);
  $async.Future<$4.GroupPinMessageResponse> groupPinMessage(
      $pb.ServerContext ctx, $4.GroupPinMessageParam request);
  $async.Future<$4.GroupUnPinMessageResponse> groupUnPinMessage(
      $pb.ServerContext ctx, $4.GroupUnPinMessageParam request);
  $async.Future<$4.GroupDeleteMessageResponse> groupDeleteMessage(
      $pb.ServerContext ctx, $4.GroupDeleteMessageParam request);
  $async.Future<$4.GroupDeleteMessagesResponse> groupDeleteMessages(
      $pb.ServerContext ctx, $4.GroupDeleteMessagesParam request);
  $async.Future<$4.GroupDeleteHistoryResponse> groupDeleteHistory(
      $pb.ServerContext ctx, $4.GroupDeleteHistoryParam request);
  $async.Future<$4.GroupClearHistoryResponse> groupClearHistory(
      $pb.ServerContext ctx, $4.GroupClearHistoryParam request);
  $async.Future<$4.GroupAvatarAddResponse> groupAvatarAdd(
      $pb.ServerContext ctx, $4.GroupAvatarAddParam request);
  $async.Future<$4.GroupAvatarChangeResponse> groupAvatarChange(
      $pb.ServerContext ctx, $4.GroupAvatarChangeParam request);
  $async.Future<$4.GroupAvatarDeleteResponse> groupAvatarDelete(
      $pb.ServerContext ctx, $4.GroupAvatarDeleteParam request);
  $async.Future<$4.GroupAvatarGetListResponse> groupAvatarGetList(
      $pb.ServerContext ctx, $4.GroupAvatarGetListParam request);
  $async.Future<$4.GroupSendDoingActionResponse> groupSendDoingAction(
      $pb.ServerContext ctx, $4.GroupSendDoingActionParam request);
  $async.Future<$4.GroupReportGroupResponse> groupReportGroup(
      $pb.ServerContext ctx, $4.GroupReportGroupParam request);
  $async.Future<$4.GroupGetFullMessageResponse> groupGetFull(
      $pb.ServerContext ctx, $4.GroupGetFullMessageParam request);
  $async.Future<$4.GroupGetMessagesListResponse> groupGetMessagesList(
      $pb.ServerContext ctx, $4.GroupGetMessagesListParam request);
  $async.Future<$4.GroupGetMediaListResponse> groupGetMediaList(
      $pb.ServerContext ctx, $4.GroupGetMediaListParam request);
  $async.Future<$4.GroupGetMembersListResponse> groupGetMembersList(
      $pb.ServerContext ctx, $4.GroupGetMembersListParam request);
  $async.Future<$4.GroupGetAdminsListResponse> groupGetAdminsList(
      $pb.ServerContext ctx, $4.GroupGetAdminsListParam request);
  $async.Future<$4.GroupSetDraftResponse> groupSetDraft(
      $pb.ServerContext ctx, $4.GroupSetDraftParam request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GroupCreateGroup':
        return $4.GroupCreateGroupParam();
      case 'GroupEditGroup':
        return $4.GroupEditGroupParam();
      case 'GroupDeleteGroup':
        return $4.GroupDeleteGroupParam();
      case 'GroupAddAdmin':
        return $4.GroupAddAdminParam();
      case 'GroupAddMember':
        return $4.GroupAddMemberParam();
      case 'GroupRemoveMember':
        return $4.GroupRemoveMemberParam();
      case 'GroupChangeMemberLevel':
        return $4.GroupChangeMemberLevelParam();
      case 'GroupChangeMemberPermission':
        return $4.GroupChangeMemberPermissionParam();
      case 'GroupJoinGroup':
        return $4.JoinGroupParam();
      case 'GroupLeaveGroup':
        return $4.GroupLeaveGroupParam();
      case 'GroupBanMember':
        return $4.GroupBanMemberParam();
      case 'GroupChangePrivacy':
        return $4.GroupChangePrivacyParam();
      case 'GroupChangeDefaultPermission':
        return $4.GroupChangeDefaultPermissionParam();
      case 'GroupRevokeLink':
        return $4.GroupRevokeLinkParam();
      case 'GroupChangeUsername':
        return $4.GroupChangeUsernameParam();
      case 'GroupSendMessage':
        return $4.GroupSendMessageParam();
      case 'GroupEditMessage':
        return $4.GroupEditMessageParam();
      case 'GroupPinMessage':
        return $4.GroupPinMessageParam();
      case 'GroupUnPinMessage':
        return $4.GroupUnPinMessageParam();
      case 'GroupDeleteMessage':
        return $4.GroupDeleteMessageParam();
      case 'GroupDeleteMessages':
        return $4.GroupDeleteMessagesParam();
      case 'GroupDeleteHistory':
        return $4.GroupDeleteHistoryParam();
      case 'GroupClearHistory':
        return $4.GroupClearHistoryParam();
      case 'GroupAvatarAdd':
        return $4.GroupAvatarAddParam();
      case 'GroupAvatarChange':
        return $4.GroupAvatarChangeParam();
      case 'GroupAvatarDelete':
        return $4.GroupAvatarDeleteParam();
      case 'GroupAvatarGetList':
        return $4.GroupAvatarGetListParam();
      case 'GroupSendDoingAction':
        return $4.GroupSendDoingActionParam();
      case 'GroupReportGroup':
        return $4.GroupReportGroupParam();
      case 'GroupGetFull':
        return $4.GroupGetFullMessageParam();
      case 'GroupGetMessagesList':
        return $4.GroupGetMessagesListParam();
      case 'GroupGetMediaList':
        return $4.GroupGetMediaListParam();
      case 'GroupGetMembersList':
        return $4.GroupGetMembersListParam();
      case 'GroupGetAdminsList':
        return $4.GroupGetAdminsListParam();
      case 'GroupSetDraft':
        return $4.GroupSetDraftParam();
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GroupCreateGroup':
        return this.groupCreateGroup(ctx, request);
      case 'GroupEditGroup':
        return this.groupEditGroup(ctx, request);
      case 'GroupDeleteGroup':
        return this.groupDeleteGroup(ctx, request);
      case 'GroupAddAdmin':
        return this.groupAddAdmin(ctx, request);
      case 'GroupAddMember':
        return this.groupAddMember(ctx, request);
      case 'GroupRemoveMember':
        return this.groupRemoveMember(ctx, request);
      case 'GroupChangeMemberLevel':
        return this.groupChangeMemberLevel(ctx, request);
      case 'GroupChangeMemberPermission':
        return this.groupChangeMemberPermission(ctx, request);
      case 'GroupJoinGroup':
        return this.groupJoinGroup(ctx, request);
      case 'GroupLeaveGroup':
        return this.groupLeaveGroup(ctx, request);
      case 'GroupBanMember':
        return this.groupBanMember(ctx, request);
      case 'GroupChangePrivacy':
        return this.groupChangePrivacy(ctx, request);
      case 'GroupChangeDefaultPermission':
        return this.groupChangeDefaultPermission(ctx, request);
      case 'GroupRevokeLink':
        return this.groupRevokeLink(ctx, request);
      case 'GroupChangeUsername':
        return this.groupChangeUsername(ctx, request);
      case 'GroupSendMessage':
        return this.groupSendMessage(ctx, request);
      case 'GroupEditMessage':
        return this.groupEditMessage(ctx, request);
      case 'GroupPinMessage':
        return this.groupPinMessage(ctx, request);
      case 'GroupUnPinMessage':
        return this.groupUnPinMessage(ctx, request);
      case 'GroupDeleteMessage':
        return this.groupDeleteMessage(ctx, request);
      case 'GroupDeleteMessages':
        return this.groupDeleteMessages(ctx, request);
      case 'GroupDeleteHistory':
        return this.groupDeleteHistory(ctx, request);
      case 'GroupClearHistory':
        return this.groupClearHistory(ctx, request);
      case 'GroupAvatarAdd':
        return this.groupAvatarAdd(ctx, request);
      case 'GroupAvatarChange':
        return this.groupAvatarChange(ctx, request);
      case 'GroupAvatarDelete':
        return this.groupAvatarDelete(ctx, request);
      case 'GroupAvatarGetList':
        return this.groupAvatarGetList(ctx, request);
      case 'GroupSendDoingAction':
        return this.groupSendDoingAction(ctx, request);
      case 'GroupReportGroup':
        return this.groupReportGroup(ctx, request);
      case 'GroupGetFull':
        return this.groupGetFull(ctx, request);
      case 'GroupGetMessagesList':
        return this.groupGetMessagesList(ctx, request);
      case 'GroupGetMediaList':
        return this.groupGetMediaList(ctx, request);
      case 'GroupGetMembersList':
        return this.groupGetMembersList(ctx, request);
      case 'GroupGetAdminsList':
        return this.groupGetAdminsList(ctx, request);
      case 'GroupSetDraft':
        return this.groupSetDraft(ctx, request);
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => RPC_GroupServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => RPC_GroupServiceBase$messageJson;
}
