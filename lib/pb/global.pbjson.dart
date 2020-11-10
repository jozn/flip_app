///
//  Generated code. Do not modify.
//  source: global.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ProfileLevelEnum$json = const {
  '1': 'ProfileLevelEnum',
  '2': const [
    const {'1': 'LEVEL_NORMAL', '2': 0},
    const {'1': 'APP_ADMIN', '2': 1},
    const {'1': 'SUSPENDED', '2': 2},
    const {'1': 'DELETED_BY_OWNER', '2': 3},
    const {'1': 'DELETED_IRAN', '2': 4},
    const {'1': 'SUSPENDED_IRAN', '2': 5},
  ],
};

const DirectTypeEnum$json = const {
  '1': 'DirectTypeEnum',
  '2': const [
    const {'1': 'DEO', '2': 0},
    const {'1': 'PROFILE', '2': 1},
    const {'1': 'CHANNEL', '2': 2},
    const {'1': 'GROUP', '2': 3},
  ],
};

const MessageType$json = const {
  '1': 'MessageType',
  '2': const [
    const {'1': 'TEXT', '2': 0},
    const {'1': 'IMAGE', '2': 1},
    const {'1': 'VIDEO', '2': 3},
    const {'1': 'AUDIO', '2': 5},
    const {'1': 'VOICE', '2': 7},
    const {'1': 'GIF', '2': 8},
    const {'1': 'FILE', '2': 9},
    const {'1': 'POLL', '2': 10},
    const {'1': 'LOCATION', '2': 11},
    const {'1': 'LOG', '2': 12},
    const {'1': 'CONTACT', '2': 13},
    const {'1': 'WALLET', '2': 15},
    const {'1': 'PRODUCT', '2': 16},
    const {'1': 'FORWARD', '2': 17},
  ],
};

const MessageDeliveryStatues$json = const {
  '1': 'MessageDeliveryStatues',
  '2': const [
    const {'1': 'UNKNOWN_MD', '2': 0},
    const {'1': 'SENDING', '2': 1},
    const {'1': 'SENT', '2': 2},
    const {'1': 'DELIVERED', '2': 3},
    const {'1': 'SEEN', '2': 4},
    const {'1': 'CONSUMED', '2': 5},
    const {'1': 'FAILED', '2': 6},
  ],
};

const MessageLogType$json = const {
  '1': 'MessageLogType',
  '2': const [
    const {'1': 'MLT_UNKNOWN', '2': 0},
    const {'1': 'USER_SINGED_UP', '2': 1},
    const {'1': 'GROUP_CREATED', '2': 2},
    const {'1': 'MEMBER_ADDED', '2': 3},
    const {'1': 'MEMBER_KICKED', '2': 4},
    const {'1': 'MEMBER_LEFT', '2': 5},
    const {'1': 'MEMBER_JOINED_BY_LINK', '2': 8},
    const {'1': 'ROOM_DELETED', '2': 9},
  ],
};

const ChannelPrivacy$json = const {
  '1': 'ChannelPrivacy',
  '2': const [
    const {'1': 'CHANNEL_UNKNOWN_AB', '2': 0},
    const {'1': 'CHANNEL_OPEN', '2': 1},
    const {'1': 'CHANNEL_PRIVATE_LINK', '2': 2},
    const {'1': 'CHANNEL_ACCEPT', '2': 3},
    const {'1': 'CHANNEL_CREATOR', '2': 4},
  ],
};

const DevicePlatform$json = const {
  '1': 'DevicePlatform',
  '2': const [
    const {'1': 'UNKNOWN_PLATFORM', '2': 0},
    const {'1': 'ANDROID', '2': 1},
    const {'1': 'IOS', '2': 2},
    const {'1': 'WINDOWS', '2': 3},
    const {'1': 'MAC_OS', '2': 4},
    const {'1': 'LINUX', '2': 5},
    const {'1': 'Web', '2': 7},
  ],
};

const Invoke$json = const {
  '1': 'Invoke',
  '2': const [
    const {'1': 'namespace', '3': 6, '4': 1, '5': 13, '10': 'namespace'},
    const {'1': 'method', '3': 1, '4': 1, '5': 13, '10': 'method'},
    const {'1': 'action_id', '3': 2, '4': 1, '5': 4, '10': 'actionId'},
    const {'1': 'is_response', '3': 3, '4': 1, '5': 8, '10': 'isResponse'},
    const {'1': 'rpc_data', '3': 4, '4': 1, '5': 12, '10': 'rpcData'},
  ],
};

