import 'dart:math';

import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/pb/rpc_sample.pb.dart';
import 'package:flip_app/ui/cells/product_cell.dart';
import 'package:flip_app/ui/nav.dart';
import 'package:flip_app/ui/utils/images_mock.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import '../api.dart';

class FProductListCell extends StatefulWidget implements FPage {
  FProductListCell();

  @override
  _FProductListCellState createState() => new _FProductListCellState();

  @override
  Widget getWidget() {
    return this;
  }
}

class _FProductListCellState extends State<FProductListCell> {
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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        // color: Colors.white,
        child: Scrollbar(
          thickness: 4,
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            children: List.generate(100, (index) {
              // return AvatarCells.getSimpleAvatar(size: 90);
              var rnd = Random().nextInt(59) + 1;
              var imgSrc =
                  "http://192.168.43.160:5000/home/hamid/life/__files__/avatars/$rnd.jpg";
              var imgMok = imagesMock[index];
              var width = MediaQuery.of(context).size.width - 3;
              var o1 = Center(
                child: GestureDetector(
                  onTap: () {
                    print("called");
                  },
                  child: Card(
                      // color: Colors.blue,
                      margin: EdgeInsets.all(1),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          //borderRadius: BorderRadius.circular(800),
                          ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        "http://192.168.43.160:5000" + imgMok.src,
                        height: width,
                        width: width,
                        fit: BoxFit.cover,
                      )),
                ),
              );
              var o2 = ProductCells.getSampleProductBox(context: context);
              return o2;
            }),
          ),
        ),
      ),
    );
  }
}
