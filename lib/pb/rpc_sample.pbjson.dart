///
//  Generated code. Do not modify.
//  source: rpc_sample.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'global.pbjson.dart' as $5;

const GetUsers1Param$json = const {
  '1': 'GetUsers1Param',
};

const GetUsers1Response$json = const {
  '1': 'GetUsers1Response',
  '2': const [
    const {
      '1': 'users',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.Profile',
      '10': 'users'
    },
  ],
};

const GetProfilesParam$json = const {
  '1': 'GetProfilesParam',
};

const GetProfilesResponse$json = const {
  '1': 'GetProfilesResponse',
  '2': const [
    const {
      '1': 'profiles',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.Profile',
      '10': 'profiles'
    },
  ],
};

const GetChannelsParam$json = const {
  '1': 'GetChannelsParam',
};

const GetChannelsResponse$json = const {
  '1': 'GetChannelsResponse',
  '2': const [
    const {
      '1': 'channels',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.Channel',
      '10': 'channels'
    },
  ],
};

const GetDirectsParam$json = const {
  '1': 'GetDirectsParam',
};

const GetDirectsResponse$json = const {
  '1': 'GetDirectsResponse',
  '2': const [
    const {
      '1': 'directs',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.Direct',
      '10': 'directs'
    },
  ],
};

const GetMessagesParam$json = const {
  '1': 'GetMessagesParam',
};

const GetMessagesResponse$json = const {
  '1': 'GetMessagesResponse',
  '2': const [
    const {
      '1': 'directs',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.Message',
      '10': 'directs'
    },
  ],
};

const RPC_SampleServiceBase$json = const {
  '1': 'RPC_Sample',
  '2': const [
    const {
      '1': 'GetUsers1',
      '2': '.pb.GetUsers1Param',
      '3': '.pb.GetUsers1Response'
    },
    const {
      '1': 'GetProfiles',
      '2': '.pb.GetProfilesParam',
      '3': '.pb.GetProfilesResponse'
    },
    const {
      '1': 'GetChannels',
      '2': '.pb.GetChannelsParam',
      '3': '.pb.GetChannelsResponse'
    },
    const {
      '1': 'GetDirects',
      '2': '.pb.GetDirectsParam',
      '3': '.pb.GetDirectsResponse'
    },
    const {
      '1': 'GetMessages',
      '2': '.pb.GetMessagesParam',
      '3': '.pb.GetMessagesResponse'
    },
  ],
};

const RPC_SampleServiceBase$messageJson = const {
  '.pb.GetUsers1Param': GetUsers1Param$json,
  '.pb.GetUsers1Response': GetUsers1Response$json,
  '.pb.Profile': $5.Profile$json,
  '.pb.Channel': $5.Channel$json,
  '.pb.Message': $5.Message$json,
  '.pb.MessageCount': $5.MessageCount$json,
  '.pb.MessageSetting': $5.MessageSetting$json,
  '.pb.FileMsg': $5.FileMsg$json,
  '.pb.Product': $5.Product$json,
  '.pb.ChannelCounts': $5.ChannelCounts$json,
  '.pb.ChannelOwnerNotification': $5.ChannelOwnerNotification$json,
  '.pb.Direct': $5.Direct$json,
  '.pb.GroupMember': $5.GroupMember$json,
  '.pb.DirectDraft': $5.DirectDraft$json,
  '.pb.DirectCustomNotification': $5.DirectCustomNotification$json,
  '.pb.Contact': $5.Contact$json,
  '.pb.Group': $5.Group$json,
  '.pb.ProfileSettings': $5.ProfileSettings$json,
  '.pb.SavedChannel': $5.SavedChannel$json,
  '.pb.GetProfilesParam': GetProfilesParam$json,
  '.pb.GetProfilesResponse': GetProfilesResponse$json,
  '.pb.GetChannelsParam': GetChannelsParam$json,
  '.pb.GetChannelsResponse': GetChannelsResponse$json,
  '.pb.GetDirectsParam': GetDirectsParam$json,
  '.pb.GetDirectsResponse': GetDirectsResponse$json,
  '.pb.GetMessagesParam': GetMessagesParam$json,
  '.pb.GetMessagesResponse': GetMessagesResponse$json,
};
