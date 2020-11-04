///
//  Generated code. Do not modify.
//  source: rpc_channel.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'rpc_channel.pb.dart' as $1;
import 'rpc_channel.pbjson.dart';

export 'rpc_channel.pb.dart';

abstract class RPC_ChannelServiceBase extends $pb.GeneratedService {
  $async.Future<$1.ChannelCreateChannelResponse> channelCreateChannel(
      $pb.ServerContext ctx, $1.ChannelCreateChannelParam request);
  $async.Future<$1.ChannelEditChannelResponse> channelEditChannel(
      $pb.ServerContext ctx, $1.ChannelEditChannelParam request);
  $async.Future<$1.ChannelDeleteChannelResponse> channelDeleteChannel(
      $pb.ServerContext ctx, $1.ChannelDeleteChannelParam request);
  $async.Future<$1.ChannelAddAuthorResponse> channelAddAuthor(
      $pb.ServerContext ctx, $1.ChannelAddAuthorParam request);
  $async.Future<$1.ChannelChangeAuthorPermissionResponse>
      channelChangeAuthorPermission(
          $pb.ServerContext ctx, $1.ChannelChangeAuthorPermissionParam request);
  $async.Future<$1.ChannelRemoveAuthorResponse> channelRemoveAuthor(
      $pb.ServerContext ctx, $1.ChannelRemoveAuthorParam request);
  $async.Future<$1.ChannelFollowChannelResponse> channelFollowChannel(
      $pb.ServerContext ctx, $1.ChannelFollowChannelParam request);
  $async.Future<$1.ChannelUnFollowChannelResponse> channelUnFollowChannel(
      $pb.ServerContext ctx, $1.ChannelUnFollowChannelParam request);
  $async.Future<$1.ChannelRemoveFollowersResponse> channelRemoveFollowers(
      $pb.ServerContext ctx, $1.ChannelRemoveFollowersParam request);
  $async.Future<$1.ChannelSubscribeResponse> channelSubscribe(
      $pb.ServerContext ctx, $1.ChannelSubscribeParam request);
  $async.Future<$1.ChannelUnSubscribeResponse> channelUnSubscribe(
      $pb.ServerContext ctx, $1.ChannelUnSubscribeParam request);
  $async.Future<$1.ChannelRemoveSubscribersResponse> channelRemoveSubscribers(
      $pb.ServerContext ctx, $1.ChannelRemoveSubscribersParam request);
  $async.Future<$1.ChannelChangePrivacyResponse> channelChangePrivacy(
      $pb.ServerContext ctx, $1.ChannelChangePrivacyParam request);
  $async.Future<$1.ChannelChangeDefaultPermissionResponse>
      channelChangeDefaultPermission($pb.ServerContext ctx,
          $1.ChannelChangeDefaultPermissionParam request);
  $async.Future<$1.ChannelRevokeLinkResponse> channelRevokeLink(
      $pb.ServerContext ctx, $1.ChannelRevokeLinkParam request);
  $async.Future<$1.ChannelChangeUsernameResponse> channelChangeUsername(
      $pb.ServerContext ctx, $1.ChannelChangeUsernameParam request);
  $async.Future<$1.ChannelBlockChannelResponse> channelBlockChannel(
      $pb.ServerContext ctx, $1.ChannelBlockChannelParam request);
  $async.Future<$1.ChannelSendMessageResponse> channelSendMessage(
      $pb.ServerContext ctx, $1.ChannelSendMessageParam request);
  $async.Future<$1.ChannelEditMessageResponse> channelEditMessage(
      $pb.ServerContext ctx, $1.ChannelEditMessageParam request);
  $async.Future<$1.ChannelPinMessageResponse> channelPinMessage(
      $pb.ServerContext ctx, $1.ChannelPinMessageParam request);
  $async.Future<$1.ChannelUnPinMessageResponse> channelUnPinMessage(
      $pb.ServerContext ctx, $1.ChannelUnPinMessageParam request);
  $async.Future<$1.ChannelDeleteMessageResponse> channelDeleteMessage(
      $pb.ServerContext ctx, $1.ChannelDeleteMessageParam request);
  $async.Future<$1.ChannelDeleteMessagesResponse> channelDeleteMessages(
      $pb.ServerContext ctx, $1.ChannelDeleteMessagesParam request);
  $async.Future<$1.ChannelClearHistoryResponse> channelClearHistory(
      $pb.ServerContext ctx, $1.ChannelClearHistoryParam request);
  $async.Future<$1.ChannelAvatarAddResponse> channelAvatarAdd(
      $pb.ServerContext ctx, $1.ChannelAvatarAddParam request);
  $async.Future<$1.ChannelAvatarChangeResponse> channelAvatarChange(
      $pb.ServerContext ctx, $1.ChannelAvatarChangeParam request);
  $async.Future<$1.ChannelAvatarDeleteResponse> channelAvatarDelete(
      $pb.ServerContext ctx, $1.ChannelAvatarDeleteParam request);
  $async.Future<$1.ChannelAvatarGetListResponse> channelAvatarGetList(
      $pb.ServerContext ctx, $1.ChannelAvatarGetListParam request);
  $async.Future<$1.ChannelSendDoingActionResponse> channelSendDoingAction(
      $pb.ServerContext ctx, $1.ChannelSendDoingActionParam request);
  $async.Future<$1.ChannelReportChannelResponse> channelReportChannel(
      $pb.ServerContext ctx, $1.ChannelReportChannelParam request);
  $async.Future<$1.ChannelReportMessageResponse> channelReportMessage(
      $pb.ServerContext ctx, $1.ChannelReportMessageParam request);
  $async.Future<$1.ChannelGetFullResponse> channelGetFull(
      $pb.ServerContext ctx, $1.ChannelGetFullParam request);
  $async.Future<$1.ChannelGetMessagesListResponse> channelGetMessagesList(
      $pb.ServerContext ctx, $1.ChannelGetMessagesListParam request);
  $async.Future<$1.ChannelGetMediaListResponse> channelGetMediaList(
      $pb.ServerContext ctx, $1.ChannelGetMediaListParam request);
  $async.Future<$1.ChannelGetAuthorsResponse> channelGetAuthors(
      $pb.ServerContext ctx, $1.ChannelGetAuthorsParam request);
  $async.Future<$1.ChannelGetFollowersResponse> channelGetFollowers(
      $pb.ServerContext ctx, $1.ChannelGetFollowersParam request);
  $async.Future<$1.ChannelGetFollowingsResponse> channelGetFollowings(
      $pb.ServerContext ctx, $1.ChannelGetFollowingsParam request);
  $async.Future<$1.ChannelGetSubscribersResponse> channelGetSubscribers(
      $pb.ServerContext ctx, $1.ChannelGetSubscribersParam request);
  $async.Future<$1.ChannelBlockedResponse> channelBlocked(
      $pb.ServerContext ctx, $1.ChannelBlockedParam request);
  $async.Future<$1.ChannelSetDraftResponse> channelSetDraft(
      $pb.ServerContext ctx, $1.ChannelSetDraftParam request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'ChannelCreateChannel':
        return $1.ChannelCreateChannelParam();
      case 'ChannelEditChannel':
        return $1.ChannelEditChannelParam();
      case 'ChannelDeleteChannel':
        return $1.ChannelDeleteChannelParam();
      case 'ChannelAddAuthor':
        return $1.ChannelAddAuthorParam();
      case 'ChannelChangeAuthorPermission':
        return $1.ChannelChangeAuthorPermissionParam();
      case 'ChannelRemoveAuthor':
        return $1.ChannelRemoveAuthorParam();
      case 'ChannelFollowChannel':
        return $1.ChannelFollowChannelParam();
      case 'ChannelUnFollowChannel':
        return $1.ChannelUnFollowChannelParam();
      case 'ChannelRemoveFollowers':
        return $1.ChannelRemoveFollowersParam();
      case 'ChannelSubscribe':
        return $1.ChannelSubscribeParam();
      case 'ChannelUnSubscribe':
        return $1.ChannelUnSubscribeParam();
      case 'ChannelRemoveSubscribers':
        return $1.ChannelRemoveSubscribersParam();
      case 'ChannelChangePrivacy':
        return $1.ChannelChangePrivacyParam();
      case 'ChannelChangeDefaultPermission':
        return $1.ChannelChangeDefaultPermissionParam();
      case 'ChannelRevokeLink':
        return $1.ChannelRevokeLinkParam();
      case 'ChannelChangeUsername':
        return $1.ChannelChangeUsernameParam();
      case 'ChannelBlockChannel':
        return $1.ChannelBlockChannelParam();
      case 'ChannelSendMessage':
        return $1.ChannelSendMessageParam();
      case 'ChannelEditMessage':
        return $1.ChannelEditMessageParam();
      case 'ChannelPinMessage':
        return $1.ChannelPinMessageParam();
      case 'ChannelUnPinMessage':
        return $1.ChannelUnPinMessageParam();
      case 'ChannelDeleteMessage':
        return $1.ChannelDeleteMessageParam();
      case 'ChannelDeleteMessages':
        return $1.ChannelDeleteMessagesParam();
      case 'ChannelClearHistory':
        return $1.ChannelClearHistoryParam();
      case 'ChannelAvatarAdd':
        return $1.ChannelAvatarAddParam();
      case 'ChannelAvatarChange':
        return $1.ChannelAvatarChangeParam();
      case 'ChannelAvatarDelete':
        return $1.ChannelAvatarDeleteParam();
      case 'ChannelAvatarGetList':
        return $1.ChannelAvatarGetListParam();
      case 'ChannelSendDoingAction':
        return $1.ChannelSendDoingActionParam();
      case 'ChannelReportChannel':
        return $1.ChannelReportChannelParam();
      case 'ChannelReportMessage':
        return $1.ChannelReportMessageParam();
      case 'ChannelGetFull':
        return $1.ChannelGetFullParam();
      case 'ChannelGetMessagesList':
        return $1.ChannelGetMessagesListParam();
      case 'ChannelGetMediaList':
        return $1.ChannelGetMediaListParam();
      case 'ChannelGetAuthors':
        return $1.ChannelGetAuthorsParam();
      case 'ChannelGetFollowers':
        return $1.ChannelGetFollowersParam();
      case 'ChannelGetFollowings':
        return $1.ChannelGetFollowingsParam();
      case 'ChannelGetSubscribers':
        return $1.ChannelGetSubscribersParam();
      case 'ChannelBlocked':
        return $1.ChannelBlockedParam();
      case 'ChannelSetDraft':
        return $1.ChannelSetDraftParam();
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'ChannelCreateChannel':
        return this.channelCreateChannel(ctx, request);
      case 'ChannelEditChannel':
        return this.channelEditChannel(ctx, request);
      case 'ChannelDeleteChannel':
        return this.channelDeleteChannel(ctx, request);
      case 'ChannelAddAuthor':
        return this.channelAddAuthor(ctx, request);
      case 'ChannelChangeAuthorPermission':
        return this.channelChangeAuthorPermission(ctx, request);
      case 'ChannelRemoveAuthor':
        return this.channelRemoveAuthor(ctx, request);
      case 'ChannelFollowChannel':
        return this.channelFollowChannel(ctx, request);
      case 'ChannelUnFollowChannel':
        return this.channelUnFollowChannel(ctx, request);
      case 'ChannelRemoveFollowers':
        return this.channelRemoveFollowers(ctx, request);
      case 'ChannelSubscribe':
        return this.channelSubscribe(ctx, request);
      case 'ChannelUnSubscribe':
        return this.channelUnSubscribe(ctx, request);
      case 'ChannelRemoveSubscribers':
        return this.channelRemoveSubscribers(ctx, request);
      case 'ChannelChangePrivacy':
        return this.channelChangePrivacy(ctx, request);
      case 'ChannelChangeDefaultPermission':
        return this.channelChangeDefaultPermission(ctx, request);
      case 'ChannelRevokeLink':
        return this.channelRevokeLink(ctx, request);
      case 'ChannelChangeUsername':
        return this.channelChangeUsername(ctx, request);
      case 'ChannelBlockChannel':
        return this.channelBlockChannel(ctx, request);
      case 'ChannelSendMessage':
        return this.channelSendMessage(ctx, request);
      case 'ChannelEditMessage':
        return this.channelEditMessage(ctx, request);
      case 'ChannelPinMessage':
        return this.channelPinMessage(ctx, request);
      case 'ChannelUnPinMessage':
        return this.channelUnPinMessage(ctx, request);
      case 'ChannelDeleteMessage':
        return this.channelDeleteMessage(ctx, request);
      case 'ChannelDeleteMessages':
        return this.channelDeleteMessages(ctx, request);
      case 'ChannelClearHistory':
        return this.channelClearHistory(ctx, request);
      case 'ChannelAvatarAdd':
        return this.channelAvatarAdd(ctx, request);
      case 'ChannelAvatarChange':
        return this.channelAvatarChange(ctx, request);
      case 'ChannelAvatarDelete':
        return this.channelAvatarDelete(ctx, request);
      case 'ChannelAvatarGetList':
        return this.channelAvatarGetList(ctx, request);
      case 'ChannelSendDoingAction':
        return this.channelSendDoingAction(ctx, request);
      case 'ChannelReportChannel':
        return this.channelReportChannel(ctx, request);
      case 'ChannelReportMessage':
        return this.channelReportMessage(ctx, request);
      case 'ChannelGetFull':
        return this.channelGetFull(ctx, request);
      case 'ChannelGetMessagesList':
        return this.channelGetMessagesList(ctx, request);
      case 'ChannelGetMediaList':
        return this.channelGetMediaList(ctx, request);
      case 'ChannelGetAuthors':
        return this.channelGetAuthors(ctx, request);
      case 'ChannelGetFollowers':
        return this.channelGetFollowers(ctx, request);
      case 'ChannelGetFollowings':
        return this.channelGetFollowings(ctx, request);
      case 'ChannelGetSubscribers':
        return this.channelGetSubscribers(ctx, request);
      case 'ChannelBlocked':
        return this.channelBlocked(ctx, request);
      case 'ChannelSetDraft':
        return this.channelSetDraft(ctx, request);
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json =>
      RPC_ChannelServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => RPC_ChannelServiceBase$messageJson;
}
