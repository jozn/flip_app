///
//  Generated code. Do not modify.
//  source: rpc_direct.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'rpc_direct.pb.dart' as $3;
import 'rpc_direct.pbjson.dart';

export 'rpc_direct.pb.dart';

abstract class RPC_DirectServiceBase extends $pb.GeneratedService {
  $async.Future<$3.DirectDeleteDirectResponse> directDeleteDirect(
      $pb.ServerContext ctx, $3.DirectDeleteDirectParam request);
  $async.Future<$3.DirectChangeTitleResponse> directChangeTitle(
      $pb.ServerContext ctx, $3.DirectChangeTitleParam request);
  $async.Future<$3.DirectSetCustomNotificationResponse>
      directSetCustomNotification(
          $pb.ServerContext ctx, $3.DirectSetCustomNotificationParam request);
  $async.Future<$3.DirectSendActionDoingResponse> directSendActionDoing(
      $pb.ServerContext ctx, $3.DirectSendActionDoingParam request);
  $async.Future<$3.DirectSetDraftResponse> directSetDraft(
      $pb.ServerContext ctx, $3.DirectSetDraftParam request);
  $async.Future<$3.DirectDeleteDirectsResponse> directDeleteDirects(
      $pb.ServerContext ctx, $3.DirectDeleteDirectsParam request);
  $async.Future<$3.DirectMarkAsReadResponse> directMarkAsRead(
      $pb.ServerContext ctx, $3.DirectMarkAsReadParam request);
  $async.Future<$3.DirectMarkAsUnReadResponse> directMarkAsUnRead(
      $pb.ServerContext ctx, $3.DirectMarkAsUnReadParam request);
  $async.Future<$3.DirectPinDirectsResponse> directPinDirects(
      $pb.ServerContext ctx, $3.DirectPinDirectsParam request);
  $async.Future<$3.DirectUnPinDirectsResponse> directUnPinDirects(
      $pb.ServerContext ctx, $3.DirectUnPinDirectsParam request);
  $async.Future<$3.DirectArchiveDirectsResponse> directArchiveDirects(
      $pb.ServerContext ctx, $3.DirectArchiveDirectsParam request);
  $async.Future<$3.DirectUnArchiveDirectsResponse> directUnArchiveDirects(
      $pb.ServerContext ctx, $3.DirectUnArchiveDirectsParam request);
  $async.Future<$3.DirectClearHistoriesResponse> directClearHistories(
      $pb.ServerContext ctx, $3.DirectClearHistoriesParam request);
  $async.Future<$3.DirectMuteDirectsResponse> directMuteDirects(
      $pb.ServerContext ctx, $3.DirectMuteDirectsParam request);
  $async.Future<$3.DirectUnMuteDirectsResponse> directUnMuteDirects(
      $pb.ServerContext ctx, $3.DirectUnMuteDirectsParam request);
  $async.Future<$3.DirectCreateFolderResponse> directCreateFolder(
      $pb.ServerContext ctx, $3.DirectCreateFolderParam request);
  $async.Future<$3.DirectChangeFolderResponse> directChangeFolder(
      $pb.ServerContext ctx, $3.DirectChangeFolderParam request);
  $async.Future<$3.DirectRemoveFromFolderResponse> directRemoveFromFolder(
      $pb.ServerContext ctx, $3.DirectRemoveFromFolderParam request);
  $async.Future<$3.DirectReordersFolderResponse> directReordersFolder(
      $pb.ServerContext ctx, $3.DirectReordersFolderParam request);
  $async.Future<$3.DirectDeleteFolderResponse> directDeleteFolder(
      $pb.ServerContext ctx, $3.DirectDeleteFolderParam request);
  $async.Future<$3.DirectGetChatsListResponse> directGetChatsList(
      $pb.ServerContext ctx, $3.DirectGetChatsListParam request);
  $async.Future<$3.DirectGetGroupsListResponse> directGetGroupsList(
      $pb.ServerContext ctx, $3.DirectGetGroupsListParam request);
  $async.Future<$3.DirectGetChannelsListResponse> directGetChannelsList(
      $pb.ServerContext ctx, $3.DirectGetChannelsListParam request);
  $async.Future<$3.DirectGetFoldersListResponse> directGetFoldersList(
      $pb.ServerContext ctx, $3.DirectGetFoldersListParam request);
  $async.Future<$3.DirectGetFoldersFullListResponse> directGetFoldersFullList(
      $pb.ServerContext ctx, $3.DirectGetFoldersFullListParam request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'DirectDeleteDirect':
        return $3.DirectDeleteDirectParam();
      case 'DirectChangeTitle':
        return $3.DirectChangeTitleParam();
      case 'DirectSetCustomNotification':
        return $3.DirectSetCustomNotificationParam();
      case 'DirectSendActionDoing':
        return $3.DirectSendActionDoingParam();
      case 'DirectSetDraft':
        return $3.DirectSetDraftParam();
      case 'DirectDeleteDirects':
        return $3.DirectDeleteDirectsParam();
      case 'DirectMarkAsRead':
        return $3.DirectMarkAsReadParam();
      case 'DirectMarkAsUnRead':
        return $3.DirectMarkAsUnReadParam();
      case 'DirectPinDirects':
        return $3.DirectPinDirectsParam();
      case 'DirectUnPinDirects':
        return $3.DirectUnPinDirectsParam();
      case 'DirectArchiveDirects':
        return $3.DirectArchiveDirectsParam();
      case 'DirectUnArchiveDirects':
        return $3.DirectUnArchiveDirectsParam();
      case 'DirectClearHistories':
        return $3.DirectClearHistoriesParam();
      case 'DirectMuteDirects':
        return $3.DirectMuteDirectsParam();
      case 'DirectUnMuteDirects':
        return $3.DirectUnMuteDirectsParam();
      case 'DirectCreateFolder':
        return $3.DirectCreateFolderParam();
      case 'DirectChangeFolder':
        return $3.DirectChangeFolderParam();
      case 'DirectRemoveFromFolder':
        return $3.DirectRemoveFromFolderParam();
      case 'DirectReordersFolder':
        return $3.DirectReordersFolderParam();
      case 'DirectDeleteFolder':
        return $3.DirectDeleteFolderParam();
      case 'DirectGetChatsList':
        return $3.DirectGetChatsListParam();
      case 'DirectGetGroupsList':
        return $3.DirectGetGroupsListParam();
      case 'DirectGetChannelsList':
        return $3.DirectGetChannelsListParam();
      case 'DirectGetFoldersList':
        return $3.DirectGetFoldersListParam();
      case 'DirectGetFoldersFullList':
        return $3.DirectGetFoldersFullListParam();
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'DirectDeleteDirect':
        return this.directDeleteDirect(ctx, request);
      case 'DirectChangeTitle':
        return this.directChangeTitle(ctx, request);
      case 'DirectSetCustomNotification':
        return this.directSetCustomNotification(ctx, request);
      case 'DirectSendActionDoing':
        return this.directSendActionDoing(ctx, request);
      case 'DirectSetDraft':
        return this.directSetDraft(ctx, request);
      case 'DirectDeleteDirects':
        return this.directDeleteDirects(ctx, request);
      case 'DirectMarkAsRead':
        return this.directMarkAsRead(ctx, request);
      case 'DirectMarkAsUnRead':
        return this.directMarkAsUnRead(ctx, request);
      case 'DirectPinDirects':
        return this.directPinDirects(ctx, request);
      case 'DirectUnPinDirects':
        return this.directUnPinDirects(ctx, request);
      case 'DirectArchiveDirects':
        return this.directArchiveDirects(ctx, request);
      case 'DirectUnArchiveDirects':
        return this.directUnArchiveDirects(ctx, request);
      case 'DirectClearHistories':
        return this.directClearHistories(ctx, request);
      case 'DirectMuteDirects':
        return this.directMuteDirects(ctx, request);
      case 'DirectUnMuteDirects':
        return this.directUnMuteDirects(ctx, request);
      case 'DirectCreateFolder':
        return this.directCreateFolder(ctx, request);
      case 'DirectChangeFolder':
        return this.directChangeFolder(ctx, request);
      case 'DirectRemoveFromFolder':
        return this.directRemoveFromFolder(ctx, request);
      case 'DirectReordersFolder':
        return this.directReordersFolder(ctx, request);
      case 'DirectDeleteFolder':
        return this.directDeleteFolder(ctx, request);
      case 'DirectGetChatsList':
        return this.directGetChatsList(ctx, request);
      case 'DirectGetGroupsList':
        return this.directGetGroupsList(ctx, request);
      case 'DirectGetChannelsList':
        return this.directGetChannelsList(ctx, request);
      case 'DirectGetFoldersList':
        return this.directGetFoldersList(ctx, request);
      case 'DirectGetFoldersFullList':
        return this.directGetFoldersFullList(ctx, request);
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json =>
      RPC_DirectServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => RPC_DirectServiceBase$messageJson;
}