const Contact$json = const {
  '1': 'Contact',
  '2': const [
    const {'1': 'gid', '3': 1, '4': 1, '5': 6, '10': 'gid'},
    const {'1': 'profile_cid', '3': 2, '4': 1, '5': 13, '10': 'profileCid'},
    const {'1': 'device_id', '3': 3, '4': 1, '5': 4, '10': 'deviceId'},
    const {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'first_name', '3': 5, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 6, '4': 1, '5': 9, '10': 'lastName'},
    const {
      '1': 'peer_profile_cid',
      '3': 12,
      '4': 1,
      '5': 13,
      '10': 'peerProfileCid'
    },
    const {'1': 'created_time', '3': 13, '4': 1, '5': 13, '10': 'createdTime'},
  ],
};

const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'cid', '3': 1, '4': 1, '5': 13, '10': 'cid'},
    const {'1': 'phone', '3': 14, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'email', '3': 15, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password_hash', '3': 17, '4': 1, '5': 9, '10': 'passwordHash'},
    const {'1': 'password_salt', '3': 18, '4': 1, '5': 9, '10': 'passwordSalt'},
    const {'1': 'created_time', '3': 36, '4': 1, '5': 13, '10': 'createdTime'},
    const {'1': 'version_time', '3': 37, '4': 1, '5': 13, '10': 'versionTime'},
    const {'1': 'is_deleted', '3': 38, '4': 1, '5': 8, '10': 'isDeleted'},
    const {'1': 'is_banned', '3': 39, '4': 1, '5': 8, '10': 'isBanned'},
    const {
      '1': 'def_profile',
      '3': 1114,
      '4': 1,
      '5': 11,
      '6': '.pb.Profile',
      '10': 'defProfile'
    },
    const {
      '1': 'profiles',
      '3': 110,
      '4': 3,
      '5': 11,
      '6': '.pb.Profile',
      '10': 'profiles'
    },
    const {
      '1': 'stores',
      '3': 113,
      '4': 3,
      '5': 11,
      '6': '.pb.Store',
      '10': 'stores'
    },
    const {
      '1': 'sessions',
      '3': 102,
      '4': 3,
      '5': 11,
      '6': '.pb.Session',
      '10': 'sessions'
    },
    const {
      '1': 'shopping_profile',
      '3': 111,
      '4': 1,
      '5': 11,
      '6': '.pb.ShoppingProfile',
      '10': 'shoppingProfile'
    },
    const {'1': 'first_name', '3': 4, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 5, '4': 1, '5': 9, '10': 'lastName'},
    const {
      '1': 'UserCounts',
      '3': 80,
      '4': 1,
      '5': 11,
      '6': '.pb.Channel',
      '10': 'UserCounts'
    },
  ],
};

const UserCounts$json = const {
  '1': 'UserCounts',
  '2': const [
    const {
      '1': 'created_channels',
      '3': 1,
      '4': 1,
      '5': 13,
      '10': 'createdChannels'
    },
  ],
};

const Profile$json = const {
  '1': 'Profile',
  '2': const [
    const {'1': 'cid', '3': 1, '4': 1, '5': 13, '10': 'cid'},
    const {'1': 'user_cid', '3': 2, '4': 1, '5': 13, '10': 'userCid'},
    const {
      '1': 'primary_channel',
      '3': 100,
      '4': 1,
      '5': 11,
      '6': '.pb.Channel',
      '10': 'primaryChannel'
    },
    const {
      '1': 'saved_channel',
      '3': 109,
      '4': 1,
      '5': 11,
      '6': '.pb.SavedChannel',
      '10': 'savedChannel'
    },
    const {'1': 'created_time', '3': 103, '4': 1, '5': 13, '10': 'createdTime'},
    const {
      '1': 'setting',
      '3': 107,
      '4': 1,
      '5': 11,
      '6': '.pb.ProfileSettings',
      '10': 'setting'
    },
    const {
      '1': 'channels',
      '3': 104,
      '4': 3,
      '5': 11,
      '6': '.pb.Channel',
      '10': 'channels'
    },
    const {
      '1': 'directs',
      '3': 105,
      '4': 3,
      '5': 11,
      '6': '.pb.Direct',
      '10': 'directs'
    },
    const {
      '1': 'groups',
      '3': 106,
      '4': 3,
      '5': 11,
      '6': '.pb.Group',
      '10': 'groups'
    },
    const {
      '1': 'contacts',
      '3': 108,
      '4': 3,
      '5': 11,
      '6': '.pb.Contact',
      '10': 'contacts'
    },
    const {
      '1': 'contact_info',
      '3': 111,
      '4': 1,
      '5': 11,
      '6': '.pb.Contact',
      '10': 'contactInfo'
    },
  ],
};

