import 'dart:math';

import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/cells/avatar_cell.dart';
import 'package:flutter/material.dart';

class _DataProxy {
  Direct direct;

  String lastMsg() {
    return direct.group.lastMessage.text;
  }

  String getTitle() {
    return direct.group.groupTitle;
  }

  String getAvatar() {
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
    if (onClick != null) {
      onClick();
    }
  }

  @override
  Widget build(BuildContext context) {
    var id = 44; //direct.id;
    var data = _DataProxy();
    data.direct = this.direct;
    var lastMsgtxt =
        data.lastMsg().toString().substring(0, min(data.lastMsg().length, 700));

    return InkWell(
      onTap: () {
        onItemClick(direct, context);
      },
      child: Container(
        height: 64,
        color: Colors.transparent,
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
                      // Spacer(),
                      SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        child: Text(lastMsgtxt,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textDirection: TextDirection.rtl,
                            softWrap: false,
                            style: TextStyle(
                              color: FColors.contactsPage_lastActivity,
                              fontFamily: FShared.IRAN_FONT_LIGHT,
                              fontSize: 13,
                            )),
                      ),
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
            AvatarCells.getSimpleAvatar(size: 52, src: data.getAvatar()),
          ],
        ),
      ),
    );
  }
}
