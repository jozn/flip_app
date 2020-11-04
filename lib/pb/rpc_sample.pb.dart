///
//  Generated code. Do not modify.
//  source: rpc_sample.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetUsers1Param extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetUsers1Param',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetUsers1Param._() : super();
  factory GetUsers1Param() => create();
  factory GetUsers1Param.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetUsers1Param.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetUsers1Param clone() => GetUsers1Param()..mergeFromMessage(this);
  GetUsers1Param copyWith(void Function(GetUsers1Param) updates) =>
      super.copyWith((message) => updates(message as GetUsers1Param));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUsers1Param create() => GetUsers1Param._();
  GetUsers1Param createEmptyInstance() => create();
  static $pb.PbList<GetUsers1Param> createRepeated() =>
      $pb.PbList<GetUsers1Param>();
  @$core.pragma('dart2js:noInline')
  static GetUsers1Param getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUsers1Param>(create);
  static GetUsers1Param _defaultInstance;
}

class GetUsers1Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetUsers1Response',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetUsers1Response._() : super();
  factory GetUsers1Response() => create();
  factory GetUsers1Response.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetUsers1Response.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetUsers1Response clone() => GetUsers1Response()..mergeFromMessage(this);
  GetUsers1Response copyWith(void Function(GetUsers1Response) updates) =>
      super.copyWith((message) => updates(message as GetUsers1Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUsers1Response create() => GetUsers1Response._();
  GetUsers1Response createEmptyInstance() => create();
  static $pb.PbList<GetUsers1Response> createRepeated() =>
      $pb.PbList<GetUsers1Response>();
  @$core.pragma('dart2js:noInline')
  static GetUsers1Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUsers1Response>(create);
  static GetUsers1Response _defaultInstance;
}

class RPC_SampleApi {
  $pb.RpcClient _client;
  RPC_SampleApi(this._client);

  $async.Future<GetUsers1Response> getUsers1(
      $pb.ClientContext ctx, GetUsers1Param request) {
    var emptyResponse = GetUsers1Response();
    return _client.invoke<GetUsers1Response>(
        ctx, 'RPC_Sample', 'GetUsers1', request, emptyResponse);
  }
}
