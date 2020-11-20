import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/pb/rpc_sample.pb.dart';
import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/utils/FLeftScrollbar.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class _DataProxy {
  Direct direct;

  String lastMsg(){
    return direct.group.lastMessage.text;
  }

  String getTitle(){
    return direct.group.groupTitle;
  }

  String getAvatar(){
    return direct.group.avatar.fullPath;
  }

}
// ignore: must_be_immutable
class FDirectRowCell extends StatelessWidget {
  final Direct direct;
  final int index;
  final Function onClick;

  const FDirectRowCell({
    Key key,
    @required this.index,
    @required this.direct,
    @required this.onClick,
  })  : assert(index != null),
        assert(direct != null),
        assert(onClick != null),
        super(key: key);

  void onItemClick(Direct obj, BuildContext context) {
    // onClick(index, obj);
    FShared.showToast(context, "user " + this.direct.avatar.fullPath);
  }

  @override
  Widget build(BuildContext context) {
    var id = 44;//direct.id;
    var data = _DataProxy();
    data.direct = this.direct;

    return InkWell(
      onTap: () {
        onItemClick(direct, context);
      },
      child: Container(
        height: 64,
        color: Colors.white,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Row(
                    children: [
                      Text(direct.createdTime.toString(),
                          maxLines: 3,
                          style: TextStyle(
                              color: FColors.contactsPage_rowUserTittle,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      Spacer(),
                      Text(data.getTitle(),
                          maxLines: 3,
                          style: TextStyle(
                              color: FColors.contactsPage_rowUserTittle,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        // color: FColors.pages_background,
                        // height: 18,
                        decoration: BoxDecoration(
                          color: FColors.inboxRow_unseenBadgeBackground,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        padding:
                        EdgeInsets.symmetric(vertical: 2.5, horizontal: 8),
                        child: Text(direct.unseenCount.toString(),
                            maxLines: 3,
                            style: TextStyle(
                                color: FColors.inboxRow_unseenBadgeCounter,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ),
                      Spacer(),
                      Text(data.lastMsg(),
                          style: TextStyle(
                            color: FColors.contactsPage_lastActivity,
                            fontSize: 14,
                          )),
                    ],
                  ),
                  Spacer(),
                  Divider(
                    color: FColors.contactsPage_divider,
                    height: 1,
                  )
                ],
              ),
            ),
            SizedBox(
                width: 66,
                child: Center(
                  child: Card(
                      margin: EdgeInsets.all(0),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(800),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        "http://192.168.43.159:5000"+data.getAvatar(),
                        height: 52,
                        fit: BoxFit.fitHeight,
                      )
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
