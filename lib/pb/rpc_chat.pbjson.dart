///
//  Generated code. Do not modify.
//  source: rpc_chat.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ChatSendMessageParam$json = const {
  '1': 'ChatSendMessageParam',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 13, '10': 'groupId'},
  ],
};

const ChatSendMessageResponse$json = const {
  '1': 'ChatSendMessageResponse',
};

const ChatEditMessageParam$json = const {
  '1': 'ChatEditMessageParam',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 13, '10': 'groupId'},
  ],
};

const ChatEditMessageResponse$json = const {
  '1': 'ChatEditMessageResponse',
};

const ChatDeleteMessagesParam$json = const {
  '1': 'ChatDeleteMessagesParam',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 13, '10': 'groupId'},
  ],
};

const ChatDeleteMessagesResponse$json = const {
  '1': 'ChatDeleteMessagesResponse',
};

const ChatDeleteHistoryParam$json = const {
  '1': 'ChatDeleteHistoryParam',
};

const ChatDeleteHistoryResponse$json = const {
  '1': 'ChatDeleteHistoryResponse',
};

const ChatAvatarChangeParam$json = const {
  '1': 'ChatAvatarChangeParam',
};

const ChatAvatarChangeResponse$json = const {
  '1': 'ChatAvatarChangeResponse',
};

const ChatSendDoingActionParam$json = const {
  '1': 'ChatSendDoingActionParam',
};

const ChatSendDoingActionResponse$json = const {
  '1': 'ChatSendDoingActionResponse',
};

const ChatReportChatParam$json = const {
  '1': 'ChatReportChatParam',
};

const ChatReportChatResponse$json = const {
  '1': 'ChatReportChatResponse',
};

const ChatGetFullMessageParam$json = const {
  '1': 'ChatGetFullMessageParam',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 13, '10': 'groupId'},
  ],
};

const ChatGetFullMessageResponse$json = const {
  '1': 'ChatGetFullMessageResponse',
};

const ChatGetMessagesListParam$json = const {
  '1': 'ChatGetMessagesListParam',
};

const ChatGetMessagesListResponse$json = const {
  '1': 'ChatGetMessagesListResponse',
};

const ChatGetMediaListParam$json = const {
  '1': 'ChatGetMediaListParam',
};

const ChatGetMediaListResponse$json = const {
  '1': 'ChatGetMediaListResponse',
};

const RPC_ChatServiceBase$json = const {
  '1': 'RPC_Chat',
  '2': const [
    const {
      '1': 'ChatSendMessage',
      '2': '.pb.ChatSendMessageParam',
      '3': '.pb.ChatSendMessageResponse'
    },
    const {
      '1': 'ChatEditMessage',
      '2': '.pb.ChatEditMessageParam',
      '3': '.pb.ChatEditMessageResponse'
    },
    const {
      '1': 'ChatDeleteMessages',
      '2': '.pb.ChatDeleteMessagesParam',
      '3': '.pb.ChatDeleteMessagesResponse'
    },
    const {
      '1': 'ChatDeleteHistory',
      '2': '.pb.ChatDeleteHistoryParam',
      '3': '.pb.ChatDeleteHistoryResponse'
    },
    const {
      '1': 'ChatSendDoingAction',
      '2': '.pb.ChatSendDoingActionParam',
      '3': '.pb.ChatSendDoingActionResponse'
    },
    const {
      '1': 'ChatReportChat',
      '2': '.pb.ChatReportChatParam',
      '3': '.pb.ChatReportChatResponse'
    },
    const {
      '1': 'ChatGetFull',
      '2': '.pb.ChatGetFullMessageParam',
      '3': '.pb.ChatGetFullMessageResponse'
    },
    const {
      '1': 'ChatGetMessagesList',
      '2': '.pb.ChatGetMessagesListParam',
      '3': '.pb.ChatGetMessagesListResponse'
    },
    const {
      '1': 'ChatGetMediaList',
      '2': '.pb.ChatGetMediaListParam',
      '3': '.pb.ChatGetMediaListResponse'
    },
  ],
};

const RPC_ChatServiceBase$messageJson = const {
  '.pb.ChatSendMessageParam': ChatSendMessageParam$json,
  '.pb.ChatSendMessageResponse': ChatSendMessageResponse$json,
  '.pb.ChatEditMessageParam': ChatEditMessageParam$json,
  '.pb.ChatEditMessageResponse': ChatEditMessageResponse$json,
  '.pb.ChatDeleteMessagesParam': ChatDeleteMessagesParam$json,
  '.pb.ChatDeleteMessagesResponse': ChatDeleteMessagesResponse$json,
  '.pb.ChatDeleteHistoryParam': ChatDeleteHistoryParam$json,
  '.pb.ChatDeleteHistoryResponse': ChatDeleteHistoryResponse$json,
  '.pb.ChatSendDoingActionParam': ChatSendDoingActionParam$json,
  '.pb.ChatSendDoingActionResponse': ChatSendDoingActionResponse$json,
  '.pb.ChatReportChatParam': ChatReportChatParam$json,
  '.pb.ChatReportChatResponse': ChatReportChatResponse$json,
  '.pb.ChatGetFullMessageParam': ChatGetFullMessageParam$json,
  '.pb.ChatGetFullMessageResponse': ChatGetFullMessageResponse$json,
  '.pb.ChatGetMessagesListParam': ChatGetMessagesListParam$json,
  '.pb.ChatGetMessagesListResponse': ChatGetMessagesListResponse$json,
  '.pb.ChatGetMediaListParam': ChatGetMediaListParam$json,
  '.pb.ChatGetMediaListResponse': ChatGetMediaListResponse$json,
};