const ProfileSettings$json = const {
  '1': 'ProfileSettings',
  '2': const [
    const {'1': 'profile_cid', '3': 1, '4': 1, '5': 13, '10': 'profileCid'},
  ],
};

const Direct$json = const {
  '1': 'Direct',
  '2': const [
    const {'1': 'gid', '3': 1, '4': 1, '5': 6, '10': 'gid'},
    const {'1': 'profile_cid', '3': 5, '4': 1, '5': 13, '10': 'profileCid'},
    const {
      '1': 'direct_type',
      '3': 102,
      '4': 1,
      '5': 14,
      '6': '.pb.DirectTypeEnum',
      '10': 'directType'
    },
    const {'1': 'custom_title', '3': 9, '4': 1, '5': 9, '10': 'customTitle'},
    const {'1': 'pin_time_ms', '3': 10, '4': 1, '5': 6, '10': 'pinTimeMs'},
    const {'1': 'unseen_count', '3': 12, '4': 1, '5': 13, '10': 'unseenCount'},
    const {'1': 'seq', '3': 13, '4': 1, '5': 13, '10': 'seq'},
    const {'1': 'is_active', '3': 22, '4': 1, '5': 8, '10': 'isActive'},
    const {'1': 'mute_until', '3': 29, '4': 1, '5': 13, '10': 'muteUntil'},
    const {'1': 'created_time', '3': 33, '4': 1, '5': 13, '10': 'createdTime'},
    const {'1': 'sort_time_ms', '3': 45, '4': 1, '5': 6, '10': 'sortTimeMs'},
    const {'1': 'sync_time_ms', '3': 104, '4': 1, '5': 6, '10': 'syncTimeMs'},
    const {
      '1': 'my_last_seen_seq',
      '3': 16,
      '4': 1,
      '5': 6,
      '10': 'myLastSeenSeq'
    },
    const {
      '1': 'my_last_seen_msg_id',
      '3': 17,
      '4': 1,
      '5': 6,
      '10': 'myLastSeenMsgId'
    },
    const {
      '1': 'pined_msgs_count',
      '3': 108,
      '4': 1,
      '5': 13,
      '10': 'pinedMsgsCount'
    },
    const {
      '1': 'visible_from_msg_gid',
      '3': 11,
      '4': 1,
      '5': 6,
      '10': 'visibleFromMsgGid'
    },
    const {
      '1': 'channel',
      '3': 48,
      '4': 1,
      '5': 11,
      '6': '.pb.Channel',
      '10': 'channel'
    },
    const {
      '1': 'contact',
      '3': 49,
      '4': 1,
      '5': 11,
      '6': '.pb.Contact',
      '10': 'contact'
    },
    const {
      '1': 'group',
      '3': 50,
      '4': 1,
      '5': 11,
      '6': '.pb.Group',
      '10': 'group'
    },
    const {
      '1': 'last_message',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.pb.Message',
      '10': 'lastMessage'
    },
    const {
      '1': 'pinned_message',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.pb.Message',
      '10': 'pinnedMessage'
    },
    const {
      '1': 'group_member',
      '3': 43,
      '4': 1,
      '5': 11,
      '6': '.pb.GroupMember',
      '10': 'groupMember'
    },
    const {
      '1': 'draft',
      '3': 46,
      '4': 1,
      '5': 11,
      '6': '.pb.DirectDraft',
      '10': 'draft'
    },
    const {
      '1': 'custom_notification',
      '3': 47,
      '4': 1,
      '5': 11,
      '6': '.pb.DirectCustomNotification',
      '10': 'customNotification'
    },
    const {
      '1': 'peer_profile_cid',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'peerProfileCid'
    },
    const {
      '1': 'peer_last_seen_msg_id',
      '3': 18,
      '4': 1,
      '5': 6,
      '10': 'peerLastSeenMsgId'
    },
    const {
      '1': 'my_last_delivered_seq',
      '3': 19,
      '4': 1,
      '5': 6,
      '10': 'myLastDeliveredSeq'
    },
    const {
      '1': 'my_last_delivered_msg_id',
      '3': 20,
      '4': 1,
      '5': 6,
      '10': 'myLastDeliveredMsgId'
    },
    const {
      '1': 'peer_last_delivered_msg_id',
      '3': 21,
      '4': 1,
      '5': 6,
      '10': 'peerLastDeliveredMsgId'
    },
    const {
      '1': 'peer_channel_cid',
      '3': 41,
      '4': 1,
      '5': 13,
      '10': 'peerChannelCid'
    },
    const {'1': 'group_cid', '3': 7, '4': 1, '5': 13, '10': 'groupCid'},
    const {
      '1': 'avatar',
      '3': 44,
      '4': 1,
      '5': 11,
      '6': '.pb.FileMsg',
      '10': 'avatar'
    },
  ],
};

