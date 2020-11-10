///
//  Generated code. Do not modify.
//  source: rpc_sample.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'rpc_sample.pb.dart' as $6;
import 'rpc_sample.pbjson.dart';

export 'rpc_sample.pb.dart';

abstract class RPC_SampleServiceBase extends $pb.GeneratedService {
  $async.Future<$6.GetUsers1Response> getUsers1(
      $pb.ServerContext ctx, $6.GetUsers1Param request);
  $async.Future<$6.GetProfilesResponse> getProfiles(
      $pb.ServerContext ctx, $6.GetProfilesParam request);
  $async.Future<$6.GetChannelsResponse> getChannels(
      $pb.ServerContext ctx, $6.GetChannelsParam request);
  $async.Future<$6.GetDirectsResponse> getDirects(
      $pb.ServerContext ctx, $6.GetDirectsParam request);
  $async.Future<$6.GetMessagesResponse> getMessages(
      $pb.ServerContext ctx, $6.GetMessagesParam request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GetUsers1':
        return $6.GetUsers1Param();
      case 'GetProfiles':
        return $6.GetProfilesParam();
      case 'GetChannels':
        return $6.GetChannelsParam();
      case 'GetDirects':
        return $6.GetDirectsParam();
      case 'GetMessages':
        return $6.GetMessagesParam();
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GetUsers1':
        return this.getUsers1(ctx, request);
      case 'GetProfiles':
        return this.getProfiles(ctx, request);
      case 'GetChannels':
        return this.getChannels(ctx, request);
      case 'GetDirects':
        return this.getDirects(ctx, request);
      case 'GetMessages':
        return this.getMessages(ctx, request);
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json =>
      RPC_SampleServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => RPC_SampleServiceBase$messageJson;
}
