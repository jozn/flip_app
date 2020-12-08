import 'dart:math';
import 'dart:ui';

import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/fstrings.dart';
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
    var rnd = Random();
    p.context = context;
    p.msg = param.message;
    // p.withUserHeader = true;
    // p.withFooter = true;
    // p.withAvatar = true;
    p.withUserHeader = rnd.nextBool();
    p.withFooter = true;
    p.withAvatar = rnd.nextBool();
    p.screenWidth = MediaQuery.of(context).size.width;

    print(param.message.messageType);

    Widget m;
    switch (param.message.messageType) {
      case MessageType.TEXT:
        m = _MsgTypesWidgets.getText(p);
        break;
      case MessageType.IMAGE:
        m = _MsgTypesWidgets.getImage(p);
        break;
      default:
        m = _MsgTypesWidgets.getUnknow(p);
        break;
    }

    return m;
  }
}

class _MsgTypesWidgets {
  static Widget getText(_MsgParam param) {
    var txt = _MsgSharedSubWidgets.getMsgText(param);
    var buble =
        _MsgCommonBuild._commonMsgContentHolder(param: param, child: txt);
    return _MsgCommonBuild._commonMsgRow(param: param, child: buble);
  }

  static Widget getImage(_MsgParam param) {
    var txt;
    if (param.msg.text.length > 0) {
      txt = _MsgSharedSubWidgets.getMsgText(param);
    }

    var width = param.screenWidth * 0.80; //- 4;
    var img = param.msg.files[0];
    var _mediaSize =
        _MediaSize(img.width.toDouble(), img.height.toDouble(), width);

    var media = Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Image.network(
        "http://192.168.43.160:5000" + img.fullPath,
        width: _mediaSize.adjustedWidth,
        height: _mediaSize.adjustedHeight,
        fit: BoxFit.cover,
      ),
    );

    List<Widget> child = [];
    if (media != null) {
      child.add(media);
    }
    if (txt != null) {
      child.add(txt);
    }

    var cols = Column(
      children: child,
    );

    var bubble =
        _MsgCommonBuild._commonMsgContentHolder(param: param, child: cols);
    return _MsgCommonBuild._commonMsgRow(param: param, child: bubble);
  }

  static Widget getUnknow(_MsgParam param) {
    var txt = Text(FStrings.chatMsg_UnknowMsgType);
    var buble =
        _MsgCommonBuild._commonMsgContentHolder(param: param, child: txt);
    return _MsgCommonBuild._commonMsgRow(param: param, child: buble);
  }
}

class _MsgSharedSubWidgets {
  static Widget getMsgText(_MsgParam param) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: RichMsgText.getMsgRichText(param.msg, true),
    );
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
    Widget headerByChannel = SizedBox(); // empty
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
    Widget out = SizedBox(); // empty
    const double HEIGHT = 34;

    if (param.withUserHeader) {
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

  static Widget getFooterAll(_MsgParam param) {
    Widget out = SizedBox(); // empty
    const double HEIGHT = 34;

    if (param.withFooter) {
      out = Container(
        child: Column(
          children: <Widget>[
            _MsgGlassButton(),
            getSampleGlassButtons(2),
            getSampleGlassButtons(3),
          ],
        ),
      );
    }

    return out;
  }

  static Widget getSampleGlassButtons(int cnt) {
    var out = Row(
      children: <Widget>[],
    );
    for (var i = 0; i < cnt; i++) {
      out.children.add(Expanded(child: _MsgGlassButton()));
      if (i != cnt - 1) {
        out.children.add(SizedBox(
          width: 4,
        ));
      }
    }
    return out;
  }

  //likes, comments
  static Widget getActionBar(_MsgParam param) {
    Widget out = SizedBox(); // empty
    const double HEIGHT = 34;

    if (param.withFooter) {
      out = Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
              color: Colors.grey[500],
              height: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.repeat),
                        Text("ReShare"),
                      ],
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.comment),
                        Text("13"),
                      ],
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text("345"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.add_location_outlined),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return out;
  }
}

class _MsgCommonBuild {
  static Widget _rowWithAvatar({_MsgParam param, Widget child}) {
    assert(param != null);
    assert(child != null);

    var width = param.screenWidth * 0.80; //- 4;

    var avatarHolder;
    if (param.withAvatar) {
      avatarHolder = SizedBox(
        width: 50,
        child: AvatarCells.getSimpleAvatar(size: 38),
      );
    } else {
      avatarHolder = SizedBox(
        width: 12,
      );
    }

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
          avatarHolder,
        ],
      ),
    );
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

    Widget headerByChannelWidget =
        _MsgSharedSubWidgets.getHeaderUserWidget(param);
    Widget replayForwardWidget =
        _MsgSharedSubWidgets.getReplayForwardWidget(param);

    Widget footerWidget = _MsgSharedSubWidgets.getFooterAll(param);

    var width = param.screenWidth * 0.80; //- 4;

    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(2),
          margin: EdgeInsets.all(0),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            border: Border.all(
                width: 1, color: Color(0xffeeeeee)), //Colors.grey[200]
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
                  child: _MsgSharedSubWidgets.getDateWidget(param),
                ),
              ),
              _MsgSharedSubWidgets.getActionBar(param),
            ],
          ),
        ),
        footerWidget,
      ],
    );
  }
}

class _MediaSize {
  double originalWidth;
  double originalHeight;

  double adjustedWidth;
  double adjustedHeight;

  double screenWidth;

  _MediaSize(this.originalWidth, this.originalHeight, this.screenWidth) {
    // this.screenWidth = screenWidth *0.8;
    if (screenWidth >= originalWidth) {
      // stretch - small image
      adjustedWidth = screenWidth;
      var ratio = screenWidth / originalWidth;
      adjustedHeight = ratio * originalHeight;
    } else {
      // shrink - big image
      adjustedWidth = screenWidth;
      var ratio = screenWidth / originalWidth;
      adjustedHeight = ratio * originalHeight;
    }

    const MAX_VERTICAL_RATIO = 1.2;
    var ratio = adjustedHeight / adjustedWidth;
    if (ratio > MAX_VERTICAL_RATIO) {
      adjustedHeight = MAX_VERTICAL_RATIO * adjustedWidth;
    }
  }

  double getWidth() {
    return originalHeight;
  }
}

class _MsgGlassButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tap glass btn");
      },
      child: Container(
        height: 42,
        margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color.fromARGB(50, 50, 50, 50),
          boxShadow: [
            //BoxShadow(color: Colors.green, spreadRadius: 3),
          ],
        ),
        // color: Color.fromARGB(50, 50, 50, 50),
        child: Stack(
          children: <Widget>[
            Positioned(
                right: 6,
                top: 4,
                child: Icon(
                  Icons.open_in_new_outlined,
                  size: 14,
                  color: Colors.white,
                )),
            Center(
              child: Text(
                "some link",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: FShared.IRAN_FONT,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