const DirectDraft$json = const {
  '1': 'DirectDraft',
  '2': const [
    const {'1': 'draft_text', '3': 34, '4': 1, '5': 9, '10': 'draftText'},
    const {
      '1': 'drat_reply_to_msg_id',
      '3': 35,
      '4': 1,
      '5': 3,
      '10': 'dratReplyToMsgId'
    },
  ],
};

const DirectCustomNotification$json = const {
  '1': 'DirectCustomNotification',
  '2': const [
    const {'1': 'alert', '3': 13, '4': 1, '5': 8, '10': 'alert'},
    const {'1': 'preview', '3': 14, '4': 1, '5': 8, '10': 'preview'},
    const {'1': 'led_on', '3': 15, '4': 1, '5': 8, '10': 'ledOn'},
    const {'1': 'led_color', '3': 16, '4': 1, '5': 8, '10': 'ledColor'},
    const {'1': 'vibrate', '3': 17, '4': 1, '5': 8, '10': 'vibrate'},
    const {'1': 'popup', '3': 18, '4': 1, '5': 8, '10': 'popup'},
    const {'1': 'sound', '3': 19, '4': 1, '5': 8, '10': 'sound'},
    const {'1': 'priority', '3': 20, '4': 1, '5': 8, '10': 'priority'},
  ],
};

const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'gid', '3': 1, '4': 1, '5': 6, '10': 'gid'},
    const {
      '1': 'by_profile_cid',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'byProfileCid'
    },
    const {
      '1': 'message_type',
      '3': 107,
      '4': 1,
      '5': 14,
      '6': '.pb.MessageType',
      '10': 'messageType'
    },
    const {'1': 'text', '3': 7, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'via_app_id', '3': 12, '4': 1, '5': 13, '10': 'viaAppId'},
    const {'1': 'seq', '3': 13, '4': 1, '5': 13, '10': 'seq'},
    const {'1': 'edited_time', '3': 17, '4': 1, '5': 13, '10': 'editedTime'},
    const {'1': 'created_time', '3': 18, '4': 1, '5': 13, '10': 'createdTime'},
    const {'1': 'verified', '3': 111, '4': 1, '5': 8, '10': 'verified'},
    const {
      '1': 'delivery_status',
      '3': 105,
      '4': 1,
      '5': 14,
      '6': '.pb.MessageDeliveryStatues',
      '10': 'deliveryStatus'
    },
    const {
      '1': 'delivery_time',
      '3': 106,
      '4': 1,
      '5': 13,
      '10': 'deliveryTime'
    },
    const {'1': 'deleted', '3': 150, '4': 1, '5': 8, '10': 'deleted'},
    const {'1': 'flags', '3': 112, '4': 1, '5': 13, '10': 'flags'},
    const {
      '1': 'forward',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.pb.Message',
      '10': 'forward'
    },
    const {
      '1': 'reply_to',
      '3': 50,
      '4': 1,
      '5': 11,
      '6': '.pb.Message',
      '10': 'replyTo'
    },
    const {'1': 'title', '3': 109, '4': 1, '5': 9, '10': 'title'},
    const {
      '1': 'counts',
      '3': 101,
      '4': 1,
      '5': 11,
      '6': '.pb.MessageCount',
      '10': 'counts'
    },
    const {
      '1': 'setting',
      '3': 102,
      '4': 1,
      '5': 11,
      '6': '.pb.MessageSetting',
      '10': 'setting'
    },
    const {
      '1': 'Product',
      '3': 110,
      '4': 1,
      '5': 11,
      '6': '.pb.Product',
      '10': 'Product'
    },
    const {
      '1': 'files',
      '3': 103,
      '4': 3,
      '5': 11,
      '6': '.pb.FileMsg',
      '10': 'files'
    },
  ],
};

