///
//  Generated code. Do not modify.
//  source: rpc_shared.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const EchoParam$json = const {
  '1': 'EchoParam',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

const EchoResponse$json = const {
  '1': 'EchoResponse',
  '2': const [
    const {'1': 'done', '3': 1, '4': 1, '5': 8, '10': 'done'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

const CheckUserNameParam$json = const {
  '1': 'CheckUserNameParam',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
  ],
};

const CheckUserNameResponse$json = const {
  '1': 'CheckUserNameResponse',
  '2': const [
    const {'1': 'is_available', '3': 1, '4': 1, '5': 8, '10': 'isAvailable'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'show_message', '3': 3, '4': 1, '5': 9, '10': 'showMessage'},
  ],
};

const RPC_SharedServiceBase$json = const {
  '1': 'RPC_Shared',
  '2': const [
    const {'1': 'Echo', '2': '.pb.EchoParam', '3': '.pb.EchoResponse'},
    const {
      '1': 'CheckUserName',
      '2': '.pb.CheckUserNameParam',
      '3': '.pb.CheckUserNameResponse'
    },
  ],
};

const RPC_SharedServiceBase$messageJson = const {
  '.pb.EchoParam': EchoParam$json,
  '.pb.EchoResponse': EchoResponse$json,
  '.pb.CheckUserNameParam': CheckUserNameParam$json,
  '.pb.CheckUserNameResponse': CheckUserNameResponse$json,
};
