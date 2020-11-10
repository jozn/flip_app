///
//  Generated code. Do not modify.
//  source: global.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ProfileLevelEnum extends $pb.ProtobufEnum {
  static const ProfileLevelEnum LEVEL_NORMAL =
      ProfileLevelEnum._(0, 'LEVEL_NORMAL');
  static const ProfileLevelEnum APP_ADMIN = ProfileLevelEnum._(1, 'APP_ADMIN');
  static const ProfileLevelEnum SUSPENDED = ProfileLevelEnum._(2, 'SUSPENDED');
  static const ProfileLevelEnum DELETED_BY_OWNER =
      ProfileLevelEnum._(3, 'DELETED_BY_OWNER');
  static const ProfileLevelEnum DELETED_IRAN =
      ProfileLevelEnum._(4, 'DELETED_IRAN');
  static const ProfileLevelEnum SUSPENDED_IRAN =
      ProfileLevelEnum._(5, 'SUSPENDED_IRAN');

  static const $core.List<ProfileLevelEnum> values = <ProfileLevelEnum>[
    LEVEL_NORMAL,
    APP_ADMIN,
    SUSPENDED,
    DELETED_BY_OWNER,
    DELETED_IRAN,
    SUSPENDED_IRAN,
  ];

  static final $core.Map<$core.int, ProfileLevelEnum> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ProfileLevelEnum valueOf($core.int value) => _byValue[value];

  const ProfileLevelEnum._($core.int v, $core.String n) : super(v, n);
}

class DirectTypeEnum extends $pb.ProtobufEnum {
  static const DirectTypeEnum DEO = DirectTypeEnum._(0, 'DEO');
  static const DirectTypeEnum PROFILE = DirectTypeEnum._(1, 'PROFILE');
  static const DirectTypeEnum CHANNEL = DirectTypeEnum._(2, 'CHANNEL');
  static const DirectTypeEnum GROUP = DirectTypeEnum._(3, 'GROUP');

  static const $core.List<DirectTypeEnum> values = <DirectTypeEnum>[
    DEO,
    PROFILE,
    CHANNEL,
    GROUP,
  ];

  static final $core.Map<$core.int, DirectTypeEnum> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DirectTypeEnum valueOf($core.int value) => _byValue[value];

  const DirectTypeEnum._($core.int v, $core.String n) : super(v, n);
}

class MessageType extends $pb.ProtobufEnum {
  static const MessageType TEXT = MessageType._(0, 'TEXT');
  static const MessageType IMAGE = MessageType._(1, 'IMAGE');
  static const MessageType VIDEO = MessageType._(3, 'VIDEO');
  static const MessageType AUDIO = MessageType._(5, 'AUDIO');
  static const MessageType VOICE = MessageType._(7, 'VOICE');
  static const MessageType GIF = MessageType._(8, 'GIF');
  static const MessageType FILE = MessageType._(9, 'FILE');
  static const MessageType POLL = MessageType._(10, 'POLL');
  static const MessageType LOCATION = MessageType._(11, 'LOCATION');
  static const MessageType LOG = MessageType._(12, 'LOG');
  static const MessageType CONTACT = MessageType._(13, 'CONTACT');
  static const MessageType WALLET = MessageType._(15, 'WALLET');
  static const MessageType PRODUCT = MessageType._(16, 'PRODUCT');
  static const MessageType FORWARD = MessageType._(17, 'FORWARD');

  static const $core.List<MessageType> values = <MessageType>[
    TEXT,
    IMAGE,
    VIDEO,
    AUDIO,
    VOICE,
    GIF,
    FILE,
    POLL,
    LOCATION,
    LOG,
    CONTACT,
    WALLET,
    PRODUCT,
    FORWARD,
  ];

  static final $core.Map<$core.int, MessageType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static MessageType valueOf($core.int value) => _byValue[value];

  const MessageType._($core.int v, $core.String n) : super(v, n);
}

class MessageDeliveryStatues extends $pb.ProtobufEnum {
  static const MessageDeliveryStatues UNKNOWN_MD =
      MessageDeliveryStatues._(0, 'UNKNOWN_MD');
  static const MessageDeliveryStatues SENDING =
      MessageDeliveryStatues._(1, 'SENDING');
  static const MessageDeliveryStatues SENT =
      MessageDeliveryStatues._(2, 'SENT');
  static const MessageDeliveryStatues DELIVERED =
      MessageDeliveryStatues._(3, 'DELIVERED');
  static const MessageDeliveryStatues SEEN =
      MessageDeliveryStatues._(4, 'SEEN');
  static const MessageDeliveryStatues CONSUMED =
      MessageDeliveryStatues._(5, 'CONSUMED');
  static const MessageDeliveryStatues FAILED =
      MessageDeliveryStatues._(6, 'FAILED');