const MessageCount$json = const {
  '1': 'MessageCount',
  '2': const [
    const {'1': 'message_gid', '3': 1, '4': 1, '5': 6, '10': 'messageGid'},
    const {
      '1': 'comments_count',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'commentsCount'
    },
    const {'1': 'likes_count', '3': 3, '4': 1, '5': 13, '10': 'likesCount'},
    const {'1': 'views_count', '3': 4, '4': 1, '5': 3, '10': 'viewsCount'},
    const {
      '1': 'reshared_count',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'resharedCount'
    },
    const {
      '1': 'chat_shared_count',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'chatSharedCount'
    },
  ],
};

const MessageSetting$json = const {
  '1': 'MessageSetting',
  '2': const [
    const {
      '1': 'disable_comment',
      '3': 11,
      '4': 1,
      '5': 13,
      '10': 'disableComment'
    },
  ],
};

const MessageLog$json = const {
  '1': 'MessageLog',
  '2': const [
    const {
      '1': 'log_type',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.pb.MessageLogType',
      '10': 'logType'
    },
    const {
      '1': 'by_profile_cid',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'byProfileCid'
    },
    const {
      '1': 'target_profile_cid',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'targetProfileCid'
    },
    const {
      '1': 'target_profile_view',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.pb.Profile',
      '10': 'targetProfileView'
    },
  ],
};

const Channel$json = const {
  '1': 'Channel',
  '2': const [
    const {'1': 'cid', '3': 1, '4': 1, '5': 13, '10': 'cid'},
    const {'1': 'user_name', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'channel_name', '3': 3, '4': 1, '5': 9, '10': 'channelName'},
    const {
      '1': 'creator_profile_cid',
      '3': 7,
      '4': 1,
      '5': 13,
      '10': 'creatorProfileCid'
    },
    const {'1': 'is_verified', '3': 6, '4': 1, '5': 8, '10': 'isVerified'},
    const {
      '1': 'is_profile_channel',
      '3': 101,
      '4': 1,
      '5': 8,
      '10': 'isProfileChannel'
    },
    const {'1': 'avatar_count', '3': 40, '4': 1, '5': 3, '10': 'avatarCount'},
    const {'1': 'about', '3': 16, '4': 1, '5': 9, '10': 'about'},
    const {
      '1': 'invite_link_hash',
      '3': 17,
      '4': 1,
      '5': 9,
      '10': 'inviteLinkHash'
    },
    const {'1': 'message_seq', '3': 19, '4': 1, '5': 13, '10': 'messageSeq'},
    const {'1': 'sync_time_ms', '3': 21, '4': 1, '5': 6, '10': 'syncTimeMs'},
    const {'1': 'created_time', '3': 36, '4': 1, '5': 13, '10': 'createdTime'},
    const {'1': 'is_deleted', '3': 38, '4': 1, '5': 13, '10': 'isDeleted'},
    const {'1': 'is_banned', '3': 39, '4': 1, '5': 13, '10': 'isBanned'},
    const {
      '1': 'notification_setting',
      '3': 90,
      '4': 1,
      '5': 11,
      '6': '.pb.ChannelOwnerNotification',
      '10': 'notificationSetting'
    },
    const {
      '1': 'privacy',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.pb.ChannelPrivacy',
      '10': 'privacy'
    },
    const {
      '1': 'counts',
      '3': 41,
      '4': 1,
      '5': 11,
      '6': '.pb.ChannelCounts',
      '10': 'counts'
    },
    const {
      '1': 'last_message',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.pb.Message',
      '10': 'lastMessage'
    },
    const {
      '1': 'pinned_message',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.pb.Message',
      '10': 'pinnedMessage'
    },
    const {
      '1': 'avatar',
      '3': 100,
      '4': 1,
      '5': 11,
      '6': '.pb.FileMsg',
      '10': 'avatar'
    },
  ],
};

