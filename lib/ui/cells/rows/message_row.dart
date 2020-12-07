import 'dart:ui';

import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/utils/richtext_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../avatar_cell.dart';

class FMessageRowParam {
  Message message;
  num index;
}

// Default for right
class _MsgColors {
  static Color bubbleBackground = Colors.blue;
  static Color mainText = Colors.white;
  static Color dateText = Colors.grey[600];
}

enum _Align {
  right,
  left,
}

const BACKGROUND_COLOR = Colors.white;
const BACKGROUND_CHAT_COLOR = Color(0xfff5f5f5);

// imut
class _MsgParam {
  BuildContext context;
  Message msg;
  _Align align = _Align.right;
  // _MsgColors colors = _MsgColors();
  bool withAvatar;
  bool withFooter; // for channels msgs
  bool withUserHeader; // for channels
  double screenWidth;

  bool byMe;
  bool hasText;
}

class FMessageRow extends StatelessWidget {
  FMessageRowParam param;
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return buildListItemView();
  }

  Widget buildListItemView() {
    var p = _MsgParam();
    p.context = context;
    p.msg = param.message;
    p.withUserHeader = true;
    p.withFooter = true;
    p.withAvatar = true;
    p.screenWidth = MediaQuery.of(context).size.width;

    // var m = _MsgRowEntryHolder();
    // m.param = p;
    var m = _MsgWidgetsTypes.getText(p);

    return m;
  }
}

class _MsgWidgetsTypes {
  static Widget getText(_MsgParam param) {
    var txt = RichMsgText.getMsgRichText(param.msg, true);
    var buble = _commonMsgContentHolder(param: param, child: txt);
    return _commonMsgRow(param: param, child: buble);
  }

  static Widget getDateWidget(_MsgParam param) {
    var item = param.msg;
    var isMe = param.msg.gid % 2 == 0 ? true : false;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(item.createdTime.toString(),
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: 12,
                color: isMe ? Color(0xff58B346) : Color(0xffffB346))),
        Container(width: 3),
        isMe
            ? Icon(Icons.done_all, size: 12, color: Color(0xff58B346))
            : Container(width: 0, height: 0)
      ],
    );
  }

  static Widget getHeaderUserWidget(_MsgParam param) {
    Widget headerByChannel = SizedBox();
    if (param.withUserHeader) {
      headerByChannel = Container(
        padding: EdgeInsets.fromLTRB(4, 0, 6, 0),
        child: GestureDetector(
          onTap: () {
            FShared.showToast(param.context, "Go to Channel page");
          },
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              "آخرین خبر",
              maxLines: 1,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: FShared.IRAN_FONT,
                fontSize: 12,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      );
    }
    return headerByChannel;
  }

  static Widget getReplayForwardWidget(_MsgParam param) {
    Widget out = SizedBox();
    const double HEIGHT = 34;

    var childs = <Widget>[];

    // texts
    childs.add(Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "آخرین خبر",
          maxLines: 1,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 10,
            fontFamily: FShared.IRAN_FONT,
            color: Colors.blue,
            // fontWeight: FontWeight.w600,
            // height: 1.00,
          ),
        ),
        Text(
          "بر last message",
          // textHeightBehavior: TextHeightBehavior.fromEncoded(encoded),/
          maxLines: 1,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 10,
            fontFamily: FShared.IRAN_FONT_LIGHT,
            color: Colors.blue,
            // height: 1,
            // textBaseline: TextBaseline.ideographic,
          ),
        ),
      ],
    ));

    // show image
    if (true) {
      childs.add(Padding(
        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
        child: Image.asset(
          "assets/avatars/12.jpg",
          height: HEIGHT - 2,
          width: HEIGHT - 2,
        ),
      ));
    }

    if (true) {
      childs.add(Container(
        // width: 4,
        color: Colors.blue,
        margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
        child: SizedBox(
          width: 2,
          height: HEIGHT,
          //width: 4,
        ),
      ));
    }
    if (param.withUserHeader) {
      out = Container(
        padding: EdgeInsets.fromLTRB(4, 0, 6, 0),
        margin: EdgeInsets.fromLTRB(4, 0, 0, 2),
        height: 36,
        child: GestureDetector(
          onTap: () {
            FShared.showToast(param.context, "Go to Channel page");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: childs,
          ),
        ),
      );
    }
    return out;
  }

  static Widget _rowWithAvatar({_MsgParam param, Widget child}) {
    assert(param != null);
    assert(child != null);

    var width = param.screenWidth * 0.80; //- 4;

    if (param.withAvatar) {
      return Container(
        // color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end, // rtl
          crossAxisAlignment: CrossAxisAlignment.start, // avatar in top
          children: <Widget>[
            LimitedBox(
              maxWidth: width,
              child: child,
            ),
            // Expanded(),
            SizedBox(
              width: 44,
              child: AvatarCells.getSimpleAvatar(size: 38),
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: child,
      );
    }
  }

  static Widget _commonMsgRow({_MsgParam param, Widget child}) {
    assert(param != null);
    assert(child != null);

    var child2 = _rowWithAvatar(param: param, child: child);

    if (param.align == _Align.right) {
      return Container(
        color: FColors.transparent,
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: Row(
          children: <Widget>[
            Spacer(),
            child2,
            SizedBox(
              width: 0,
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 1,
            ),
            child2,
            Spacer(),
          ],
        ),
      );
    }
  }

  static Widget _commonMsgContentHolder({_MsgParam param, Widget child}) {
    assert(param != null);
    assert(child != null);

    Widget headerByChannelWidget = _MsgWidgetsTypes.getHeaderUserWidget(param);
    Widget replayForwardWidget = _MsgWidgetsTypes.getReplayForwardWidget(param);

    var width = param.screenWidth * 0.80; //- 4;

    return Container(
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.all(0),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        border:
            Border.all(width: 1, color: Color(0xffeeeeee)), //Colors.grey[200]
        color: BACKGROUND_CHAT_COLOR,
      ),
      // child: Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          headerByChannelWidget,
          replayForwardWidget,
          child,
          SizedBox(
            height: 3,
          ),
          Container(
            // color: Colors.white,
            // width: 100,
            child: Align(
              alignment: Alignment.bottomRight,
              child: _MsgWidgetsTypes.getDateWidget(param),
            ),
          ),
        ],
      ),
    );
  }
}
