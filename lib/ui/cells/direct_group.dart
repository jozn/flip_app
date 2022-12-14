import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/pb/rpc_sample.pb.dart';
import 'package:flip_app/ui/cells/rows/direct_row.dart';
import 'package:flip_app/ui/nav.dart';
import 'package:flip_app/ui/utils/FLeftScrollbar.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import '../api.dart';
import 'message_list_play.dart';

class FDirectGroupListCell extends StatefulWidget {
  FDirectGroupListCell();

  @override
  _FDirectGroupListCellState createState() => new _FDirectGroupListCellState();
}

class _FDirectGroupListCellState extends State<FDirectGroupListCell> {
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

  void onItemClick2() {
    // Toast.show("News " + "clicked", context, duration: Toast.LENGTH_SHORT);
    FNav.push(FMessageListCell_Play());
  }

  void onItemClick(int index) {
    Toast.show("News " + index.toString() + "clicked", context,
        duration: Toast.LENGTH_SHORT);
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
                    index: index, direct: items[index], onClick: onItemClick2);
              },
            ),
          )),
    );
  }
}