const ChannelOwnerNotification$json = const {
  '1': 'ChannelOwnerNotification',
};

const ChannelCounts$json = const {
  '1': 'ChannelCounts',
  '2': const [
    const {
      '1': 'followers_count',
      '3': 20,
      '4': 1,
      '5': 13,
      '10': 'followersCount'
    },
    const {'1': 'posts_count', '3': 22, '4': 1, '5': 13, '10': 'postsCount'},
    const {'1': 'media_count', '3': 23, '4': 1, '5': 13, '10': 'mediaCount'},
    const {'1': 'photo_count', '3': 24, '4': 1, '5': 13, '10': 'photoCount'},
    const {'1': 'video_count', '3': 25, '4': 1, '5': 13, '10': 'videoCount'},
    const {'1': 'gif_count', '3': 26, '4': 1, '5': 13, '10': 'gifCount'},
    const {'1': 'audio_count', '3': 27, '4': 1, '5': 13, '10': 'audioCount'},
    const {'1': 'voice_count', '3': 28, '4': 1, '5': 13, '10': 'voiceCount'},
    const {'1': 'file_count', '3': 29, '4': 1, '5': 13, '10': 'fileCount'},
    const {'1': 'link_count', '3': 30, '4': 1, '5': 13, '10': 'linkCount'},
    const {'1': 'board_count', '3': 31, '4': 1, '5': 13, '10': 'boardCount'},
    const {'1': 'pined_count', '3': 32, '4': 1, '5': 13, '10': 'pinedCount'},
    const {'1': 'likes_count', '3': 33, '4': 1, '5': 13, '10': 'likesCount'},
    const {
      '1': 'reshared_count',
      '3': 34,
      '4': 1,
      '5': 13,
      '10': 'resharedCount'
    },
  ],
};

const ShoppingProfile$json = const {
  '1': 'ShoppingProfile',
};

const Store$json = const {
  '1': 'Store',
  '2': const [
    const {'1': 'cid', '3': 1, '4': 1, '5': 13, '10': 'cid'},
    const {'1': 'user_name', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'store_name', '3': 3, '4': 1, '5': 9, '10': 'storeName'},
    const {'1': 'address', '3': 102, '4': 1, '5': 9, '10': 'address'},
    const {
      '1': 'creator_user_cid',
      '3': 7,
      '4': 1,
      '5': 13,
      '10': 'creatorUserCid'
    },
    const {'1': 'about', '3': 16, '4': 1, '5': 9, '10': 'about'},
    const {'1': 'message_seq', '3': 19, '4': 1, '5': 13, '10': 'messageSeq'},
    const {'1': 'sync_time_ms', '3': 21, '4': 1, '5': 6, '10': 'syncTimeMs'},
    const {'1': 'created_time', '3': 36, '4': 1, '5': 13, '10': 'createdTime'},
    const {'1': 'is_banned', '3': 39, '4': 1, '5': 13, '10': 'isBanned'},
    const {'1': 'is_verified', '3': 6, '4': 1, '5': 8, '10': 'isVerified'},
    const {
      '1': 'avatar',
      '3': 100,
      '4': 1,
      '5': 11,
      '6': '.pb.FileMsg',
      '10': 'avatar'
    },
  ],
};

const Product$json = const {
  '1': 'Product',
  '2': const [
    const {'1': 'product_id', '3': 1, '4': 1, '5': 13, '10': 'productId'},
    const {'1': 'category_id', '3': 53, '4': 1, '5': 13, '10': 'categoryId'},
    const {'1': 'category', '3': 50, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'brand', '3': 51, '4': 1, '5': 9, '10': 'brand'},
    const {'1': 'fee_rate', '3': 3, '4': 1, '5': 13, '10': 'feeRate'},
    const {'1': 'sales_count', '3': 5, '4': 1, '5': 13, '10': 'salesCount'},
    const {'1': 'price', '3': 6, '4': 1, '5': 13, '10': 'price'},
  ],
};

const ProductPriceInfo$json = const {
  '1': 'ProductPriceInfo',
  '2': const [
    const {'1': 'price', '3': 1, '4': 1, '5': 13, '10': 'price'},
    const {
      '1': 'discount_price',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'discountPrice'
    },
    const {'1': 'rate', '3': 3, '4': 1, '5': 13, '10': 'rate'},
  ],
};

