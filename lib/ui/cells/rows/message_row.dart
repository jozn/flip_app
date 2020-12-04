import 'dart:ui';

import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/cells/avatar_cell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMessageRowParam {
  Message message;
  num index;
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

    var m = _MsgRowEntryHolder();
    m.param = p;

    return m;
  }
}

enum _Align {
  right,
  left,
}

// Default for right
class _MsgColors {
  Color bubbleBackground = Colors.blue;
  Color mainText = Colors.white;
  Color dateText = Colors.grey[600];
}

class _MsgParam {
  BuildContext context;
  Message msg;
  _Align align = _Align.right;
  _MsgColors colors = _MsgColors();
  bool withAvatar;
  bool withFooter; // for channels msgs
  bool withUserHeader; // for channels
  double screenWidth;
}

// const BACKGROUND_COLOR = Color(0xffEEEEEE);
const BACKGROUND_COLOR = Colors.white;
// const BACKGROUND_CHAT_COLOR = Colors.white;//Color(0xffeeeeee);
// const BACKGROUND_CHAT_COLOR = Color(0xfff8f8f8);
// const BACKGROUND_CHAT_COLOR = Color(0xfff7f7f7);
// const BACKGROUND_CHAT_COLOR = Color(0xfff6f6f6);
const BACKGROUND_CHAT_COLOR = Color(0xfff5f5f5);
// const BACKGROUND_CHAT_COLOR = Color(0xfff3f3f3);

class _MsgRowEntryHolder extends StatelessWidget {
  _MsgParam param;

  @override
  Widget build(BuildContext context) {
    var allContent = _MsgRowAllContentWithAvatar();
    allContent.param = param;

    // var screenWidth =

    if (param.align == _Align.right) {
      return Container(
        color: FColors.transparent,
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: Row(
          children: <Widget>[
            Spacer(),
            allContent,
            SizedBox(
              width: 10,
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            allContent,
            Spacer(),
          ],
        ),
      );
    }
  }
}

class _MsgRowAllContentWithAvatar extends StatelessWidget {
  _MsgParam param;

  @override
  Widget build(BuildContext context) {
    var contentFull = _MsgRowFullContents();
    contentFull.param = param;

    if (param.withAvatar) {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            contentFull,
            Align(
              child: AvatarCells.getSimpleAvatar(),
              /*child: CircleImage(
                imageProvider: AssetImage("assets/avatars/8.jpg"),
                size: 40,
              ),*/
            ),
            // MsgContent
            // Avatar
          ],
        ),
      );
    } else {
      return Container(
        child: contentFull,
      );
    }
  }
}

class _MsgRowFullContents extends StatelessWidget {
  _MsgParam param;

  @override
  Widget build(BuildContext context) {
    var bubble = _MsgRowBubble();
    bubble.param = param;

    var childs = <Widget>[
      bubble,
    ];

    if (param.withFooter) {
      var footer = _MsgRowFooter();
      footer.param = param;
      childs.add(footer);
    }

    return Container(
      width: param.screenWidth * 0.80,

      // child: Expanded(
      child: Column(
        children: childs,
      ),
      // ),
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

class _MsgRowBubble extends StatelessWidget {
  _MsgParam param;
  _MediaSize _mediaSize;

  @override
  Widget build(BuildContext context) {
    var childs = <Widget>[];

    Widget headerByChannelWidget = getHeaderUserWidget(param);
    Widget replayForwardWidget = getReplayForwardWidget(param);

    var width = param.screenWidth * 0.80; //- 4;
    FileMsg img;
    if (param.msg.files.length > 0) {
      img = param.msg.files[0];
    } else {
      img = FileMsg();
      img.fullPath =
          "/home/hamid/life/__files__/Telegram/images/400025900436_18056.jpg";
      img.width = 720;
      img.height = 1280;
    }
    _mediaSize = _MediaSize(img.width.toDouble(), img.height.toDouble(), width);
    // img.height = (param.screenWidth * 0.80) as num;

    return Container(
      padding: EdgeInsets.all(6),
      // color: Colors.white,
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
          Center(
            // Media
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Image.network(
                "http://192.168.43.160:5000" + img.fullPath,
                width: _mediaSize.adjustedWidth,
                height: _mediaSize.adjustedHeight,
                fit: BoxFit.fitWidth,
              ),
              /*child: Image.asset(
                "assets/dog2.jpg",
                width: width,
                height: width,
                fit: BoxFit.fill,
              ),*/
            ),
          ),
          Text(
            param.msg.text,
            softWrap: true,
            maxLines: 10000,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: FShared.IRAN_FONT,
              // fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            // color: Colors.white,
            // width: 100,
            child: Align(
              alignment: Alignment.bottomRight,
              child: getDateWidget(param),
            ),
          ),
        ],
      ),
      // ),
    );
  }
}

class _MsgRowFooter extends StatelessWidget {
  _MsgParam param;

  @override
  Widget build(BuildContext context) {
    var childs = <Widget>[];

    return Container(
      child: Column(
        children: <Widget>[
          _MsgRowFooterInfo(),
          Text("Footer"),
          _MsgRowFooterButtons(),
        ],
      ),
    );
  }
}

class _MsgRowFooterInfo extends StatelessWidget {
  _MsgParam param;

  @override
  Widget build(BuildContext context) {
    var childs = <Widget>[];

    return Container(
      child: Row(
        children: <Widget>[Text("Footer info")],
      ),
    );
  }
}

class _MsgRowFooterButtons extends StatelessWidget {
  _MsgParam param;

  @override
  Widget build(BuildContext context) {
    var childs = <Widget>[];

    return Container(
      child: Row(
        children: <Widget>[Text("Footer buttons")],
      ),
    );
  }
}

Widget getDateWidget(_MsgParam param) {
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

Widget getHeaderUserWidget(_MsgParam param) {
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

Widget getReplayForwardWidget(_MsgParam param) {
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

/////////////////// Archive ///////////////////
var m2 = """ 🔻
گوشت و فیله ی سینه ی مرغ برای سوزاندن چربی بهترین گزینه است.


✍️ همچنین سفیده ی تخم مرغ به دلیل داشتن پروتئین و انرژی عالی در سوزاندن چربی ها کمک رسان خوبی می باشد

🆔 @FARIBA_FITNESS مربیِ برتر ™

دریافت برنامه تمرین و رژیم👇
🔴 @FITNESS_19""";
var m1 = """ 🔻پایان اخذ رای در 3 حوزه انتخابیه استان فارس

رئیس ستاد انتخابات استان فارس از پایان اخذ رای در3 حوزه انتخاباتی استان فارس خبرداد.
به گزارش خبرگزاری فارس از شیراز، احمد احمدی زاده، جمعه شب درجمع خبرنگاران از پایان رای گیری در 3 حوزه انتخاباتی اخذ رای در استان خبرداد وگفت:انتخابات یازدهیمن دوره مجلس شوای اسلامی در شعب های انتخابیه رستم،ممسنی،فیروزآباد،مرودشت ارسنجان،پاسارگاد،بیضا وسپیدان به پایان رسید.

📌http://fna.ir/dfgfnp

✅خبرگزاری فارس استان فارس👇🏻👇🏻
https://t.me/farsnaonline""";
