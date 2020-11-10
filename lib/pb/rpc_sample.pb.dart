///
//  Generated code. Do not modify.
//  source: rpc_sample.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'global.pb.dart' as $5;

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
    ..pc<$5.Profile>(1, 'users', $pb.PbFieldType.PM,
        subBuilder: $5.Profile.create)
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

  @$pb.TagNumber(1)
  $core.List<$5.Profile> get users => $_getList(0);
}

class GetProfilesParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetProfilesParam',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetProfilesParam._() : super();
  factory GetProfilesParam() => create();
  factory GetProfilesParam.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetProfilesParam.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetProfilesParam clone() => GetProfilesParam()..mergeFromMessage(this);
  GetProfilesParam copyWith(void Function(GetProfilesParam) updates) =>
      super.copyWith((message) => updates(message as GetProfilesParam));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetProfilesParam create() => GetProfilesParam._();
  GetProfilesParam createEmptyInstance() => create();
  static $pb.PbList<GetProfilesParam> createRepeated() =>
      $pb.PbList<GetProfilesParam>();
  @$core.pragma('dart2js:noInline')
  static GetProfilesParam getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetProfilesParam>(create);
  static GetProfilesParam _defaultInstance;
}

class GetProfilesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetProfilesResponse',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<$5.Profile>(1, 'profiles', $pb.PbFieldType.PM,
        subBuilder: $5.Profile.create)
    ..hasRequiredFields = false;

  GetProfilesResponse._() : super();
  factory GetProfilesResponse() => create();
  factory GetProfilesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetProfilesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetProfilesResponse clone() => GetProfilesResponse()..mergeFromMessage(this);
  GetProfilesResponse copyWith(void Function(GetProfilesResponse) updates) =>
      super.copyWith((message) => updates(message as GetProfilesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetProfilesResponse create() => GetProfilesResponse._();
  GetProfilesResponse createEmptyInstance() => create();
  static $pb.PbList<GetProfilesResponse> createRepeated() =>
      $pb.PbList<GetProfilesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetProfilesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetProfilesResponse>(create);
  static GetProfilesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Profile> get profiles => $_getList(0);
}

class GetChannelsParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetChannelsParam',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetChannelsParam._() : super();
  factory GetChannelsParam() => create();
  factory GetChannelsParam.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetChannelsParam.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetChannelsParam clone() => GetChannelsParam()..mergeFromMessage(this);
  GetChannelsParam copyWith(void Function(GetChannelsParam) updates) =>
      super.copyWith((message) => updates(message as GetChannelsParam));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetChannelsParam create() => GetChannelsParam._();
  GetChannelsParam createEmptyInstance() => create();
  static $pb.PbList<GetChannelsParam> createRepeated() =>
      $pb.PbList<GetChannelsParam>();
  @$core.pragma('dart2js:noInline')
  static GetChannelsParam getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetChannelsParam>(create);
  static GetChannelsParam _defaultInstance;
}

class GetChannelsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetChannelsResponse',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<$5.Channel>(1, 'channels', $pb.PbFieldType.PM,
        subBuilder: $5.Channel.create)
    ..hasRequiredFields = false;

  GetChannelsResponse._() : super();
  factory GetChannelsResponse() => create();
  factory GetChannelsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetChannelsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetChannelsResponse clone() => GetChannelsResponse()..mergeFromMessage(this);
  GetChannelsResponse copyWith(void Function(GetChannelsResponse) updates) =>
      super.copyWith((message) => updates(message as GetChannelsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetChannelsResponse create() => GetChannelsResponse._();
  GetChannelsResponse createEmptyInstance() => create();
  static $pb.PbList<GetChannelsResponse> createRepeated() =>
      $pb.PbList<GetChannelsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetChannelsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetChannelsResponse>(create);
  static GetChannelsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Channel> get channels => $_getList(0);
}

class GetDirectsParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetDirectsParam',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetDirectsParam._() : super();
  factory GetDirectsParam() => create();
  factory GetDirectsParam.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetDirectsParam.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetDirectsParam clone() => GetDirectsParam()..mergeFromMessage(this);
  GetDirectsParam copyWith(void Function(GetDirectsParam) updates) =>
      super.copyWith((message) => updates(message as GetDirectsParam));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDirectsParam create() => GetDirectsParam._();
  GetDirectsParam createEmptyInstance() => create();
  static $pb.PbList<GetDirectsParam> createRepeated() =>
      $pb.PbList<GetDirectsParam>();
  @$core.pragma('dart2js:noInline')
  static GetDirectsParam getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetDirectsParam>(create);
  static GetDirectsParam _defaultInstance;
}

class GetDirectsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetDirectsResponse',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<$5.Direct>(1, 'directs', $pb.PbFieldType.PM,
        subBuilder: $5.Direct.create)
    ..hasRequiredFields = false;

  GetDirectsResponse._() : super();
  factory GetDirectsResponse() => create();
  factory GetDirectsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetDirectsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetDirectsResponse clone() => GetDirectsResponse()..mergeFromMessage(this);
  GetDirectsResponse copyWith(void Function(GetDirectsResponse) updates) =>
      super.copyWith((message) => updates(message as GetDirectsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDirectsResponse create() => GetDirectsResponse._();
  GetDirectsResponse createEmptyInstance() => create();
  static $pb.PbList<GetDirectsResponse> createRepeated() =>
      $pb.PbList<GetDirectsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDirectsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetDirectsResponse>(create);
  static GetDirectsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Direct> get directs => $_getList(0);
}

class GetMessagesParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetMessagesParam',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetMessagesParam._() : super();
  factory GetMessagesParam() => create();
  factory GetMessagesParam.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMessagesParam.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetMessagesParam clone() => GetMessagesParam()..mergeFromMessage(this);
  GetMessagesParam copyWith(void Function(GetMessagesParam) updates) =>
      super.copyWith((message) => updates(message as GetMessagesParam));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMessagesParam create() => GetMessagesParam._();
  GetMessagesParam createEmptyInstance() => create();
  static $pb.PbList<GetMessagesParam> createRepeated() =>
      $pb.PbList<GetMessagesParam>();
  @$core.pragma('dart2js:noInline')
  static GetMessagesParam getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMessagesParam>(create);
  static GetMessagesParam _defaultInstance;
}

class GetMessagesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetMessagesResponse',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<$5.Message>(1, 'directs', $pb.PbFieldType.PM,
        subBuilder: $5.Message.create)
    ..hasRequiredFields = false;

  GetMessagesResponse._() : super();
  factory GetMessagesResponse() => create();
  factory GetMessagesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMessagesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetMessagesResponse clone() => GetMessagesResponse()..mergeFromMessage(this);
  GetMessagesResponse copyWith(void Function(GetMessagesResponse) updates) =>
      super.copyWith((message) => updates(message as GetMessagesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMessagesResponse create() => GetMessagesResponse._();
  GetMessagesResponse createEmptyInstance() => create();
  static $pb.PbList<GetMessagesResponse> createRepeated() =>
      $pb.PbList<GetMessagesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMessagesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMessagesResponse>(create);
  static GetMessagesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Message> get directs => $_getList(0);
}

class RPC_SampleApi {
  $pb.RpcClient _client;
  RPC_SampleApi(this._client);

  $async.Future<GetUsers1Response> getUsers1(
      $pb.ClientContext ctx, GetUsers1Param request) {
    var emptyResponse = GetUsers1Response();
    // emptyResponse.mergeFromBuffer(input);
    return _client.invoke<GetUsers1Response>(
        ctx, 'RPC_Sample', 'GetUsers1', request, emptyResponse);
  }

  $async.Future<GetProfilesResponse> getProfiles(
      $pb.ClientContext ctx, GetProfilesParam request) {
    var emptyResponse = GetProfilesResponse();
    return _client.invoke<GetProfilesResponse>(
        ctx, 'RPC_Sample', 'GetProfiles', request, emptyResponse);
  }

  $async.Future<GetChannelsResponse> getChannels(
      $pb.ClientContext ctx, GetChannelsParam request) {
    var emptyResponse = GetChannelsResponse();
    return _client.invoke<GetChannelsResponse>(
        ctx, 'RPC_Sample', 'GetChannels', request, emptyResponse);
  }

  $async.Future<GetDirectsResponse> getDirects(
      $pb.ClientContext ctx, GetDirectsParam request) {
    var emptyResponse = GetDirectsResponse();
    return _client.invoke<GetDirectsResponse>(
        ctx, 'RPC_Sample', 'GetDirects', request, emptyResponse);
  }

  $async.Future<GetMessagesResponse> getMessages(
      $pb.ClientContext ctx, GetMessagesParam request) {
    var emptyResponse = GetMessagesResponse();
    return _client.invoke<GetMessagesResponse>(
        ctx, 'RPC_Sample', 'GetMessages', request, emptyResponse);
  }
}
