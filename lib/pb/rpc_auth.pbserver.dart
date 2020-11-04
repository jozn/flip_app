///
//  Generated code. Do not modify.
//  source: rpc_auth.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'rpc_auth.pb.dart' as $0;
import 'rpc_auth.pbjson.dart';

export 'rpc_auth.pb.dart';

abstract class RPC_AuthServiceBase extends $pb.GeneratedService {
  $async.Future<$0.SendConfirmCodeResponse> sendConfirmCode(
      $pb.ServerContext ctx, $0.SendConfirmCodeParam request);
  $async.Future<$0.ConfirmCodeResponse> confirmCode(
      $pb.ServerContext ctx, $0.ConfirmCodeParam request);
  $async.Future<$0.SingUpResponse> singUp(
      $pb.ServerContext ctx, $0.SingUpParam request);
  $async.Future<$0.SingInResponse> singIn(
      $pb.ServerContext ctx, $0.SingInParam request);
  $async.Future<$0.LogOutResponse> logOut(
      $pb.ServerContext ctx, $0.LogOutParam request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'SendConfirmCode':
        return $0.SendConfirmCodeParam();
      case 'ConfirmCode':
        return $0.ConfirmCodeParam();
      case 'SingUp':
        return $0.SingUpParam();
      case 'SingIn':
        return $0.SingInParam();
      case 'LogOut':
        return $0.LogOutParam();
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'SendConfirmCode':
        return this.sendConfirmCode(ctx, request);
      case 'ConfirmCode':
        return this.confirmCode(ctx, request);
      case 'SingUp':
        return this.singUp(ctx, request);
      case 'SingIn':
        return this.singIn(ctx, request);
      case 'LogOut':
        return this.logOut(ctx, request);
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => RPC_AuthServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => RPC_AuthServiceBase$messageJson;
}
