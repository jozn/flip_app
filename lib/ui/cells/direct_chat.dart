import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/pb/rpc_sample.pb.dart';
import 'package:flip_app/ui/cells/rows/direct_row.dart';
import 'package:flip_app/ui/pages/chat_page.dart';
import 'package:flip_app/ui/utils/FLeftScrollbar.dart';
import 'package:flutter/material.dart';

import '../api.dart';
import '../nav.dart';

class FDirectChatListCell extends StatefulWidget {
  FDirectChatListCell();

  @override
  _FDirectChatListCellState createState() => new _FDirectChatListCellState();
}

class _FDirectChatListCellState extends State<FDirectChatListCell> {
  BuildContext context;
  List<Direct> items = [];

  @override
  void initState() {
    super.initState();
    fetchContacts();
  }

  void fetchContacts() async {
    // var later = RPC_Sample.getProfiles(GetProfilesParam());
    // later.then((value) => {setNewProfiles(value.profiles)});
    var res = await RPC_Sample.getDirects(GetDirectsParam());
    this.setState(() {
      print(res.directs.length);
      print(res.directs[0]);
      List<Direct> all = [];
      all.addAll(res.directs);
      all.addAll(res.directs);
      all.addAll(res.directs);
      all.addAll(res.directs);
      all.addAll(res.directs);
      this.items = all;
    });
  }

  void onItemClick() {
    FNav.push(ChatPage());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      child: FLeftScrollbar(
          thickness: 3,
          child: Material(
            color: Colors.white,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return FDirectRowCell(
                    index: index, direct: items[index], onClick: onItemClick);
              },
            ),
          )),
    );
  }
}
