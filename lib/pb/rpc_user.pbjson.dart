///
//  Generated code. Do not modify.
//  source: rpc_user.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ChangePhoneNumberParam$json = const {
  '1': 'ChangePhoneNumberParam',
};

const ChangePhoneNumberResponse$json = const {
  '1': 'ChangePhoneNumberResponse',
  '2': const [
    const {'1': 'done', '3': 1, '4': 1, '5': 8, '10': 'done'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

const RPC_UserServiceBase$json = const {
  '1': 'RPC_User',
  '2': const [
    const {
      '1': 'ChangePhoneNumber',
      '2': '.pb.ChangePhoneNumberParam',
      '3': '.pb.ChangePhoneNumberResponse'
    },
  ],
};

const RPC_UserServiceBase$messageJson = const {
  '.pb.ChangePhoneNumberParam': ChangePhoneNumberParam$json,
  '.pb.ChangePhoneNumberResponse': ChangePhoneNumberResponse$json,
};
