///
//  Generated code. Do not modify.
//  source: rpc_sample.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'rpc_sample.pb.dart' as $5;
import 'rpc_sample.pbjson.dart';

export 'rpc_sample.pb.dart';

abstract class RPC_SampleServiceBase extends $pb.GeneratedService {
  $async.Future<$5.GetUsers1Response> getUsers1(
      $pb.ServerContext ctx, $5.GetUsers1Param request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GetUsers1':
        return $5.GetUsers1Param();
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GetUsers1':
        return this.getUsers1(ctx, request);
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json =>
      RPC_SampleServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => RPC_SampleServiceBase$messageJson;
}
