import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/pb/rpc_sample.pb.dart';
import 'package:flip_app/ui/cells/rows/music_row.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import '../api.dart';

class FMusicListCell extends StatefulWidget {
  FMusicListCell();

  @override
  _FMusicListCellState createState() => new _FMusicListCellState();
}

class _FMusicListCellState extends State<FMusicListCell> {
  BuildContext context;
  List<Message> messages = [];
  ScrollController scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    // fetchContacts();
  }

  void fetchContacts() async {
    // var later = RPC_Sample.getProfiles(GetProfilesParam());
    // later.then((value) => {setNewProfiles(value.profiles)});
    var res = await RPC_Sample.getMessages(GetMessagesParam());
    this.setState(() {
      print("---------- Message ----------------");
      print(res.directs.length);
      print(res.directs[0]);
      List<Message> all = [];
      all.addAll(res.directs);
      this.messages = all;
    });
  }

  void insertSingleItem(Message msg) {
    int insertIndex = messages.length;
    messages.insert(insertIndex, msg);
    scrollController.animateTo(scrollController.position.maxScrollExtent + 100,
        duration: Duration(milliseconds: 100), curve: Curves.easeOut);
  }

  void onItemClick() {
    Toast.show("News " + "clicked", context, duration: Toast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    print("music list");
    return Container(
      // color: Colors.white,
      child: Scrollbar(
          thickness: 4,
          radius: Radius.circular(4),
          child: Material(
            color: Colors.white,
            child: ListView.builder(
              itemCount: 100,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              controller: scrollController,
              itemBuilder: (context, index) {
                // Message item = messages[index];

                var msgWidget = FMusicRowCell();

                return msgWidget;
              },
            ),
          )),
    );
  }
}