const SavedChannel$json = const {
  '1': 'SavedChannel',
  '2': const [
    const {'1': 'cid', '3': 1, '4': 1, '5': 13, '10': 'cid'},
    const {
      '1': 'creator_profile_cid',
      '3': 7,
      '4': 1,
      '5': 13,
      '10': 'creatorProfileCid'
    },
    const {'1': 'message_seq', '3': 19, '4': 1, '5': 13, '10': 'messageSeq'},
    const {'1': 'sync_time_ms', '3': 21, '4': 1, '5': 6, '10': 'syncTimeMs'},
    const {'1': 'created_time', '3': 36, '4': 1, '5': 13, '10': 'createdTime'},
    const {
      '1': 'counts',
      '3': 41,
      '4': 1,
      '5': 11,
      '6': '.pb.ChannelCounts',
      '10': 'counts'
    },
    const {
      '1': 'last_message',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.pb.Message',
      '10': 'lastMessage'
    },
  ],
};

const Group$json = const {
  '1': 'Group',
  '2': const [
    const {'1': 'cid', '3': 1, '4': 1, '5': 13, '10': 'cid'},
    const {'1': 'group_title', '3': 3, '4': 1, '5': 9, '10': 'groupTitle'},
    const {'1': 'user_name', '3': 4, '4': 1, '5': 9, '10': 'userName'},
    const {
      '1': 'creator_profile_cid',
      '3': 7,
      '4': 1,
      '5': 13,
      '10': 'creatorProfileCid'
    },
    const {
      '1': 'history_viewable',
      '3': 8,
      '4': 1,
      '5': 8,
      '10': 'historyViewable'
    },
    const {'1': 'is_open_group', '3': 9, '4': 1, '5': 8, '10': 'isOpenGroup'},
    const {'1': 'seq', '3': 10, '4': 1, '5': 13, '10': 'seq'},
    const {'1': 'avatar_count', '3': 14, '4': 1, '5': 13, '10': 'avatarCount'},
    const {'1': 'about', '3': 15, '4': 1, '5': 9, '10': 'about'},
    const {
      '1': 'invite_link_hash',
      '3': 16,
      '4': 1,
      '5': 9,
      '10': 'inviteLinkHash'
    },
    const {
      '1': 'members_count',
      '3': 17,
      '4': 1,
      '5': 13,
      '10': 'membersCount'
    },
    const {'1': 'admins_count', '3': 18, '4': 1, '5': 13, '10': 'adminsCount'},
    const {
      '1': 'moderator_counts',
      '3': 19,
      '4': 1,
      '5': 13,
      '10': 'moderatorCounts'
    },
    const {'1': 'sort_time', '3': 20, '4': 1, '5': 6, '10': 'sortTime'},
    const {'1': 'sync_time', '3': 40, '4': 1, '5': 6, '10': 'syncTime'},
    const {'1': 'created_time', '3': 21, '4': 1, '5': 13, '10': 'createdTime'},
    const {'1': 'is_deleted', '3': 23, '4': 1, '5': 8, '10': 'isDeleted'},
    const {'1': 'is_banned', '3': 24, '4': 1, '5': 8, '10': 'isBanned'},
    const {
      '1': 'last_message',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.pb.Message',
      '10': 'lastMessage'
    },
    const {
      '1': 'pinned_message',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.pb.Message',
      '10': 'pinnedMessage'
    },
    const {
      '1': 'avatar',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.pb.FileMsg',
      '10': 'avatar'
    },
  ],
};

const GroupCounts$json = const {
  '1': 'GroupCounts',
  '2': const [
    const {'1': 'media_count', '3': 23, '4': 1, '5': 13, '10': 'mediaCount'},
    const {'1': 'photo_count', '3': 24, '4': 1, '5': 13, '10': 'photoCount'},
    const {'1': 'video_count', '3': 25, '4': 1, '5': 13, '10': 'videoCount'},
    const {'1': 'gif_count', '3': 26, '4': 1, '5': 13, '10': 'gifCount'},
    const {'1': 'audio_count', '3': 27, '4': 1, '5': 13, '10': 'audioCount'},
    const {'1': 'voice_count', '3': 28, '4': 1, '5': 13, '10': 'voiceCount'},
    const {'1': 'file_count', '3': 29, '4': 1, '5': 13, '10': 'fileCount'},
    const {'1': 'link_count', '3': 30, '4': 1, '5': 13, '10': 'linkCount'},
    const {'1': 'pined_count', '3': 32, '4': 1, '5': 13, '10': 'pinedCount'},
  ],
};

