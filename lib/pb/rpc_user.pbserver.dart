///
//  Generated code. Do not modify.
//  source: rpc_user.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'rpc_user.pb.dart' as $9;
import 'rpc_user.pbjson.dart';

export 'rpc_user.pb.dart';

abstract class RPC_UserServiceBase extends $pb.GeneratedService {
  $async.Future<$9.ChangePhoneNumberResponse> changePhoneNumber(
      $pb.ServerContext ctx, $9.ChangePhoneNumberParam request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'ChangePhoneNumber':
        return $9.ChangePhoneNumberParam();
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'ChangePhoneNumber':
        return this.changePhoneNumber(ctx, request);
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => RPC_UserServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => RPC_UserServiceBase$messageJson;
}