  static const $core.List<MessageDeliveryStatues> values =
      <MessageDeliveryStatues>[
    UNKNOWN_MD,
    SENDING,
    SENT,
    DELIVERED,
    SEEN,
    CONSUMED,
    FAILED,
  ];

  static final $core.Map<$core.int, MessageDeliveryStatues> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static MessageDeliveryStatues valueOf($core.int value) => _byValue[value];

  const MessageDeliveryStatues._($core.int v, $core.String n) : super(v, n);
}

class MessageLogType extends $pb.ProtobufEnum {
  static const MessageLogType MLT_UNKNOWN = MessageLogType._(0, 'MLT_UNKNOWN');
  static const MessageLogType USER_SINGED_UP =
      MessageLogType._(1, 'USER_SINGED_UP');
  static const MessageLogType GROUP_CREATED =
      MessageLogType._(2, 'GROUP_CREATED');
  static const MessageLogType MEMBER_ADDED =
      MessageLogType._(3, 'MEMBER_ADDED');
  static const MessageLogType MEMBER_KICKED =
      MessageLogType._(4, 'MEMBER_KICKED');
  static const MessageLogType MEMBER_LEFT = MessageLogType._(5, 'MEMBER_LEFT');
  static const MessageLogType MEMBER_JOINED_BY_LINK =
      MessageLogType._(8, 'MEMBER_JOINED_BY_LINK');
  static const MessageLogType ROOM_DELETED =
      MessageLogType._(9, 'ROOM_DELETED');

  static const $core.List<MessageLogType> values = <MessageLogType>[
    MLT_UNKNOWN,
    USER_SINGED_UP,
    GROUP_CREATED,
    MEMBER_ADDED,
    MEMBER_KICKED,
    MEMBER_LEFT,
    MEMBER_JOINED_BY_LINK,
    ROOM_DELETED,
  ];

  static final $core.Map<$core.int, MessageLogType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static MessageLogType valueOf($core.int value) => _byValue[value];

  const MessageLogType._($core.int v, $core.String n) : super(v, n);
}

class ChannelPrivacy extends $pb.ProtobufEnum {
  static const ChannelPrivacy CHANNEL_UNKNOWN_AB =
      ChannelPrivacy._(0, 'CHANNEL_UNKNOWN_AB');
  static const ChannelPrivacy CHANNEL_OPEN =
      ChannelPrivacy._(1, 'CHANNEL_OPEN');
  static const ChannelPrivacy CHANNEL_PRIVATE_LINK =
      ChannelPrivacy._(2, 'CHANNEL_PRIVATE_LINK');
  static const ChannelPrivacy CHANNEL_ACCEPT =
      ChannelPrivacy._(3, 'CHANNEL_ACCEPT');
  static const ChannelPrivacy CHANNEL_CREATOR =
      ChannelPrivacy._(4, 'CHANNEL_CREATOR');

  static const $core.List<ChannelPrivacy> values = <ChannelPrivacy>[
    CHANNEL_UNKNOWN_AB,
    CHANNEL_OPEN,
    CHANNEL_PRIVATE_LINK,
    CHANNEL_ACCEPT,
    CHANNEL_CREATOR,
  ];

  static final $core.Map<$core.int, ChannelPrivacy> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ChannelPrivacy valueOf($core.int value) => _byValue[value];

  const ChannelPrivacy._($core.int v, $core.String n) : super(v, n);
}

class DevicePlatform extends $pb.ProtobufEnum {
  static const DevicePlatform UNKNOWN_PLATFORM =
      DevicePlatform._(0, 'UNKNOWN_PLATFORM');
  static const DevicePlatform ANDROID = DevicePlatform._(1, 'ANDROID');
  static const DevicePlatform IOS = DevicePlatform._(2, 'IOS');
  static const DevicePlatform WINDOWS = DevicePlatform._(3, 'WINDOWS');
  static const DevicePlatform MAC_OS = DevicePlatform._(4, 'MAC_OS');
  static const DevicePlatform LINUX = DevicePlatform._(5, 'LINUX');
  static const DevicePlatform Web = DevicePlatform._(7, 'Web');

  static const $core.List<DevicePlatform> values = <DevicePlatform>[
    UNKNOWN_PLATFORM,
    ANDROID,
    IOS,
    WINDOWS,
    MAC_OS,
    LINUX,
    Web,
  ];

  static final $core.Map<$core.int, DevicePlatform> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DevicePlatform valueOf($core.int value) => _byValue[value];

  const DevicePlatform._($core.int v, $core.String n) : super(v, n);
}