const GroupMember$json = const {
  '1': 'GroupMember',
  '2': const [
    const {'1': 'gid', '3': 1, '4': 1, '5': 3, '10': 'gid'},
    const {'1': 'group_cid', '3': 2, '4': 1, '5': 3, '10': 'groupCid'},
    const {'1': 'profile_cid', '3': 3, '4': 1, '5': 13, '10': 'profileCid'},
    const {
      '1': 'by_profile_cid',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'byProfileCid'
    },
    const {'1': 'is_moderator', '3': 5, '4': 1, '5': 8, '10': 'isModerator'},
    const {'1': 'created_time', '3': 6, '4': 1, '5': 13, '10': 'createdTime'},
  ],
};

const FileMsg$json = const {
  '1': 'FileMsg',
  '2': const [
    const {'1': 'gid', '3': 1, '4': 1, '5': 6, '10': 'gid'},
    const {'1': 'access_hash', '3': 2, '4': 1, '5': 13, '10': 'accessHash'},
    const {'1': 'file_type', '3': 3, '4': 1, '5': 13, '10': 'fileType'},
    const {'1': 'width', '3': 4, '4': 1, '5': 13, '10': 'width'},
    const {'1': 'height', '3': 5, '4': 1, '5': 13, '10': 'height'},
    const {'1': 'extension', '3': 6, '4': 1, '5': 9, '10': 'extension'},
    const {'1': 'full_path', '3': 61, '4': 1, '5': 9, '10': 'fullPath'},
    const {'1': 'user_cid', '3': 7, '4': 1, '5': 13, '10': 'userCid'},
    const {'1': 'data_thumb', '3': 8, '4': 1, '5': 12, '10': 'dataThumb'},
    const {'1': 'data', '3': 9, '4': 1, '5': 12, '10': 'data'},
  ],
};

const Session$json = const {
  '1': 'Session',
  '2': const [
    const {'1': 'gid', '3': 1, '4': 1, '5': 6, '10': 'gid'},
    const {'1': 'session_uuid', '3': 2, '4': 1, '5': 9, '10': 'sessionUuid'},
    const {'1': 'device_id', '3': 100, '4': 1, '5': 4, '10': 'deviceId'},
    const {'1': 'user_cid', '3': 3, '4': 1, '5': 13, '10': 'userCid'},
    const {
      '1': 'last_ip_address',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'lastIpAddress'
    },
    const {'1': 'user_agent', '3': 8, '4': 1, '5': 9, '10': 'userAgent'},
    const {
      '1': 'platform',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.pb.DevicePlatform',
      '10': 'platform'
    },
    const {'1': 'api_version', '3': 5, '4': 1, '5': 13, '10': 'apiVersion'},
    const {'1': 'active_time', '3': 6, '4': 1, '5': 13, '10': 'activeTime'},
    const {'1': 'created_time', '3': 7, '4': 1, '5': 13, '10': 'createdTime'},
  ],
};

const Sms$json = const {
  '1': 'Sms',
  '2': const [
    const {'1': 'gid', '3': 1, '4': 1, '5': 6, '10': 'gid'},
    const {'1': 'install_uuid', '3': 3, '4': 1, '5': 9, '10': 'installUuid'},
    const {'1': 'to_phone', '3': 4, '4': 1, '5': 9, '10': 'toPhone'},
    const {'1': 'for_confirm', '3': 103, '4': 1, '5': 8, '10': 'forConfirm'},
    const {'1': 'confirm_code', '3': 5, '4': 1, '5': 9, '10': 'confirmCode'},
    const {
      '1': 'gateway_number',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'gatewayNumber'
    },
    const {'1': 'text_body', '3': 101, '4': 1, '5': 9, '10': 'textBody'},
    const {'1': 'created_time', '3': 100, '4': 1, '5': 13, '10': 'createdTime'},
    const {'1': 'gateway_error', '3': 9, '4': 1, '5': 9, '10': 'gatewayError'},
    const {'1': 'intent', '3': 14, '4': 1, '5': 9, '10': 'intent'},
    const {'1': 'result', '3': 102, '4': 1, '5': 9, '10': 'result'},
  ],
};
