///
//  Generated code. Do not modify.
//  source: global.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'global.pbenum.dart';

export 'global.pbenum.dart';

class Invoke extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Invoke',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'method', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(2, 'actionId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(3, 'isResponse')
    ..a<$core.List<$core.int>>(4, 'rpcData', $pb.PbFieldType.OY)
    ..a<$core.int>(6, 'namespace', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  Invoke._() : super();
  factory Invoke() => create();
  factory Invoke.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Invoke.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Invoke clone() => Invoke()..mergeFromMessage(this);
  Invoke copyWith(void Function(Invoke) updates) =>
      super.copyWith((message) => updates(message as Invoke));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Invoke create() => Invoke._();
  Invoke createEmptyInstance() => create();
  static $pb.PbList<Invoke> createRepeated() => $pb.PbList<Invoke>();
  @$core.pragma('dart2js:noInline')
  static Invoke getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Invoke>(create);
  static Invoke _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get method => $_getIZ(0);
  @$pb.TagNumber(1)
  set method($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMethod() => $_has(0);
  @$pb.TagNumber(1)
  void clearMethod() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get actionId => $_getI64(1);
  @$pb.TagNumber(2)
  set actionId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActionId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isResponse => $_getBF(2);
  @$pb.TagNumber(3)
  set isResponse($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsResponse() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get rpcData => $_getN(3);
  @$pb.TagNumber(4)
  set rpcData($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRpcData() => $_has(3);
  @$pb.TagNumber(4)
  void clearRpcData() => clearField(4);

  @$pb.TagNumber(6)
  $core.int get namespace => $_getIZ(4);
  @$pb.TagNumber(6)
  set namespace($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasNamespace() => $_has(4);
  @$pb.TagNumber(6)
  void clearNamespace() => clearField(6);
}

class Contact extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Contact',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'gid', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, 'profileCid', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(3, 'deviceId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, 'phone')
    ..aOS(5, 'firstName')
    ..aOS(6, 'lastName')
    ..a<$core.int>(12, 'peerProfileCid', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, 'createdTime', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  Contact._() : super();
  factory Contact() => create();
  factory Contact.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Contact.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Contact clone() => Contact()..mergeFromMessage(this);
  Contact copyWith(void Function(Contact) updates) =>
      super.copyWith((message) => updates(message as Contact));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Contact create() => Contact._();
  Contact createEmptyInstance() => create();
  static $pb.PbList<Contact> createRepeated() => $pb.PbList<Contact>();
  @$core.pragma('dart2js:noInline')
  static Contact getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Contact>(create);
  static Contact _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gid => $_getI64(0);
  @$pb.TagNumber(1)
  set gid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get profileCid => $_getIZ(1);
  @$pb.TagNumber(2)
  set profileCid($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProfileCid() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfileCid() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get deviceId => $_getI64(2);
  @$pb.TagNumber(3)
  set deviceId($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDeviceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get firstName => $_getSZ(4);
  @$pb.TagNumber(5)
  set firstName($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFirstName() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lastName => $_getSZ(5);
  @$pb.TagNumber(6)
  set lastName($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasLastName() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastName() => clearField(6);

  @$pb.TagNumber(12)
  $core.int get peerProfileCid => $_getIZ(6);
  @$pb.TagNumber(12)
  set peerProfileCid($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasPeerProfileCid() => $_has(6);
  @$pb.TagNumber(12)
  void clearPeerProfileCid() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get createdTime => $_getIZ(7);
  @$pb.TagNumber(13)
  set createdTime($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasCreatedTime() => $_has(7);
  @$pb.TagNumber(13)
  void clearCreatedTime() => clearField(13);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cid', $pb.PbFieldType.OU3)
    ..aOS(4, 'firstName')
    ..aOS(5, 'lastName')
    ..aOS(14, 'phone')
    ..aOS(15, 'email')
    ..aOS(17, 'passwordHash')
    ..aOS(18, 'passwordSalt')
    ..a<$core.int>(36, 'createdTime', $pb.PbFieldType.OU3)
    ..a<$core.int>(37, 'versionTime', $pb.PbFieldType.OU3)
    ..aOB(38, 'isDeleted')
    ..aOB(39, 'isBanned')
    ..aOM<Channel>(80, 'UserCounts',
        protoName: 'UserCounts', subBuilder: Channel.create)
    ..pc<Session>(102, 'sessions', $pb.PbFieldType.PM,
        subBuilder: Session.create)
    ..pc<Profile>(110, 'profiles', $pb.PbFieldType.PM,
        subBuilder: Profile.create)
    ..aOM<ShoppingProfile>(111, 'shoppingProfile',
        subBuilder: ShoppingProfile.create)
    ..pc<Store>(113, 'stores', $pb.PbFieldType.PM, subBuilder: Store.create)
    ..aOM<Profile>(1114, 'defProfile', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  User._() : super();
  factory User() => create();
  factory User.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  User clone() => User()..mergeFromMessage(this);
  User copyWith(void Function(User) updates) =>
      super.copyWith((message) => updates(message as User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cid => $_getIZ(0);
  @$pb.TagNumber(1)
  set cid($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCid() => clearField(1);

  @$pb.TagNumber(4)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(4)
  set firstName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(4)
  void clearFirstName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(5)
  set lastName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(5)
  void clearLastName() => clearField(5);

  @$pb.TagNumber(14)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(14)
  set phone($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(14)
  void clearPhone() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(15)
  set email($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(15)
  void clearEmail() => clearField(15);

  @$pb.TagNumber(17)
  $core.String get passwordHash => $_getSZ(5);
  @$pb.TagNumber(17)
  set passwordHash($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasPasswordHash() => $_has(5);
  @$pb.TagNumber(17)
  void clearPasswordHash() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get passwordSalt => $_getSZ(6);
  @$pb.TagNumber(18)
  set passwordSalt($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasPasswordSalt() => $_has(6);
  @$pb.TagNumber(18)
  void clearPasswordSalt() => clearField(18);

  @$pb.TagNumber(36)
  $core.int get createdTime => $_getIZ(7);
  @$pb.TagNumber(36)
  set createdTime($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(36)
  $core.bool hasCreatedTime() => $_has(7);
  @$pb.TagNumber(36)
  void clearCreatedTime() => clearField(36);

  @$pb.TagNumber(37)
  $core.int get versionTime => $_getIZ(8);
  @$pb.TagNumber(37)
  set versionTime($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  @$pb.TagNumber(37)
  $core.bool hasVersionTime() => $_has(8);
  @$pb.TagNumber(37)
  void clearVersionTime() => clearField(37);

  @$pb.TagNumber(38)
  $core.bool get isDeleted => $_getBF(9);
  @$pb.TagNumber(38)
  set isDeleted($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(38)
  $core.bool hasIsDeleted() => $_has(9);
  @$pb.TagNumber(38)
  void clearIsDeleted() => clearField(38);

  @$pb.TagNumber(39)
  $core.bool get isBanned => $_getBF(10);
  @$pb.TagNumber(39)
  set isBanned($core.bool v) {
    $_setBool(10, v);
  }

  @$pb.TagNumber(39)
  $core.bool hasIsBanned() => $_has(10);
  @$pb.TagNumber(39)
  void clearIsBanned() => clearField(39);

  @$pb.TagNumber(80)
  Channel get userCounts => $_getN(11);
  @$pb.TagNumber(80)
  set userCounts(Channel v) {
    setField(80, v);
  }

  @$pb.TagNumber(80)
  $core.bool hasUserCounts() => $_has(11);
  @$pb.TagNumber(80)
  void clearUserCounts() => clearField(80);
  @$pb.TagNumber(80)
  Channel ensureUserCounts() => $_ensure(11);

  @$pb.TagNumber(102)
  $core.List<Session> get sessions => $_getList(12);

  @$pb.TagNumber(110)
  $core.List<Profile> get profiles => $_getList(13);

  @$pb.TagNumber(111)
  ShoppingProfile get shoppingProfile => $_getN(14);
  @$pb.TagNumber(111)
  set shoppingProfile(ShoppingProfile v) {
    setField(111, v);
  }

  @$pb.TagNumber(111)
  $core.bool hasShoppingProfile() => $_has(14);
  @$pb.TagNumber(111)
  void clearShoppingProfile() => clearField(111);
  @$pb.TagNumber(111)
  ShoppingProfile ensureShoppingProfile() => $_ensure(14);

  @$pb.TagNumber(113)
  $core.List<Store> get stores => $_getList(15);

  @$pb.TagNumber(1114)
  Profile get defProfile => $_getN(16);
  @$pb.TagNumber(1114)
  set defProfile(Profile v) {
    setField(1114, v);
  }

  @$pb.TagNumber(1114)
  $core.bool hasDefProfile() => $_has(16);
  @$pb.TagNumber(1114)
  void clearDefProfile() => clearField(1114);
  @$pb.TagNumber(1114)
  Profile ensureDefProfile() => $_ensure(16);
}

class UserCounts extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserCounts',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'createdChannels', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  UserCounts._() : super();
  factory UserCounts() => create();
  factory UserCounts.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserCounts.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UserCounts clone() => UserCounts()..mergeFromMessage(this);
  UserCounts copyWith(void Function(UserCounts) updates) =>
      super.copyWith((message) => updates(message as UserCounts));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserCounts create() => UserCounts._();
  UserCounts createEmptyInstance() => create();
  static $pb.PbList<UserCounts> createRepeated() => $pb.PbList<UserCounts>();
  @$core.pragma('dart2js:noInline')
  static UserCounts getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserCounts>(create);
  static UserCounts _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get createdChannels => $_getIZ(0);
  @$pb.TagNumber(1)
  set createdChannels($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCreatedChannels() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedChannels() => clearField(1);
}

class Profile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Profile',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cid', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'userCid', $pb.PbFieldType.OU3)
    ..aOM<Channel>(100, 'primaryChannel', subBuilder: Channel.create)
    ..a<$core.int>(103, 'createdTime', $pb.PbFieldType.OU3)
    ..pc<Channel>(104, 'channels', $pb.PbFieldType.PM,
        subBuilder: Channel.create)
    ..pc<Direct>(105, 'directs', $pb.PbFieldType.PM, subBuilder: Direct.create)
    ..pc<Group>(106, 'groups', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..aOM<ProfileSettings>(107, 'setting', subBuilder: ProfileSettings.create)
    ..pc<Contact>(108, 'contacts', $pb.PbFieldType.PM,
        subBuilder: Contact.create)
    ..aOM<SavedChannel>(109, 'savedChannel', subBuilder: SavedChannel.create)
    ..aOM<Contact>(111, 'contactInfo', subBuilder: Contact.create)
    ..hasRequiredFields = false;

  Profile._() : super();
  factory Profile() => create();
  factory Profile.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Profile clone() => Profile()..mergeFromMessage(this);
  Profile copyWith(void Function(Profile) updates) =>
      super.copyWith((message) => updates(message as Profile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cid => $_getIZ(0);
  @$pb.TagNumber(1)
  set cid($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userCid => $_getIZ(1);
  @$pb.TagNumber(2)
  set userCid($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUserCid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserCid() => clearField(2);

  @$pb.TagNumber(100)
  Channel get primaryChannel => $_getN(2);
  @$pb.TagNumber(100)
  set primaryChannel(Channel v) {
    setField(100, v);
  }

  @$pb.TagNumber(100)
  $core.bool hasPrimaryChannel() => $_has(2);
  @$pb.TagNumber(100)
  void clearPrimaryChannel() => clearField(100);
  @$pb.TagNumber(100)
  Channel ensurePrimaryChannel() => $_ensure(2);

  @$pb.TagNumber(103)
  $core.int get createdTime => $_getIZ(3);
  @$pb.TagNumber(103)
  set createdTime($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(103)
  $core.bool hasCreatedTime() => $_has(3);
  @$pb.TagNumber(103)
  void clearCreatedTime() => clearField(103);

  @$pb.TagNumber(104)
  $core.List<Channel> get channels => $_getList(4);

  @$pb.TagNumber(105)
  $core.List<Direct> get directs => $_getList(5);

  @$pb.TagNumber(106)
  $core.List<Group> get groups => $_getList(6);

  @$pb.TagNumber(107)
  ProfileSettings get setting => $_getN(7);
  @$pb.TagNumber(107)
  set setting(ProfileSettings v) {
    setField(107, v);
  }

  @$pb.TagNumber(107)
  $core.bool hasSetting() => $_has(7);
  @$pb.TagNumber(107)
  void clearSetting() => clearField(107);
  @$pb.TagNumber(107)
  ProfileSettings ensureSetting() => $_ensure(7);

  @$pb.TagNumber(108)
  $core.List<Contact> get contacts => $_getList(8);

  @$pb.TagNumber(109)
  SavedChannel get savedChannel => $_getN(9);
  @$pb.TagNumber(109)
  set savedChannel(SavedChannel v) {
    setField(109, v);
  }

  @$pb.TagNumber(109)
  $core.bool hasSavedChannel() => $_has(9);
  @$pb.TagNumber(109)
  void clearSavedChannel() => clearField(109);
  @$pb.TagNumber(109)
  SavedChannel ensureSavedChannel() => $_ensure(9);

  @$pb.TagNumber(111)
  Contact get contactInfo => $_getN(10);
  @$pb.TagNumber(111)
  set contactInfo(Contact v) {
    setField(111, v);
  }

  @$pb.TagNumber(111)
  $core.bool hasContactInfo() => $_has(10);
  @$pb.TagNumber(111)
  void clearContactInfo() => clearField(111);
  @$pb.TagNumber(111)
  Contact ensureContactInfo() => $_ensure(10);
}

class ProfileSettings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProfileSettings',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'profileCid', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  ProfileSettings._() : super();
  factory ProfileSettings() => create();
  factory ProfileSettings.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ProfileSettings.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ProfileSettings clone() => ProfileSettings()..mergeFromMessage(this);
  ProfileSettings copyWith(void Function(ProfileSettings) updates) =>
      super.copyWith((message) => updates(message as ProfileSettings));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProfileSettings create() => ProfileSettings._();
  ProfileSettings createEmptyInstance() => create();
  static $pb.PbList<ProfileSettings> createRepeated() =>
      $pb.PbList<ProfileSettings>();
  @$core.pragma('dart2js:noInline')
  static ProfileSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProfileSettings>(create);
  static ProfileSettings _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get profileCid => $_getIZ(0);
  @$pb.TagNumber(1)
  set profileCid($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProfileCid() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfileCid() => clearField(1);
}

class Direct extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Direct',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'gid', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(5, 'profileCid', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'peerProfileCid', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, 'groupCid', $pb.PbFieldType.OU3)
    ..aOS(9, 'customTitle')
    ..a<$fixnum.Int64>(10, 'pinTimeMs', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(11, 'visibleFromMsgGid', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(12, 'unseenCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, 'seq', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(16, 'myLastSeenSeq', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(17, 'myLastSeenMsgId', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(18, 'peerLastSeenMsgId', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(19, 'myLastDeliveredSeq', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(20, 'myLastDeliveredMsgId', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(21, 'peerLastDeliveredMsgId', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(22, 'isActive')
    ..aOM<Message>(25, 'lastMessage', subBuilder: Message.create)
    ..aOM<Message>(26, 'pinnedMessage', subBuilder: Message.create)
    ..a<$core.int>(29, 'muteUntil', $pb.PbFieldType.OU3)
    ..a<$core.int>(33, 'createdTime', $pb.PbFieldType.OU3)
    ..a<$core.int>(41, 'peerChannelCid', $pb.PbFieldType.OU3)
    ..aOM<GroupMember>(43, 'groupMember', subBuilder: GroupMember.create)
    ..aOM<FileMsg>(44, 'avatar', subBuilder: FileMsg.create)
    ..a<$fixnum.Int64>(45, 'sortTimeMs', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<DirectDraft>(46, 'draft', subBuilder: DirectDraft.create)
    ..aOM<DirectCustomNotification>(47, 'customNotification',
        subBuilder: DirectCustomNotification.create)
    ..aOM<Channel>(48, 'channel', subBuilder: Channel.create)
    ..aOM<Contact>(49, 'contact', subBuilder: Contact.create)
    ..aOM<Group>(50, 'group', subBuilder: Group.create)
    ..e<DirectTypeEnum>(102, 'directType', $pb.PbFieldType.OE,
        defaultOrMaker: DirectTypeEnum.DEO,
        valueOf: DirectTypeEnum.valueOf,
        enumValues: DirectTypeEnum.values)
    ..a<$fixnum.Int64>(104, 'syncTimeMs', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(108, 'pinedMsgsCount', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  Direct._() : super();
  factory Direct() => create();
  factory Direct.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Direct.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Direct clone() => Direct()..mergeFromMessage(this);
  Direct copyWith(void Function(Direct) updates) =>
      super.copyWith((message) => updates(message as Direct));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Direct create() => Direct._();
  Direct createEmptyInstance() => create();
  static $pb.PbList<Direct> createRepeated() => $pb.PbList<Direct>();
  @$core.pragma('dart2js:noInline')
  static Direct getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Direct>(create);
  static Direct _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gid => $_getI64(0);
  @$pb.TagNumber(1)
  set gid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGid() => clearField(1);

  @$pb.TagNumber(5)
  $core.int get profileCid => $_getIZ(1);
  @$pb.TagNumber(5)
  set profileCid($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasProfileCid() => $_has(1);
  @$pb.TagNumber(5)
  void clearProfileCid() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get peerProfileCid => $_getIZ(2);
  @$pb.TagNumber(6)
  set peerProfileCid($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasPeerProfileCid() => $_has(2);
  @$pb.TagNumber(6)
  void clearPeerProfileCid() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get groupCid => $_getIZ(3);
  @$pb.TagNumber(7)
  set groupCid($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasGroupCid() => $_has(3);
  @$pb.TagNumber(7)
  void clearGroupCid() => clearField(7);

  @$pb.TagNumber(9)
  $core.String get customTitle => $_getSZ(4);
  @$pb.TagNumber(9)
  set customTitle($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasCustomTitle() => $_has(4);
  @$pb.TagNumber(9)
  void clearCustomTitle() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get pinTimeMs => $_getI64(5);
  @$pb.TagNumber(10)
  set pinTimeMs($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasPinTimeMs() => $_has(5);
  @$pb.TagNumber(10)
  void clearPinTimeMs() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get visibleFromMsgGid => $_getI64(6);
  @$pb.TagNumber(11)
  set visibleFromMsgGid($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasVisibleFromMsgGid() => $_has(6);
  @$pb.TagNumber(11)
  void clearVisibleFromMsgGid() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get unseenCount => $_getIZ(7);
  @$pb.TagNumber(12)
  set unseenCount($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasUnseenCount() => $_has(7);
  @$pb.TagNumber(12)
  void clearUnseenCount() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get seq => $_getIZ(8);
  @$pb.TagNumber(13)
  set seq($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasSeq() => $_has(8);
  @$pb.TagNumber(13)
  void clearSeq() => clearField(13);

  @$pb.TagNumber(16)
  $fixnum.Int64 get myLastSeenSeq => $_getI64(9);
  @$pb.TagNumber(16)
  set myLastSeenSeq($fixnum.Int64 v) {
    $_setInt64(9, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasMyLastSeenSeq() => $_has(9);
  @$pb.TagNumber(16)
  void clearMyLastSeenSeq() => clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get myLastSeenMsgId => $_getI64(10);
  @$pb.TagNumber(17)
  set myLastSeenMsgId($fixnum.Int64 v) {
    $_setInt64(10, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasMyLastSeenMsgId() => $_has(10);
  @$pb.TagNumber(17)
  void clearMyLastSeenMsgId() => clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get peerLastSeenMsgId => $_getI64(11);
  @$pb.TagNumber(18)
  set peerLastSeenMsgId($fixnum.Int64 v) {
    $_setInt64(11, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasPeerLastSeenMsgId() => $_has(11);
  @$pb.TagNumber(18)
  void clearPeerLastSeenMsgId() => clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get myLastDeliveredSeq => $_getI64(12);
  @$pb.TagNumber(19)
  set myLastDeliveredSeq($fixnum.Int64 v) {
    $_setInt64(12, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasMyLastDeliveredSeq() => $_has(12);
  @$pb.TagNumber(19)
  void clearMyLastDeliveredSeq() => clearField(19);

  @$pb.TagNumber(20)
  $fixnum.Int64 get myLastDeliveredMsgId => $_getI64(13);
  @$pb.TagNumber(20)
  set myLastDeliveredMsgId($fixnum.Int64 v) {
    $_setInt64(13, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasMyLastDeliveredMsgId() => $_has(13);
  @$pb.TagNumber(20)
  void clearMyLastDeliveredMsgId() => clearField(20);

  @$pb.TagNumber(21)
  $fixnum.Int64 get peerLastDeliveredMsgId => $_getI64(14);
  @$pb.TagNumber(21)
  set peerLastDeliveredMsgId($fixnum.Int64 v) {
    $_setInt64(14, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasPeerLastDeliveredMsgId() => $_has(14);
  @$pb.TagNumber(21)
  void clearPeerLastDeliveredMsgId() => clearField(21);

  @$pb.TagNumber(22)
  $core.bool get isActive => $_getBF(15);
  @$pb.TagNumber(22)
  set isActive($core.bool v) {
    $_setBool(15, v);
  }

  @$pb.TagNumber(22)
  $core.bool hasIsActive() => $_has(15);
  @$pb.TagNumber(22)
  void clearIsActive() => clearField(22);

  @$pb.TagNumber(25)
  Message get lastMessage => $_getN(16);
  @$pb.TagNumber(25)
  set lastMessage(Message v) {
    setField(25, v);
  }

  @$pb.TagNumber(25)
  $core.bool hasLastMessage() => $_has(16);
  @$pb.TagNumber(25)
  void clearLastMessage() => clearField(25);
  @$pb.TagNumber(25)
  Message ensureLastMessage() => $_ensure(16);

  @$pb.TagNumber(26)
  Message get pinnedMessage => $_getN(17);
  @$pb.TagNumber(26)
  set pinnedMessage(Message v) {
    setField(26, v);
  }

  @$pb.TagNumber(26)
  $core.bool hasPinnedMessage() => $_has(17);
  @$pb.TagNumber(26)
  void clearPinnedMessage() => clearField(26);
  @$pb.TagNumber(26)
  Message ensurePinnedMessage() => $_ensure(17);

  @$pb.TagNumber(29)
  $core.int get muteUntil => $_getIZ(18);
  @$pb.TagNumber(29)
  set muteUntil($core.int v) {
    $_setUnsignedInt32(18, v);
  }

  @$pb.TagNumber(29)
  $core.bool hasMuteUntil() => $_has(18);
  @$pb.TagNumber(29)
  void clearMuteUntil() => clearField(29);

  @$pb.TagNumber(33)
  $core.int get createdTime => $_getIZ(19);
  @$pb.TagNumber(33)
  set createdTime($core.int v) {
    $_setUnsignedInt32(19, v);
  }

  @$pb.TagNumber(33)
  $core.bool hasCreatedTime() => $_has(19);
  @$pb.TagNumber(33)
  void clearCreatedTime() => clearField(33);

  @$pb.TagNumber(41)
  $core.int get peerChannelCid => $_getIZ(20);
  @$pb.TagNumber(41)
  set peerChannelCid($core.int v) {
    $_setUnsignedInt32(20, v);
  }

  @$pb.TagNumber(41)
  $core.bool hasPeerChannelCid() => $_has(20);
  @$pb.TagNumber(41)
  void clearPeerChannelCid() => clearField(41);

  @$pb.TagNumber(43)
  GroupMember get groupMember => $_getN(21);
  @$pb.TagNumber(43)
  set groupMember(GroupMember v) {
    setField(43, v);
  }

  @$pb.TagNumber(43)
  $core.bool hasGroupMember() => $_has(21);
  @$pb.TagNumber(43)
  void clearGroupMember() => clearField(43);
  @$pb.TagNumber(43)
  GroupMember ensureGroupMember() => $_ensure(21);

  @$pb.TagNumber(44)
  FileMsg get avatar => $_getN(22);
  @$pb.TagNumber(44)
  set avatar(FileMsg v) {
    setField(44, v);
  }

  @$pb.TagNumber(44)
  $core.bool hasAvatar() => $_has(22);
  @$pb.TagNumber(44)
  void clearAvatar() => clearField(44);
  @$pb.TagNumber(44)
  FileMsg ensureAvatar() => $_ensure(22);

  @$pb.TagNumber(45)
  $fixnum.Int64 get sortTimeMs => $_getI64(23);
  @$pb.TagNumber(45)
  set sortTimeMs($fixnum.Int64 v) {
    $_setInt64(23, v);
  }

  @$pb.TagNumber(45)
  $core.bool hasSortTimeMs() => $_has(23);
  @$pb.TagNumber(45)
  void clearSortTimeMs() => clearField(45);

  @$pb.TagNumber(46)
  DirectDraft get draft => $_getN(24);
  @$pb.TagNumber(46)
  set draft(DirectDraft v) {
    setField(46, v);
  }

  @$pb.TagNumber(46)
  $core.bool hasDraft() => $_has(24);
  @$pb.TagNumber(46)
  void clearDraft() => clearField(46);
  @$pb.TagNumber(46)
  DirectDraft ensureDraft() => $_ensure(24);

  @$pb.TagNumber(47)
  DirectCustomNotification get customNotification => $_getN(25);
  @$pb.TagNumber(47)
  set customNotification(DirectCustomNotification v) {
    setField(47, v);
  }

  @$pb.TagNumber(47)
  $core.bool hasCustomNotification() => $_has(25);
  @$pb.TagNumber(47)
  void clearCustomNotification() => clearField(47);
  @$pb.TagNumber(47)
  DirectCustomNotification ensureCustomNotification() => $_ensure(25);

  @$pb.TagNumber(48)
  Channel get channel => $_getN(26);
  @$pb.TagNumber(48)
  set channel(Channel v) {
    setField(48, v);
  }

  @$pb.TagNumber(48)
  $core.bool hasChannel() => $_has(26);
  @$pb.TagNumber(48)
  void clearChannel() => clearField(48);
  @$pb.TagNumber(48)
  Channel ensureChannel() => $_ensure(26);

  @$pb.TagNumber(49)
  Contact get contact => $_getN(27);
  @$pb.TagNumber(49)
  set contact(Contact v) {
    setField(49, v);
  }

  @$pb.TagNumber(49)
  $core.bool hasContact() => $_has(27);
  @$pb.TagNumber(49)
  void clearContact() => clearField(49);
  @$pb.TagNumber(49)
  Contact ensureContact() => $_ensure(27);

  @$pb.TagNumber(50)
  Group get group => $_getN(28);
  @$pb.TagNumber(50)
  set group(Group v) {
    setField(50, v);
  }

  @$pb.TagNumber(50)
  $core.bool hasGroup() => $_has(28);
  @$pb.TagNumber(50)
  void clearGroup() => clearField(50);
  @$pb.TagNumber(50)
  Group ensureGroup() => $_ensure(28);

  @$pb.TagNumber(102)
  DirectTypeEnum get directType => $_getN(29);
  @$pb.TagNumber(102)
  set directType(DirectTypeEnum v) {
    setField(102, v);
  }

  @$pb.TagNumber(102)
  $core.bool hasDirectType() => $_has(29);
  @$pb.TagNumber(102)
  void clearDirectType() => clearField(102);

  @$pb.TagNumber(104)
  $fixnum.Int64 get syncTimeMs => $_getI64(30);
  @$pb.TagNumber(104)
  set syncTimeMs($fixnum.Int64 v) {
    $_setInt64(30, v);
  }

  @$pb.TagNumber(104)
  $core.bool hasSyncTimeMs() => $_has(30);
  @$pb.TagNumber(104)
  void clearSyncTimeMs() => clearField(104);

  @$pb.TagNumber(108)
  $core.int get pinedMsgsCount => $_getIZ(31);
  @$pb.TagNumber(108)
  set pinedMsgsCount($core.int v) {
    $_setUnsignedInt32(31, v);
  }

  @$pb.TagNumber(108)
  $core.bool hasPinedMsgsCount() => $_has(31);
  @$pb.TagNumber(108)
  void clearPinedMsgsCount() => clearField(108);
}

class DirectDraft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DirectDraft',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(34, 'draftText')
    ..aInt64(35, 'dratReplyToMsgId')
    ..hasRequiredFields = false;

  DirectDraft._() : super();
  factory DirectDraft() => create();
  factory DirectDraft.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DirectDraft.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DirectDraft clone() => DirectDraft()..mergeFromMessage(this);
  DirectDraft copyWith(void Function(DirectDraft) updates) =>
      super.copyWith((message) => updates(message as DirectDraft));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DirectDraft create() => DirectDraft._();
  DirectDraft createEmptyInstance() => create();
  static $pb.PbList<DirectDraft> createRepeated() => $pb.PbList<DirectDraft>();
  @$core.pragma('dart2js:noInline')
  static DirectDraft getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DirectDraft>(create);
  static DirectDraft _defaultInstance;

  @$pb.TagNumber(34)
  $core.String get draftText => $_getSZ(0);
  @$pb.TagNumber(34)
  set draftText($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(34)
  $core.bool hasDraftText() => $_has(0);
  @$pb.TagNumber(34)
  void clearDraftText() => clearField(34);

  @$pb.TagNumber(35)
  $fixnum.Int64 get dratReplyToMsgId => $_getI64(1);
  @$pb.TagNumber(35)
  set dratReplyToMsgId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(35)
  $core.bool hasDratReplyToMsgId() => $_has(1);
  @$pb.TagNumber(35)
  void clearDratReplyToMsgId() => clearField(35);
}

class DirectCustomNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DirectCustomNotification',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOB(13, 'alert')
    ..aOB(14, 'preview')
    ..aOB(15, 'ledOn')
    ..aOB(16, 'ledColor')
    ..aOB(17, 'vibrate')
    ..aOB(18, 'popup')
    ..aOB(19, 'sound')
    ..aOB(20, 'priority')
    ..hasRequiredFields = false;

  DirectCustomNotification._() : super();
  factory DirectCustomNotification() => create();
  factory DirectCustomNotification.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DirectCustomNotification.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DirectCustomNotification clone() =>
      DirectCustomNotification()..mergeFromMessage(this);
  DirectCustomNotification copyWith(
          void Function(DirectCustomNotification) updates) =>
      super.copyWith((message) => updates(message as DirectCustomNotification));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DirectCustomNotification create() => DirectCustomNotification._();
  DirectCustomNotification createEmptyInstance() => create();
  static $pb.PbList<DirectCustomNotification> createRepeated() =>
      $pb.PbList<DirectCustomNotification>();
  @$core.pragma('dart2js:noInline')
  static DirectCustomNotification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DirectCustomNotification>(create);
  static DirectCustomNotification _defaultInstance;

  @$pb.TagNumber(13)
  $core.bool get alert => $_getBF(0);
  @$pb.TagNumber(13)
  set alert($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasAlert() => $_has(0);
  @$pb.TagNumber(13)
  void clearAlert() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get preview => $_getBF(1);
  @$pb.TagNumber(14)
  set preview($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasPreview() => $_has(1);
  @$pb.TagNumber(14)
  void clearPreview() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get ledOn => $_getBF(2);
  @$pb.TagNumber(15)
  set ledOn($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasLedOn() => $_has(2);
  @$pb.TagNumber(15)
  void clearLedOn() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get ledColor => $_getBF(3);
  @$pb.TagNumber(16)
  set ledColor($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasLedColor() => $_has(3);
  @$pb.TagNumber(16)
  void clearLedColor() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get vibrate => $_getBF(4);
  @$pb.TagNumber(17)
  set vibrate($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasVibrate() => $_has(4);
  @$pb.TagNumber(17)
  void clearVibrate() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get popup => $_getBF(5);
  @$pb.TagNumber(18)
  set popup($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasPopup() => $_has(5);
  @$pb.TagNumber(18)
  void clearPopup() => clearField(18);

  @$pb.TagNumber(19)
  $core.bool get sound => $_getBF(6);
  @$pb.TagNumber(19)
  set sound($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasSound() => $_has(6);
  @$pb.TagNumber(19)
  void clearSound() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get priority => $_getBF(7);
  @$pb.TagNumber(20)
  set priority($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasPriority() => $_has(7);
  @$pb.TagNumber(20)
  void clearPriority() => clearField(20);
}

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Message',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'gid', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, 'byProfileCid', $pb.PbFieldType.OU3)
    ..aOS(7, 'text')
    ..a<$core.int>(12, 'viaAppId', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, 'seq', $pb.PbFieldType.OU3)
    ..aOM<Message>(16, 'forward', subBuilder: Message.create)
    ..a<$core.int>(17, 'editedTime', $pb.PbFieldType.OU3)
    ..a<$core.int>(18, 'createdTime', $pb.PbFieldType.OU3)
    ..aOM<Message>(50, 'replyTo', subBuilder: Message.create)
    ..aOM<MessageCount>(101, 'counts', subBuilder: MessageCount.create)
    ..aOM<MessageSetting>(102, 'setting', subBuilder: MessageSetting.create)
    ..pc<FileMsg>(103, 'files', $pb.PbFieldType.PM, subBuilder: FileMsg.create)
    ..e<MessageDeliveryStatues>(105, 'deliveryStatus', $pb.PbFieldType.OE,
        defaultOrMaker: MessageDeliveryStatues.UNKNOWN_MD,
        valueOf: MessageDeliveryStatues.valueOf,
        enumValues: MessageDeliveryStatues.values)
    ..a<$core.int>(106, 'deliveryTime', $pb.PbFieldType.OU3)
    ..e<MessageType>(107, 'messageType', $pb.PbFieldType.OE,
        defaultOrMaker: MessageType.TEXT,
        valueOf: MessageType.valueOf,
        enumValues: MessageType.values)
    ..aOS(109, 'title')
    ..aOM<Product>(110, 'Product',
        protoName: 'Product', subBuilder: Product.create)
    ..aOB(111, 'verified')
    ..a<$core.int>(112, 'flags', $pb.PbFieldType.OU3)
    ..aOB(150, 'deleted')
    ..hasRequiredFields = false;

  Message._() : super();
  factory Message() => create();
  factory Message.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Message clone() => Message()..mergeFromMessage(this);
  Message copyWith(void Function(Message) updates) =>
      super.copyWith((message) => updates(message as Message));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gid => $_getI64(0);
  @$pb.TagNumber(1)
  set gid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get byProfileCid => $_getIZ(1);
  @$pb.TagNumber(2)
  set byProfileCid($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasByProfileCid() => $_has(1);
  @$pb.TagNumber(2)
  void clearByProfileCid() => clearField(2);

  @$pb.TagNumber(7)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(7)
  set text($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(7)
  void clearText() => clearField(7);

  @$pb.TagNumber(12)
  $core.int get viaAppId => $_getIZ(3);
  @$pb.TagNumber(12)
  set viaAppId($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasViaAppId() => $_has(3);
  @$pb.TagNumber(12)
  void clearViaAppId() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get seq => $_getIZ(4);
  @$pb.TagNumber(13)
  set seq($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasSeq() => $_has(4);
  @$pb.TagNumber(13)
  void clearSeq() => clearField(13);

  @$pb.TagNumber(16)
  Message get forward => $_getN(5);
  @$pb.TagNumber(16)
  set forward(Message v) {
    setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasForward() => $_has(5);
  @$pb.TagNumber(16)
  void clearForward() => clearField(16);
  @$pb.TagNumber(16)
  Message ensureForward() => $_ensure(5);

  @$pb.TagNumber(17)
  $core.int get editedTime => $_getIZ(6);
  @$pb.TagNumber(17)
  set editedTime($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasEditedTime() => $_has(6);
  @$pb.TagNumber(17)
  void clearEditedTime() => clearField(17);

  @$pb.TagNumber(18)
  $core.int get createdTime => $_getIZ(7);
  @$pb.TagNumber(18)
  set createdTime($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasCreatedTime() => $_has(7);
  @$pb.TagNumber(18)
  void clearCreatedTime() => clearField(18);

  @$pb.TagNumber(50)
  Message get replyTo => $_getN(8);
  @$pb.TagNumber(50)
  set replyTo(Message v) {
    setField(50, v);
  }

  @$pb.TagNumber(50)
  $core.bool hasReplyTo() => $_has(8);
  @$pb.TagNumber(50)
  void clearReplyTo() => clearField(50);
  @$pb.TagNumber(50)
  Message ensureReplyTo() => $_ensure(8);

  @$pb.TagNumber(101)
  MessageCount get counts => $_getN(9);
  @$pb.TagNumber(101)
  set counts(MessageCount v) {
    setField(101, v);
  }

  @$pb.TagNumber(101)
  $core.bool hasCounts() => $_has(9);
  @$pb.TagNumber(101)
  void clearCounts() => clearField(101);
  @$pb.TagNumber(101)
  MessageCount ensureCounts() => $_ensure(9);

  @$pb.TagNumber(102)
  MessageSetting get setting => $_getN(10);
  @$pb.TagNumber(102)
  set setting(MessageSetting v) {
    setField(102, v);
  }

  @$pb.TagNumber(102)
  $core.bool hasSetting() => $_has(10);
  @$pb.TagNumber(102)
  void clearSetting() => clearField(102);
  @$pb.TagNumber(102)
  MessageSetting ensureSetting() => $_ensure(10);

  @$pb.TagNumber(103)
  $core.List<FileMsg> get files => $_getList(11);

  @$pb.TagNumber(105)
  MessageDeliveryStatues get deliveryStatus => $_getN(12);
  @$pb.TagNumber(105)
  set deliveryStatus(MessageDeliveryStatues v) {
    setField(105, v);
  }

  @$pb.TagNumber(105)
  $core.bool hasDeliveryStatus() => $_has(12);
  @$pb.TagNumber(105)
  void clearDeliveryStatus() => clearField(105);

  @$pb.TagNumber(106)
  $core.int get deliveryTime => $_getIZ(13);
  @$pb.TagNumber(106)
  set deliveryTime($core.int v) {
    $_setUnsignedInt32(13, v);
  }

  @$pb.TagNumber(106)
  $core.bool hasDeliveryTime() => $_has(13);
  @$pb.TagNumber(106)
  void clearDeliveryTime() => clearField(106);

  @$pb.TagNumber(107)
  MessageType get messageType => $_getN(14);
  @$pb.TagNumber(107)
  set messageType(MessageType v) {
    setField(107, v);
  }

  @$pb.TagNumber(107)
  $core.bool hasMessageType() => $_has(14);
  @$pb.TagNumber(107)
  void clearMessageType() => clearField(107);

  @$pb.TagNumber(109)
  $core.String get title => $_getSZ(15);
  @$pb.TagNumber(109)
  set title($core.String v) {
    $_setString(15, v);
  }

  @$pb.TagNumber(109)
  $core.bool hasTitle() => $_has(15);
  @$pb.TagNumber(109)
  void clearTitle() => clearField(109);

  @$pb.TagNumber(110)
  Product get product => $_getN(16);
  @$pb.TagNumber(110)
  set product(Product v) {
    setField(110, v);
  }

  @$pb.TagNumber(110)
  $core.bool hasProduct() => $_has(16);
  @$pb.TagNumber(110)
  void clearProduct() => clearField(110);
  @$pb.TagNumber(110)
  Product ensureProduct() => $_ensure(16);

  @$pb.TagNumber(111)
  $core.bool get verified => $_getBF(17);
  @$pb.TagNumber(111)
  set verified($core.bool v) {
    $_setBool(17, v);
  }

  @$pb.TagNumber(111)
  $core.bool hasVerified() => $_has(17);
  @$pb.TagNumber(111)
  void clearVerified() => clearField(111);

  @$pb.TagNumber(112)
  $core.int get flags => $_getIZ(18);
  @$pb.TagNumber(112)
  set flags($core.int v) {
    $_setUnsignedInt32(18, v);
  }

  @$pb.TagNumber(112)
  $core.bool hasFlags() => $_has(18);
  @$pb.TagNumber(112)
  void clearFlags() => clearField(112);

  @$pb.TagNumber(150)
  $core.bool get deleted => $_getBF(19);
  @$pb.TagNumber(150)
  set deleted($core.bool v) {
    $_setBool(19, v);
  }

  @$pb.TagNumber(150)
  $core.bool hasDeleted() => $_has(19);
  @$pb.TagNumber(150)
  void clearDeleted() => clearField(150);
}

class MessageCount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MessageCount',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'messageGid', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, 'commentsCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'likesCount', $pb.PbFieldType.OU3)
    ..aInt64(4, 'viewsCount')
    ..a<$core.int>(5, 'resharedCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'chatSharedCount', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  MessageCount._() : super();
  factory MessageCount() => create();
  factory MessageCount.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MessageCount.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  MessageCount clone() => MessageCount()..mergeFromMessage(this);
  MessageCount copyWith(void Function(MessageCount) updates) =>
      super.copyWith((message) => updates(message as MessageCount));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageCount create() => MessageCount._();
  MessageCount createEmptyInstance() => create();
  static $pb.PbList<MessageCount> createRepeated() =>
      $pb.PbList<MessageCount>();
  @$core.pragma('dart2js:noInline')
  static MessageCount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageCount>(create);
  static MessageCount _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get messageGid => $_getI64(0);
  @$pb.TagNumber(1)
  set messageGid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessageGid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageGid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get commentsCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set commentsCount($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCommentsCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommentsCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get likesCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set likesCount($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLikesCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearLikesCount() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get viewsCount => $_getI64(3);
  @$pb.TagNumber(4)
  set viewsCount($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasViewsCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearViewsCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get resharedCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set resharedCount($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasResharedCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearResharedCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get chatSharedCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set chatSharedCount($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasChatSharedCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearChatSharedCount() => clearField(6);
}

class MessageSetting extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MessageSetting',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(11, 'disableComment', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  MessageSetting._() : super();
  factory MessageSetting() => create();
  factory MessageSetting.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MessageSetting.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  MessageSetting clone() => MessageSetting()..mergeFromMessage(this);
  MessageSetting copyWith(void Function(MessageSetting) updates) =>
      super.copyWith((message) => updates(message as MessageSetting));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageSetting create() => MessageSetting._();
  MessageSetting createEmptyInstance() => create();
  static $pb.PbList<MessageSetting> createRepeated() =>
      $pb.PbList<MessageSetting>();
  @$core.pragma('dart2js:noInline')
  static MessageSetting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageSetting>(create);
  static MessageSetting _defaultInstance;

  @$pb.TagNumber(11)
  $core.int get disableComment => $_getIZ(0);
  @$pb.TagNumber(11)
  set disableComment($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDisableComment() => $_has(0);
  @$pb.TagNumber(11)
  void clearDisableComment() => clearField(11);
}

class MessageLog extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MessageLog',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(2, 'byProfileCid', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'targetProfileCid', $pb.PbFieldType.OU3)
    ..e<MessageLogType>(10, 'logType', $pb.PbFieldType.OE,
        defaultOrMaker: MessageLogType.MLT_UNKNOWN,
        valueOf: MessageLogType.valueOf,
        enumValues: MessageLogType.values)
    ..aOM<Profile>(11, 'targetProfileView', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  MessageLog._() : super();
  factory MessageLog() => create();
  factory MessageLog.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MessageLog.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  MessageLog clone() => MessageLog()..mergeFromMessage(this);
  MessageLog copyWith(void Function(MessageLog) updates) =>
      super.copyWith((message) => updates(message as MessageLog));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageLog create() => MessageLog._();
  MessageLog createEmptyInstance() => create();
  static $pb.PbList<MessageLog> createRepeated() => $pb.PbList<MessageLog>();
  @$core.pragma('dart2js:noInline')
  static MessageLog getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageLog>(create);
  static MessageLog _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get byProfileCid => $_getIZ(0);
  @$pb.TagNumber(2)
  set byProfileCid($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasByProfileCid() => $_has(0);
  @$pb.TagNumber(2)
  void clearByProfileCid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get targetProfileCid => $_getIZ(1);
  @$pb.TagNumber(3)
  set targetProfileCid($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTargetProfileCid() => $_has(1);
  @$pb.TagNumber(3)
  void clearTargetProfileCid() => clearField(3);

  @$pb.TagNumber(10)
  MessageLogType get logType => $_getN(2);
  @$pb.TagNumber(10)
  set logType(MessageLogType v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasLogType() => $_has(2);
  @$pb.TagNumber(10)
  void clearLogType() => clearField(10);

  @$pb.TagNumber(11)
  Profile get targetProfileView => $_getN(3);
  @$pb.TagNumber(11)
  set targetProfileView(Profile v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasTargetProfileView() => $_has(3);
  @$pb.TagNumber(11)
  void clearTargetProfileView() => clearField(11);
  @$pb.TagNumber(11)
  Profile ensureTargetProfileView() => $_ensure(3);
}

class Channel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Channel',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cid', $pb.PbFieldType.OU3)
    ..aOS(2, 'userName')
    ..aOS(3, 'channelName')
    ..aOB(6, 'isVerified')
    ..a<$core.int>(7, 'creatorProfileCid', $pb.PbFieldType.OU3)
    ..e<ChannelPrivacy>(9, 'privacy', $pb.PbFieldType.OE,
        defaultOrMaker: ChannelPrivacy.CHANNEL_UNKNOWN_AB,
        valueOf: ChannelPrivacy.valueOf,
        enumValues: ChannelPrivacy.values)
    ..aOS(16, 'about')
    ..aOS(17, 'inviteLinkHash')
    ..a<$core.int>(19, 'messageSeq', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(21, 'syncTimeMs', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<Message>(25, 'lastMessage', subBuilder: Message.create)
    ..aOM<Message>(26, 'pinnedMessage', subBuilder: Message.create)
    ..a<$core.int>(36, 'createdTime', $pb.PbFieldType.OU3)
    ..a<$core.int>(38, 'isDeleted', $pb.PbFieldType.OU3)
    ..a<$core.int>(39, 'isBanned', $pb.PbFieldType.OU3)
    ..aInt64(40, 'avatarCount')
    ..aOM<ChannelCounts>(41, 'counts', subBuilder: ChannelCounts.create)
    ..aOM<ChannelOwnerNotification>(90, 'notificationSetting',
        subBuilder: ChannelOwnerNotification.create)
    ..aOM<FileMsg>(100, 'avatar', subBuilder: FileMsg.create)
    ..aOB(101, 'isProfileChannel')
    ..hasRequiredFields = false;

  Channel._() : super();
  factory Channel() => create();
  factory Channel.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Channel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Channel clone() => Channel()..mergeFromMessage(this);
  Channel copyWith(void Function(Channel) updates) =>
      super.copyWith((message) => updates(message as Channel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Channel create() => Channel._();
  Channel createEmptyInstance() => create();
  static $pb.PbList<Channel> createRepeated() => $pb.PbList<Channel>();
  @$core.pragma('dart2js:noInline')
  static Channel getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Channel>(create);
  static Channel _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cid => $_getIZ(0);
  @$pb.TagNumber(1)
  set cid($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get channelName => $_getSZ(2);
  @$pb.TagNumber(3)
  set channelName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasChannelName() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannelName() => clearField(3);

  @$pb.TagNumber(6)
  $core.bool get isVerified => $_getBF(3);
  @$pb.TagNumber(6)
  set isVerified($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsVerified() => $_has(3);
  @$pb.TagNumber(6)
  void clearIsVerified() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get creatorProfileCid => $_getIZ(4);
  @$pb.TagNumber(7)
  set creatorProfileCid($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCreatorProfileCid() => $_has(4);
  @$pb.TagNumber(7)
  void clearCreatorProfileCid() => clearField(7);

  @$pb.TagNumber(9)
  ChannelPrivacy get privacy => $_getN(5);
  @$pb.TagNumber(9)
  set privacy(ChannelPrivacy v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasPrivacy() => $_has(5);
  @$pb.TagNumber(9)
  void clearPrivacy() => clearField(9);

  @$pb.TagNumber(16)
  $core.String get about => $_getSZ(6);
  @$pb.TagNumber(16)
  set about($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasAbout() => $_has(6);
  @$pb.TagNumber(16)
  void clearAbout() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get inviteLinkHash => $_getSZ(7);
  @$pb.TagNumber(17)
  set inviteLinkHash($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasInviteLinkHash() => $_has(7);
  @$pb.TagNumber(17)
  void clearInviteLinkHash() => clearField(17);

  @$pb.TagNumber(19)
  $core.int get messageSeq => $_getIZ(8);
  @$pb.TagNumber(19)
  set messageSeq($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasMessageSeq() => $_has(8);
  @$pb.TagNumber(19)
  void clearMessageSeq() => clearField(19);

  @$pb.TagNumber(21)
  $fixnum.Int64 get syncTimeMs => $_getI64(9);
  @$pb.TagNumber(21)
  set syncTimeMs($fixnum.Int64 v) {
    $_setInt64(9, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasSyncTimeMs() => $_has(9);
  @$pb.TagNumber(21)
  void clearSyncTimeMs() => clearField(21);

  @$pb.TagNumber(25)
  Message get lastMessage => $_getN(10);
  @$pb.TagNumber(25)
  set lastMessage(Message v) {
    setField(25, v);
  }

  @$pb.TagNumber(25)
  $core.bool hasLastMessage() => $_has(10);
  @$pb.TagNumber(25)
  void clearLastMessage() => clearField(25);
  @$pb.TagNumber(25)
  Message ensureLastMessage() => $_ensure(10);

  @$pb.TagNumber(26)
  Message get pinnedMessage => $_getN(11);
  @$pb.TagNumber(26)
  set pinnedMessage(Message v) {
    setField(26, v);
  }

  @$pb.TagNumber(26)
  $core.bool hasPinnedMessage() => $_has(11);
  @$pb.TagNumber(26)
  void clearPinnedMessage() => clearField(26);
  @$pb.TagNumber(26)
  Message ensurePinnedMessage() => $_ensure(11);

  @$pb.TagNumber(36)
  $core.int get createdTime => $_getIZ(12);
  @$pb.TagNumber(36)
  set createdTime($core.int v) {
    $_setUnsignedInt32(12, v);
  }

  @$pb.TagNumber(36)
  $core.bool hasCreatedTime() => $_has(12);
  @$pb.TagNumber(36)
  void clearCreatedTime() => clearField(36);

  @$pb.TagNumber(38)
  $core.int get isDeleted => $_getIZ(13);
  @$pb.TagNumber(38)
  set isDeleted($core.int v) {
    $_setUnsignedInt32(13, v);
  }

  @$pb.TagNumber(38)
  $core.bool hasIsDeleted() => $_has(13);
  @$pb.TagNumber(38)
  void clearIsDeleted() => clearField(38);

  @$pb.TagNumber(39)
  $core.int get isBanned => $_getIZ(14);
  @$pb.TagNumber(39)
  set isBanned($core.int v) {
    $_setUnsignedInt32(14, v);
  }

  @$pb.TagNumber(39)
  $core.bool hasIsBanned() => $_has(14);
  @$pb.TagNumber(39)
  void clearIsBanned() => clearField(39);

  @$pb.TagNumber(40)
  $fixnum.Int64 get avatarCount => $_getI64(15);
  @$pb.TagNumber(40)
  set avatarCount($fixnum.Int64 v) {
    $_setInt64(15, v);
  }

  @$pb.TagNumber(40)
  $core.bool hasAvatarCount() => $_has(15);
  @$pb.TagNumber(40)
  void clearAvatarCount() => clearField(40);

  @$pb.TagNumber(41)
  ChannelCounts get counts => $_getN(16);
  @$pb.TagNumber(41)
  set counts(ChannelCounts v) {
    setField(41, v);
  }

  @$pb.TagNumber(41)
  $core.bool hasCounts() => $_has(16);
  @$pb.TagNumber(41)
  void clearCounts() => clearField(41);
  @$pb.TagNumber(41)
  ChannelCounts ensureCounts() => $_ensure(16);

  @$pb.TagNumber(90)
  ChannelOwnerNotification get notificationSetting => $_getN(17);
  @$pb.TagNumber(90)
  set notificationSetting(ChannelOwnerNotification v) {
    setField(90, v);
  }

  @$pb.TagNumber(90)
  $core.bool hasNotificationSetting() => $_has(17);
  @$pb.TagNumber(90)
  void clearNotificationSetting() => clearField(90);
  @$pb.TagNumber(90)
  ChannelOwnerNotification ensureNotificationSetting() => $_ensure(17);

  @$pb.TagNumber(100)
  FileMsg get avatar => $_getN(18);
  @$pb.TagNumber(100)
  set avatar(FileMsg v) {
    setField(100, v);
  }

  @$pb.TagNumber(100)
  $core.bool hasAvatar() => $_has(18);
  @$pb.TagNumber(100)
  void clearAvatar() => clearField(100);
  @$pb.TagNumber(100)
  FileMsg ensureAvatar() => $_ensure(18);

  @$pb.TagNumber(101)
  $core.bool get isProfileChannel => $_getBF(19);
  @$pb.TagNumber(101)
  set isProfileChannel($core.bool v) {
    $_setBool(19, v);
  }

  @$pb.TagNumber(101)
  $core.bool hasIsProfileChannel() => $_has(19);
  @$pb.TagNumber(101)
  void clearIsProfileChannel() => clearField(101);
}

class ChannelOwnerNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelOwnerNotification',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  ChannelOwnerNotification._() : super();
  factory ChannelOwnerNotification() => create();
  factory ChannelOwnerNotification.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelOwnerNotification.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelOwnerNotification clone() =>
      ChannelOwnerNotification()..mergeFromMessage(this);
  ChannelOwnerNotification copyWith(
          void Function(ChannelOwnerNotification) updates) =>
      super.copyWith((message) => updates(message as ChannelOwnerNotification));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelOwnerNotification create() => ChannelOwnerNotification._();
  ChannelOwnerNotification createEmptyInstance() => create();
  static $pb.PbList<ChannelOwnerNotification> createRepeated() =>
      $pb.PbList<ChannelOwnerNotification>();
  @$core.pragma('dart2js:noInline')
  static ChannelOwnerNotification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChannelOwnerNotification>(create);
  static ChannelOwnerNotification _defaultInstance;
}

class ChannelCounts extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelCounts',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(20, 'followersCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(22, 'postsCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(23, 'mediaCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(24, 'photoCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(25, 'videoCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(26, 'gifCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(27, 'audioCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(28, 'voiceCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(29, 'fileCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(30, 'linkCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(31, 'boardCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(32, 'pinedCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(33, 'likesCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(34, 'resharedCount', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  ChannelCounts._() : super();
  factory ChannelCounts() => create();
  factory ChannelCounts.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelCounts.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelCounts clone() => ChannelCounts()..mergeFromMessage(this);
  ChannelCounts copyWith(void Function(ChannelCounts) updates) =>
      super.copyWith((message) => updates(message as ChannelCounts));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelCounts create() => ChannelCounts._();
  ChannelCounts createEmptyInstance() => create();
  static $pb.PbList<ChannelCounts> createRepeated() =>
      $pb.PbList<ChannelCounts>();
  @$core.pragma('dart2js:noInline')
  static ChannelCounts getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChannelCounts>(create);
  static ChannelCounts _defaultInstance;

  @$pb.TagNumber(20)
  $core.int get followersCount => $_getIZ(0);
  @$pb.TagNumber(20)
  set followersCount($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasFollowersCount() => $_has(0);
  @$pb.TagNumber(20)
  void clearFollowersCount() => clearField(20);

  @$pb.TagNumber(22)
  $core.int get postsCount => $_getIZ(1);
  @$pb.TagNumber(22)
  set postsCount($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(22)
  $core.bool hasPostsCount() => $_has(1);
  @$pb.TagNumber(22)
  void clearPostsCount() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get mediaCount => $_getIZ(2);
  @$pb.TagNumber(23)
  set mediaCount($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(23)
  $core.bool hasMediaCount() => $_has(2);
  @$pb.TagNumber(23)
  void clearMediaCount() => clearField(23);

  @$pb.TagNumber(24)
  $core.int get photoCount => $_getIZ(3);
  @$pb.TagNumber(24)
  set photoCount($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(24)
  $core.bool hasPhotoCount() => $_has(3);
  @$pb.TagNumber(24)
  void clearPhotoCount() => clearField(24);

  @$pb.TagNumber(25)
  $core.int get videoCount => $_getIZ(4);
  @$pb.TagNumber(25)
  set videoCount($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(25)
  $core.bool hasVideoCount() => $_has(4);
  @$pb.TagNumber(25)
  void clearVideoCount() => clearField(25);

  @$pb.TagNumber(26)
  $core.int get gifCount => $_getIZ(5);
  @$pb.TagNumber(26)
  set gifCount($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(26)
  $core.bool hasGifCount() => $_has(5);
  @$pb.TagNumber(26)
  void clearGifCount() => clearField(26);

  @$pb.TagNumber(27)
  $core.int get audioCount => $_getIZ(6);
  @$pb.TagNumber(27)
  set audioCount($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(27)
  $core.bool hasAudioCount() => $_has(6);
  @$pb.TagNumber(27)
  void clearAudioCount() => clearField(27);

  @$pb.TagNumber(28)
  $core.int get voiceCount => $_getIZ(7);
  @$pb.TagNumber(28)
  set voiceCount($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(28)
  $core.bool hasVoiceCount() => $_has(7);
  @$pb.TagNumber(28)
  void clearVoiceCount() => clearField(28);

  @$pb.TagNumber(29)
  $core.int get fileCount => $_getIZ(8);
  @$pb.TagNumber(29)
  set fileCount($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  @$pb.TagNumber(29)
  $core.bool hasFileCount() => $_has(8);
  @$pb.TagNumber(29)
  void clearFileCount() => clearField(29);

  @$pb.TagNumber(30)
  $core.int get linkCount => $_getIZ(9);
  @$pb.TagNumber(30)
  set linkCount($core.int v) {
    $_setUnsignedInt32(9, v);
  }

  @$pb.TagNumber(30)
  $core.bool hasLinkCount() => $_has(9);
  @$pb.TagNumber(30)
  void clearLinkCount() => clearField(30);

  @$pb.TagNumber(31)
  $core.int get boardCount => $_getIZ(10);
  @$pb.TagNumber(31)
  set boardCount($core.int v) {
    $_setUnsignedInt32(10, v);
  }

  @$pb.TagNumber(31)
  $core.bool hasBoardCount() => $_has(10);
  @$pb.TagNumber(31)
  void clearBoardCount() => clearField(31);

  @$pb.TagNumber(32)
  $core.int get pinedCount => $_getIZ(11);
  @$pb.TagNumber(32)
  set pinedCount($core.int v) {
    $_setUnsignedInt32(11, v);
  }

  @$pb.TagNumber(32)
  $core.bool hasPinedCount() => $_has(11);
  @$pb.TagNumber(32)
  void clearPinedCount() => clearField(32);

  @$pb.TagNumber(33)
  $core.int get likesCount => $_getIZ(12);
  @$pb.TagNumber(33)
  set likesCount($core.int v) {
    $_setUnsignedInt32(12, v);
  }

  @$pb.TagNumber(33)
  $core.bool hasLikesCount() => $_has(12);
  @$pb.TagNumber(33)
  void clearLikesCount() => clearField(33);

  @$pb.TagNumber(34)
  $core.int get resharedCount => $_getIZ(13);
  @$pb.TagNumber(34)
  set resharedCount($core.int v) {
    $_setUnsignedInt32(13, v);
  }

  @$pb.TagNumber(34)
  $core.bool hasResharedCount() => $_has(13);
  @$pb.TagNumber(34)
  void clearResharedCount() => clearField(34);
}

class ShoppingProfile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShoppingProfile',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  ShoppingProfile._() : super();
  factory ShoppingProfile() => create();
  factory ShoppingProfile.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ShoppingProfile.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ShoppingProfile clone() => ShoppingProfile()..mergeFromMessage(this);
  ShoppingProfile copyWith(void Function(ShoppingProfile) updates) =>
      super.copyWith((message) => updates(message as ShoppingProfile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShoppingProfile create() => ShoppingProfile._();
  ShoppingProfile createEmptyInstance() => create();
  static $pb.PbList<ShoppingProfile> createRepeated() =>
      $pb.PbList<ShoppingProfile>();
  @$core.pragma('dart2js:noInline')
  static ShoppingProfile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShoppingProfile>(create);
  static ShoppingProfile _defaultInstance;
}

class Store extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Store',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cid', $pb.PbFieldType.OU3)
    ..aOS(2, 'userName')
    ..aOS(3, 'storeName')
    ..aOB(6, 'isVerified')
    ..a<$core.int>(7, 'creatorUserCid', $pb.PbFieldType.OU3)
    ..aOS(16, 'about')
    ..a<$core.int>(19, 'messageSeq', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(21, 'syncTimeMs', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(36, 'createdTime', $pb.PbFieldType.OU3)
    ..a<$core.int>(39, 'isBanned', $pb.PbFieldType.OU3)
    ..aOM<FileMsg>(100, 'avatar', subBuilder: FileMsg.create)
    ..aOS(102, 'address')
    ..hasRequiredFields = false;

  Store._() : super();
  factory Store() => create();
  factory Store.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Store.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Store clone() => Store()..mergeFromMessage(this);
  Store copyWith(void Function(Store) updates) =>
      super.copyWith((message) => updates(message as Store));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Store create() => Store._();
  Store createEmptyInstance() => create();
  static $pb.PbList<Store> createRepeated() => $pb.PbList<Store>();
  @$core.pragma('dart2js:noInline')
  static Store getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Store>(create);
  static Store _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cid => $_getIZ(0);
  @$pb.TagNumber(1)
  set cid($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get storeName => $_getSZ(2);
  @$pb.TagNumber(3)
  set storeName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStoreName() => $_has(2);
  @$pb.TagNumber(3)
  void clearStoreName() => clearField(3);

  @$pb.TagNumber(6)
  $core.bool get isVerified => $_getBF(3);
  @$pb.TagNumber(6)
  set isVerified($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsVerified() => $_has(3);
  @$pb.TagNumber(6)
  void clearIsVerified() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get creatorUserCid => $_getIZ(4);
  @$pb.TagNumber(7)
  set creatorUserCid($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCreatorUserCid() => $_has(4);
  @$pb.TagNumber(7)
  void clearCreatorUserCid() => clearField(7);

  @$pb.TagNumber(16)
  $core.String get about => $_getSZ(5);
  @$pb.TagNumber(16)
  set about($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasAbout() => $_has(5);
  @$pb.TagNumber(16)
  void clearAbout() => clearField(16);

  @$pb.TagNumber(19)
  $core.int get messageSeq => $_getIZ(6);
  @$pb.TagNumber(19)
  set messageSeq($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasMessageSeq() => $_has(6);
  @$pb.TagNumber(19)
  void clearMessageSeq() => clearField(19);

  @$pb.TagNumber(21)
  $fixnum.Int64 get syncTimeMs => $_getI64(7);
  @$pb.TagNumber(21)
  set syncTimeMs($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasSyncTimeMs() => $_has(7);
  @$pb.TagNumber(21)
  void clearSyncTimeMs() => clearField(21);

  @$pb.TagNumber(36)
  $core.int get createdTime => $_getIZ(8);
  @$pb.TagNumber(36)
  set createdTime($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  @$pb.TagNumber(36)
  $core.bool hasCreatedTime() => $_has(8);
  @$pb.TagNumber(36)
  void clearCreatedTime() => clearField(36);

  @$pb.TagNumber(39)
  $core.int get isBanned => $_getIZ(9);
  @$pb.TagNumber(39)
  set isBanned($core.int v) {
    $_setUnsignedInt32(9, v);
  }

  @$pb.TagNumber(39)
  $core.bool hasIsBanned() => $_has(9);
  @$pb.TagNumber(39)
  void clearIsBanned() => clearField(39);

  @$pb.TagNumber(100)
  FileMsg get avatar => $_getN(10);
  @$pb.TagNumber(100)
  set avatar(FileMsg v) {
    setField(100, v);
  }

  @$pb.TagNumber(100)
  $core.bool hasAvatar() => $_has(10);
  @$pb.TagNumber(100)
  void clearAvatar() => clearField(100);
  @$pb.TagNumber(100)
  FileMsg ensureAvatar() => $_ensure(10);

  @$pb.TagNumber(102)
  $core.String get address => $_getSZ(11);
  @$pb.TagNumber(102)
  set address($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(102)
  $core.bool hasAddress() => $_has(11);
  @$pb.TagNumber(102)
  void clearAddress() => clearField(102);
}

class Product extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Product',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'productId', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'feeRate', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'salesCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'price', $pb.PbFieldType.OU3)
    ..aOS(50, 'category')
    ..aOS(51, 'brand')
    ..a<$core.int>(53, 'categoryId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  Product._() : super();
  factory Product() => create();
  factory Product.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Product.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Product clone() => Product()..mergeFromMessage(this);
  Product copyWith(void Function(Product) updates) =>
      super.copyWith((message) => updates(message as Product));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Product create() => Product._();
  Product createEmptyInstance() => create();
  static $pb.PbList<Product> createRepeated() => $pb.PbList<Product>();
  @$core.pragma('dart2js:noInline')
  static Product getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Product>(create);
  static Product _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get productId => $_getIZ(0);
  @$pb.TagNumber(1)
  set productId($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProductId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProductId() => clearField(1);

  @$pb.TagNumber(3)
  $core.int get feeRate => $_getIZ(1);
  @$pb.TagNumber(3)
  set feeRate($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFeeRate() => $_has(1);
  @$pb.TagNumber(3)
  void clearFeeRate() => clearField(3);

  @$pb.TagNumber(5)
  $core.int get salesCount => $_getIZ(2);
  @$pb.TagNumber(5)
  set salesCount($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSalesCount() => $_has(2);
  @$pb.TagNumber(5)
  void clearSalesCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get price => $_getIZ(3);
  @$pb.TagNumber(6)
  set price($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(6)
  void clearPrice() => clearField(6);

  @$pb.TagNumber(50)
  $core.String get category => $_getSZ(4);
  @$pb.TagNumber(50)
  set category($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(50)
  $core.bool hasCategory() => $_has(4);
  @$pb.TagNumber(50)
  void clearCategory() => clearField(50);

  @$pb.TagNumber(51)
  $core.String get brand => $_getSZ(5);
  @$pb.TagNumber(51)
  set brand($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(51)
  $core.bool hasBrand() => $_has(5);
  @$pb.TagNumber(51)
  void clearBrand() => clearField(51);

  @$pb.TagNumber(53)
  $core.int get categoryId => $_getIZ(6);
  @$pb.TagNumber(53)
  set categoryId($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(53)
  $core.bool hasCategoryId() => $_has(6);
  @$pb.TagNumber(53)
  void clearCategoryId() => clearField(53);
}

class ProductPriceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProductPriceInfo',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'price', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'rate', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'discountPrice', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  ProductPriceInfo._() : super();
  factory ProductPriceInfo() => create();
  factory ProductPriceInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ProductPriceInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ProductPriceInfo clone() => ProductPriceInfo()..mergeFromMessage(this);
  ProductPriceInfo copyWith(void Function(ProductPriceInfo) updates) =>
      super.copyWith((message) => updates(message as ProductPriceInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProductPriceInfo create() => ProductPriceInfo._();
  ProductPriceInfo createEmptyInstance() => create();
  static $pb.PbList<ProductPriceInfo> createRepeated() =>
      $pb.PbList<ProductPriceInfo>();
  @$core.pragma('dart2js:noInline')
  static ProductPriceInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProductPriceInfo>(create);
  static ProductPriceInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get price => $_getIZ(0);
  @$pb.TagNumber(1)
  set price($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPrice() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrice() => clearField(1);

  @$pb.TagNumber(3)
  $core.int get rate => $_getIZ(1);
  @$pb.TagNumber(3)
  set rate($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRate() => $_has(1);
  @$pb.TagNumber(3)
  void clearRate() => clearField(3);

  @$pb.TagNumber(6)
  $core.int get discountPrice => $_getIZ(2);
  @$pb.TagNumber(6)
  set discountPrice($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDiscountPrice() => $_has(2);
  @$pb.TagNumber(6)
  void clearDiscountPrice() => clearField(6);
}

class SavedChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SavedChannel',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cid', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, 'creatorProfileCid', $pb.PbFieldType.OU3)
    ..a<$core.int>(19, 'messageSeq', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(21, 'syncTimeMs', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<Message>(25, 'lastMessage', subBuilder: Message.create)
    ..a<$core.int>(36, 'createdTime', $pb.PbFieldType.OU3)
    ..aOM<ChannelCounts>(41, 'counts', subBuilder: ChannelCounts.create)
    ..hasRequiredFields = false;

  SavedChannel._() : super();
  factory SavedChannel() => create();
  factory SavedChannel.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SavedChannel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SavedChannel clone() => SavedChannel()..mergeFromMessage(this);
  SavedChannel copyWith(void Function(SavedChannel) updates) =>
      super.copyWith((message) => updates(message as SavedChannel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SavedChannel create() => SavedChannel._();
  SavedChannel createEmptyInstance() => create();
  static $pb.PbList<SavedChannel> createRepeated() =>
      $pb.PbList<SavedChannel>();
  @$core.pragma('dart2js:noInline')
  static SavedChannel getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SavedChannel>(create);
  static SavedChannel _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cid => $_getIZ(0);
  @$pb.TagNumber(1)
  set cid($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCid() => clearField(1);

  @$pb.TagNumber(7)
  $core.int get creatorProfileCid => $_getIZ(1);
  @$pb.TagNumber(7)
  set creatorProfileCid($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCreatorProfileCid() => $_has(1);
  @$pb.TagNumber(7)
  void clearCreatorProfileCid() => clearField(7);

  @$pb.TagNumber(19)
  $core.int get messageSeq => $_getIZ(2);
  @$pb.TagNumber(19)
  set messageSeq($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasMessageSeq() => $_has(2);
  @$pb.TagNumber(19)
  void clearMessageSeq() => clearField(19);

  @$pb.TagNumber(21)
  $fixnum.Int64 get syncTimeMs => $_getI64(3);
  @$pb.TagNumber(21)
  set syncTimeMs($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasSyncTimeMs() => $_has(3);
  @$pb.TagNumber(21)
  void clearSyncTimeMs() => clearField(21);

  @$pb.TagNumber(25)
  Message get lastMessage => $_getN(4);
  @$pb.TagNumber(25)
  set lastMessage(Message v) {
    setField(25, v);
  }

  @$pb.TagNumber(25)
  $core.bool hasLastMessage() => $_has(4);
  @$pb.TagNumber(25)
  void clearLastMessage() => clearField(25);
  @$pb.TagNumber(25)
  Message ensureLastMessage() => $_ensure(4);

  @$pb.TagNumber(36)
  $core.int get createdTime => $_getIZ(5);
  @$pb.TagNumber(36)
  set createdTime($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(36)
  $core.bool hasCreatedTime() => $_has(5);
  @$pb.TagNumber(36)
  void clearCreatedTime() => clearField(36);

  @$pb.TagNumber(41)
  ChannelCounts get counts => $_getN(6);
  @$pb.TagNumber(41)
  set counts(ChannelCounts v) {
    setField(41, v);
  }

  @$pb.TagNumber(41)
  $core.bool hasCounts() => $_has(6);
  @$pb.TagNumber(41)
  void clearCounts() => clearField(41);
  @$pb.TagNumber(41)
  ChannelCounts ensureCounts() => $_ensure(6);
}

class Group extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Group',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cid', $pb.PbFieldType.OU3)
    ..aOS(3, 'groupTitle')
    ..aOS(4, 'userName')
    ..a<$core.int>(7, 'creatorProfileCid', $pb.PbFieldType.OU3)
    ..aOB(8, 'historyViewable')
    ..aOB(9, 'isOpenGroup')
    ..a<$core.int>(10, 'seq', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, 'avatarCount', $pb.PbFieldType.OU3)
    ..aOS(15, 'about')
    ..aOS(16, 'inviteLinkHash')
    ..a<$core.int>(17, 'membersCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(18, 'adminsCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(19, 'moderatorCounts', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(20, 'sortTime', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(21, 'createdTime', $pb.PbFieldType.OU3)
    ..aOB(23, 'isDeleted')
    ..aOB(24, 'isBanned')
    ..aOM<Message>(25, 'lastMessage', subBuilder: Message.create)
    ..aOM<Message>(26, 'pinnedMessage', subBuilder: Message.create)
    ..aOM<FileMsg>(27, 'avatar', subBuilder: FileMsg.create)
    ..a<$fixnum.Int64>(40, 'syncTime', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  Group._() : super();
  factory Group() => create();
  factory Group.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Group.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Group clone() => Group()..mergeFromMessage(this);
  Group copyWith(void Function(Group) updates) =>
      super.copyWith((message) => updates(message as Group));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Group create() => Group._();
  Group createEmptyInstance() => create();
  static $pb.PbList<Group> createRepeated() => $pb.PbList<Group>();
  @$core.pragma('dart2js:noInline')
  static Group getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Group>(create);
  static Group _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cid => $_getIZ(0);
  @$pb.TagNumber(1)
  set cid($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCid() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get groupTitle => $_getSZ(1);
  @$pb.TagNumber(3)
  set groupTitle($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasGroupTitle() => $_has(1);
  @$pb.TagNumber(3)
  void clearGroupTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get userName => $_getSZ(2);
  @$pb.TagNumber(4)
  set userName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUserName() => $_has(2);
  @$pb.TagNumber(4)
  void clearUserName() => clearField(4);

  @$pb.TagNumber(7)
  $core.int get creatorProfileCid => $_getIZ(3);
  @$pb.TagNumber(7)
  set creatorProfileCid($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCreatorProfileCid() => $_has(3);
  @$pb.TagNumber(7)
  void clearCreatorProfileCid() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get historyViewable => $_getBF(4);
  @$pb.TagNumber(8)
  set historyViewable($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasHistoryViewable() => $_has(4);
  @$pb.TagNumber(8)
  void clearHistoryViewable() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get isOpenGroup => $_getBF(5);
  @$pb.TagNumber(9)
  set isOpenGroup($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasIsOpenGroup() => $_has(5);
  @$pb.TagNumber(9)
  void clearIsOpenGroup() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get seq => $_getIZ(6);
  @$pb.TagNumber(10)
  set seq($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasSeq() => $_has(6);
  @$pb.TagNumber(10)
  void clearSeq() => clearField(10);

  @$pb.TagNumber(14)
  $core.int get avatarCount => $_getIZ(7);
  @$pb.TagNumber(14)
  set avatarCount($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasAvatarCount() => $_has(7);
  @$pb.TagNumber(14)
  void clearAvatarCount() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get about => $_getSZ(8);
  @$pb.TagNumber(15)
  set about($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasAbout() => $_has(8);
  @$pb.TagNumber(15)
  void clearAbout() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get inviteLinkHash => $_getSZ(9);
  @$pb.TagNumber(16)
  set inviteLinkHash($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasInviteLinkHash() => $_has(9);
  @$pb.TagNumber(16)
  void clearInviteLinkHash() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get membersCount => $_getIZ(10);
  @$pb.TagNumber(17)
  set membersCount($core.int v) {
    $_setUnsignedInt32(10, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasMembersCount() => $_has(10);
  @$pb.TagNumber(17)
  void clearMembersCount() => clearField(17);

  @$pb.TagNumber(18)
  $core.int get adminsCount => $_getIZ(11);
  @$pb.TagNumber(18)
  set adminsCount($core.int v) {
    $_setUnsignedInt32(11, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasAdminsCount() => $_has(11);
  @$pb.TagNumber(18)
  void clearAdminsCount() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get moderatorCounts => $_getIZ(12);
  @$pb.TagNumber(19)
  set moderatorCounts($core.int v) {
    $_setUnsignedInt32(12, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasModeratorCounts() => $_has(12);
  @$pb.TagNumber(19)
  void clearModeratorCounts() => clearField(19);

  @$pb.TagNumber(20)
  $fixnum.Int64 get sortTime => $_getI64(13);
  @$pb.TagNumber(20)
  set sortTime($fixnum.Int64 v) {
    $_setInt64(13, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasSortTime() => $_has(13);
  @$pb.TagNumber(20)
  void clearSortTime() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get createdTime => $_getIZ(14);
  @$pb.TagNumber(21)
  set createdTime($core.int v) {
    $_setUnsignedInt32(14, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasCreatedTime() => $_has(14);
  @$pb.TagNumber(21)
  void clearCreatedTime() => clearField(21);

  @$pb.TagNumber(23)
  $core.bool get isDeleted => $_getBF(15);
  @$pb.TagNumber(23)
  set isDeleted($core.bool v) {
    $_setBool(15, v);
  }

  @$pb.TagNumber(23)
  $core.bool hasIsDeleted() => $_has(15);
  @$pb.TagNumber(23)
  void clearIsDeleted() => clearField(23);

  @$pb.TagNumber(24)
  $core.bool get isBanned => $_getBF(16);
  @$pb.TagNumber(24)
  set isBanned($core.bool v) {
    $_setBool(16, v);
  }

  @$pb.TagNumber(24)
  $core.bool hasIsBanned() => $_has(16);
  @$pb.TagNumber(24)
  void clearIsBanned() => clearField(24);

  @$pb.TagNumber(25)
  Message get lastMessage => $_getN(17);
  @$pb.TagNumber(25)
  set lastMessage(Message v) {
    setField(25, v);
  }

  @$pb.TagNumber(25)
  $core.bool hasLastMessage() => $_has(17);
  @$pb.TagNumber(25)
  void clearLastMessage() => clearField(25);
  @$pb.TagNumber(25)
  Message ensureLastMessage() => $_ensure(17);

  @$pb.TagNumber(26)
  Message get pinnedMessage => $_getN(18);
  @$pb.TagNumber(26)
  set pinnedMessage(Message v) {
    setField(26, v);
  }

  @$pb.TagNumber(26)
  $core.bool hasPinnedMessage() => $_has(18);
  @$pb.TagNumber(26)
  void clearPinnedMessage() => clearField(26);
  @$pb.TagNumber(26)
  Message ensurePinnedMessage() => $_ensure(18);

  @$pb.TagNumber(27)
  FileMsg get avatar => $_getN(19);
  @$pb.TagNumber(27)
  set avatar(FileMsg v) {
    setField(27, v);
  }

  @$pb.TagNumber(27)
  $core.bool hasAvatar() => $_has(19);
  @$pb.TagNumber(27)
  void clearAvatar() => clearField(27);
  @$pb.TagNumber(27)
  FileMsg ensureAvatar() => $_ensure(19);

  @$pb.TagNumber(40)
  $fixnum.Int64 get syncTime => $_getI64(20);
  @$pb.TagNumber(40)
  set syncTime($fixnum.Int64 v) {
    $_setInt64(20, v);
  }

  @$pb.TagNumber(40)
  $core.bool hasSyncTime() => $_has(20);
  @$pb.TagNumber(40)
  void clearSyncTime() => clearField(40);
}

class GroupCounts extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GroupCounts',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(23, 'mediaCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(24, 'photoCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(25, 'videoCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(26, 'gifCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(27, 'audioCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(28, 'voiceCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(29, 'fileCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(30, 'linkCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(32, 'pinedCount', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  GroupCounts._() : super();
  factory GroupCounts() => create();
  factory GroupCounts.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GroupCounts.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GroupCounts clone() => GroupCounts()..mergeFromMessage(this);
  GroupCounts copyWith(void Function(GroupCounts) updates) =>
      super.copyWith((message) => updates(message as GroupCounts));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupCounts create() => GroupCounts._();
  GroupCounts createEmptyInstance() => create();
  static $pb.PbList<GroupCounts> createRepeated() => $pb.PbList<GroupCounts>();
  @$core.pragma('dart2js:noInline')
  static GroupCounts getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupCounts>(create);
  static GroupCounts _defaultInstance;

  @$pb.TagNumber(23)
  $core.int get mediaCount => $_getIZ(0);
  @$pb.TagNumber(23)
  set mediaCount($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(23)
  $core.bool hasMediaCount() => $_has(0);
  @$pb.TagNumber(23)
  void clearMediaCount() => clearField(23);

  @$pb.TagNumber(24)
  $core.int get photoCount => $_getIZ(1);
  @$pb.TagNumber(24)
  set photoCount($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(24)
  $core.bool hasPhotoCount() => $_has(1);
  @$pb.TagNumber(24)
  void clearPhotoCount() => clearField(24);

  @$pb.TagNumber(25)
  $core.int get videoCount => $_getIZ(2);
  @$pb.TagNumber(25)
  set videoCount($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(25)
  $core.bool hasVideoCount() => $_has(2);
  @$pb.TagNumber(25)
  void clearVideoCount() => clearField(25);

  @$pb.TagNumber(26)
  $core.int get gifCount => $_getIZ(3);
  @$pb.TagNumber(26)
  set gifCount($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(26)
  $core.bool hasGifCount() => $_has(3);
  @$pb.TagNumber(26)
  void clearGifCount() => clearField(26);

  @$pb.TagNumber(27)
  $core.int get audioCount => $_getIZ(4);
  @$pb.TagNumber(27)
  set audioCount($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(27)
  $core.bool hasAudioCount() => $_has(4);
  @$pb.TagNumber(27)
  void clearAudioCount() => clearField(27);

  @$pb.TagNumber(28)
  $core.int get voiceCount => $_getIZ(5);
  @$pb.TagNumber(28)
  set voiceCount($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(28)
  $core.bool hasVoiceCount() => $_has(5);
  @$pb.TagNumber(28)
  void clearVoiceCount() => clearField(28);

  @$pb.TagNumber(29)
  $core.int get fileCount => $_getIZ(6);
  @$pb.TagNumber(29)
  set fileCount($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(29)
  $core.bool hasFileCount() => $_has(6);
  @$pb.TagNumber(29)
  void clearFileCount() => clearField(29);

  @$pb.TagNumber(30)
  $core.int get linkCount => $_getIZ(7);
  @$pb.TagNumber(30)
  set linkCount($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(30)
  $core.bool hasLinkCount() => $_has(7);
  @$pb.TagNumber(30)
  void clearLinkCount() => clearField(30);

  @$pb.TagNumber(32)
  $core.int get pinedCount => $_getIZ(8);
  @$pb.TagNumber(32)
  set pinedCount($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  @$pb.TagNumber(32)
  $core.bool hasPinedCount() => $_has(8);
  @$pb.TagNumber(32)
  void clearPinedCount() => clearField(32);
}

class GroupMember extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GroupMember',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aInt64(1, 'gid')
    ..aInt64(2, 'groupCid')
    ..a<$core.int>(3, 'profileCid', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'byProfileCid', $pb.PbFieldType.OU3)
    ..aOB(5, 'isModerator')
    ..a<$core.int>(6, 'createdTime', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  GroupMember._() : super();
  factory GroupMember() => create();
  factory GroupMember.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GroupMember.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GroupMember clone() => GroupMember()..mergeFromMessage(this);
  GroupMember copyWith(void Function(GroupMember) updates) =>
      super.copyWith((message) => updates(message as GroupMember));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupMember create() => GroupMember._();
  GroupMember createEmptyInstance() => create();
  static $pb.PbList<GroupMember> createRepeated() => $pb.PbList<GroupMember>();
  @$core.pragma('dart2js:noInline')
  static GroupMember getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupMember>(create);
  static GroupMember _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gid => $_getI64(0);
  @$pb.TagNumber(1)
  set gid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupCid => $_getI64(1);
  @$pb.TagNumber(2)
  set groupCid($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGroupCid() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupCid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get profileCid => $_getIZ(2);
  @$pb.TagNumber(3)
  set profileCid($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasProfileCid() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfileCid() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get byProfileCid => $_getIZ(3);
  @$pb.TagNumber(4)
  set byProfileCid($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasByProfileCid() => $_has(3);
  @$pb.TagNumber(4)
  void clearByProfileCid() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isModerator => $_getBF(4);
  @$pb.TagNumber(5)
  set isModerator($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsModerator() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsModerator() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get createdTime => $_getIZ(5);
  @$pb.TagNumber(6)
  set createdTime($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCreatedTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedTime() => clearField(6);
}

class FileMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FileMsg',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'gid', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, 'accessHash', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'fileType', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'width', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'height', $pb.PbFieldType.OU3)
    ..aOS(6, 'extension')
    ..a<$core.int>(7, 'userCid', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(8, 'dataThumb', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(9, 'data', $pb.PbFieldType.OY)
    ..aOS(61, 'fullPath')
    ..hasRequiredFields = false;

  FileMsg._() : super();
  factory FileMsg() => create();
  factory FileMsg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FileMsg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FileMsg clone() => FileMsg()..mergeFromMessage(this);
  FileMsg copyWith(void Function(FileMsg) updates) =>
      super.copyWith((message) => updates(message as FileMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileMsg create() => FileMsg._();
  FileMsg createEmptyInstance() => create();
  static $pb.PbList<FileMsg> createRepeated() => $pb.PbList<FileMsg>();
  @$core.pragma('dart2js:noInline')
  static FileMsg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileMsg>(create);
  static FileMsg _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gid => $_getI64(0);
  @$pb.TagNumber(1)
  set gid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get accessHash => $_getIZ(1);
  @$pb.TagNumber(2)
  set accessHash($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAccessHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get fileType => $_getIZ(2);
  @$pb.TagNumber(3)
  set fileType($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFileType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get width => $_getIZ(3);
  @$pb.TagNumber(4)
  set width($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasWidth() => $_has(3);
  @$pb.TagNumber(4)
  void clearWidth() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get height => $_getIZ(4);
  @$pb.TagNumber(5)
  set height($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasHeight() => $_has(4);
  @$pb.TagNumber(5)
  void clearHeight() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get extension_6 => $_getSZ(5);
  @$pb.TagNumber(6)
  set extension_6($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasExtension_6() => $_has(5);
  @$pb.TagNumber(6)
  void clearExtension_6() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get userCid => $_getIZ(6);
  @$pb.TagNumber(7)
  set userCid($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasUserCid() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserCid() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get dataThumb => $_getN(7);
  @$pb.TagNumber(8)
  set dataThumb($core.List<$core.int> v) {
    $_setBytes(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasDataThumb() => $_has(7);
  @$pb.TagNumber(8)
  void clearDataThumb() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get data => $_getN(8);
  @$pb.TagNumber(9)
  set data($core.List<$core.int> v) {
    $_setBytes(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasData() => $_has(8);
  @$pb.TagNumber(9)
  void clearData() => clearField(9);

  @$pb.TagNumber(61)
  $core.String get fullPath => $_getSZ(9);
  @$pb.TagNumber(61)
  set fullPath($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(61)
  $core.bool hasFullPath() => $_has(9);
  @$pb.TagNumber(61)
  void clearFullPath() => clearField(61);
}

class Session extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Session',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'gid', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, 'sessionUuid')
    ..a<$core.int>(3, 'userCid', $pb.PbFieldType.OU3)
    ..aOS(4, 'lastIpAddress')
    ..a<$core.int>(5, 'apiVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'activeTime', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, 'createdTime', $pb.PbFieldType.OU3)
    ..aOS(8, 'userAgent')
    ..e<DevicePlatform>(9, 'platform', $pb.PbFieldType.OE,
        defaultOrMaker: DevicePlatform.UNKNOWN_PLATFORM,
        valueOf: DevicePlatform.valueOf,
        enumValues: DevicePlatform.values)
    ..a<$fixnum.Int64>(100, 'deviceId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  Session._() : super();
  factory Session() => create();
  factory Session.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Session.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Session clone() => Session()..mergeFromMessage(this);
  Session copyWith(void Function(Session) updates) =>
      super.copyWith((message) => updates(message as Session));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Session create() => Session._();
  Session createEmptyInstance() => create();
  static $pb.PbList<Session> createRepeated() => $pb.PbList<Session>();
  @$core.pragma('dart2js:noInline')
  static Session getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Session>(create);
  static Session _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gid => $_getI64(0);
  @$pb.TagNumber(1)
  set gid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionUuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionUuid($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSessionUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionUuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get userCid => $_getIZ(2);
  @$pb.TagNumber(3)
  set userCid($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUserCid() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserCid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get lastIpAddress => $_getSZ(3);
  @$pb.TagNumber(4)
  set lastIpAddress($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLastIpAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastIpAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get apiVersion => $_getIZ(4);
  @$pb.TagNumber(5)
  set apiVersion($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasApiVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearApiVersion() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get activeTime => $_getIZ(5);
  @$pb.TagNumber(6)
  set activeTime($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasActiveTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearActiveTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get createdTime => $_getIZ(6);
  @$pb.TagNumber(7)
  set createdTime($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCreatedTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedTime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get userAgent => $_getSZ(7);
  @$pb.TagNumber(8)
  set userAgent($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasUserAgent() => $_has(7);
  @$pb.TagNumber(8)
  void clearUserAgent() => clearField(8);

  @$pb.TagNumber(9)
  DevicePlatform get platform => $_getN(8);
  @$pb.TagNumber(9)
  set platform(DevicePlatform v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasPlatform() => $_has(8);
  @$pb.TagNumber(9)
  void clearPlatform() => clearField(9);

  @$pb.TagNumber(100)
  $fixnum.Int64 get deviceId => $_getI64(9);
  @$pb.TagNumber(100)
  set deviceId($fixnum.Int64 v) {
    $_setInt64(9, v);
  }

  @$pb.TagNumber(100)
  $core.bool hasDeviceId() => $_has(9);
  @$pb.TagNumber(100)
  void clearDeviceId() => clearField(100);
}

class Sms extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Sms',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'gid', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, 'installUuid')
    ..aOS(4, 'toPhone')
    ..aOS(5, 'confirmCode')
    ..aOS(6, 'gatewayNumber')
    ..aOS(9, 'gatewayError')
    ..aOS(14, 'intent')
    ..a<$core.int>(100, 'createdTime', $pb.PbFieldType.OU3)
    ..aOS(101, 'textBody')
    ..aOS(102, 'result')
    ..aOB(103, 'forConfirm')
    ..hasRequiredFields = false;

  Sms._() : super();
  factory Sms() => create();
  factory Sms.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Sms.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Sms clone() => Sms()..mergeFromMessage(this);
  Sms copyWith(void Function(Sms) updates) =>
      super.copyWith((message) => updates(message as Sms));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Sms create() => Sms._();
  Sms createEmptyInstance() => create();
  static $pb.PbList<Sms> createRepeated() => $pb.PbList<Sms>();
  @$core.pragma('dart2js:noInline')
  static Sms getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sms>(create);
  static Sms _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gid => $_getI64(0);
  @$pb.TagNumber(1)
  set gid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGid() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get installUuid => $_getSZ(1);
  @$pb.TagNumber(3)
  set installUuid($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasInstallUuid() => $_has(1);
  @$pb.TagNumber(3)
  void clearInstallUuid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get toPhone => $_getSZ(2);
  @$pb.TagNumber(4)
  set toPhone($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasToPhone() => $_has(2);
  @$pb.TagNumber(4)
  void clearToPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get confirmCode => $_getSZ(3);
  @$pb.TagNumber(5)
  set confirmCode($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasConfirmCode() => $_has(3);
  @$pb.TagNumber(5)
  void clearConfirmCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get gatewayNumber => $_getSZ(4);
  @$pb.TagNumber(6)
  set gatewayNumber($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasGatewayNumber() => $_has(4);
  @$pb.TagNumber(6)
  void clearGatewayNumber() => clearField(6);

  @$pb.TagNumber(9)
  $core.String get gatewayError => $_getSZ(5);
  @$pb.TagNumber(9)
  set gatewayError($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasGatewayError() => $_has(5);
  @$pb.TagNumber(9)
  void clearGatewayError() => clearField(9);

  @$pb.TagNumber(14)
  $core.String get intent => $_getSZ(6);
  @$pb.TagNumber(14)
  set intent($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasIntent() => $_has(6);
  @$pb.TagNumber(14)
  void clearIntent() => clearField(14);

  @$pb.TagNumber(100)
  $core.int get createdTime => $_getIZ(7);
  @$pb.TagNumber(100)
  set createdTime($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(100)
  $core.bool hasCreatedTime() => $_has(7);
  @$pb.TagNumber(100)
  void clearCreatedTime() => clearField(100);

  @$pb.TagNumber(101)
  $core.String get textBody => $_getSZ(8);
  @$pb.TagNumber(101)
  set textBody($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(101)
  $core.bool hasTextBody() => $_has(8);
  @$pb.TagNumber(101)
  void clearTextBody() => clearField(101);

  @$pb.TagNumber(102)
  $core.String get result => $_getSZ(9);
  @$pb.TagNumber(102)
  set result($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(102)
  $core.bool hasResult() => $_has(9);
  @$pb.TagNumber(102)
  void clearResult() => clearField(102);

  @$pb.TagNumber(103)
  $core.bool get forConfirm => $_getBF(10);
  @$pb.TagNumber(103)
  set forConfirm($core.bool v) {
    $_setBool(10, v);
  }

  @$pb.TagNumber(103)
  $core.bool hasForConfirm() => $_has(10);
  @$pb.TagNumber(103)
  void clearForConfirm() => clearField(103);
}
