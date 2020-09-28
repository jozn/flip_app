import 'package:flip_app/shared/shared.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';


class ChatTelegramRoute extends StatefulWidget {

  ChatTelegramRoute();

  @override
  ChatTelegramRouteState createState() => new ChatTelegramRouteState();
}


class ChatTelegramRouteState extends State<ChatTelegramRoute> {

  bool showSend = false;
  double dsf = 0;

  final TextEditingController inputController = new TextEditingController();
  List<Message> items = [];
  ChatTelegramAdapter adapter;

  @override
  void initState() {
    super.initState();
    var m1= "sdfsafsd kfjsdflsdflksdf slkjfds";
    items.add(Message.time(items.length, "Hai..", false, items.length % 5 == 0, Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)));
    items.add(Message.time(items.length, "Hello!", true, items.length % 5 == 0, Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)));
    items.add(Message.time(items.length, m1, true, items.length % 5 == 0, Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)));
    items.add(Message.time(items.length, m1, true, items.length % 5 == 0, Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)));
  }

  @override
  Widget build(BuildContext context) {
    adapter = ChatTelegramAdapter(context, items, onItemClick);
    print("build $dsf"); dsf++;

    return Scaffold(
      backgroundColor: Color(0xffD0DBE2),
      appBar: AppBar(
          backgroundColor: Color(0xff527DA3),
          title: Row(
            children: <Widget>[
              CircleImage(
                imageProvider: AssetImage("assets/avatars/8.jpg"), size: 40,
              ),
              Container(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Mary Jackson",
                  ),
                  Container(height: 2),
                  Text("Online",
                  ),
                ],
              )
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: (String value){},
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ],
            )
          ]
      ),
      body: Container(
        width: double.infinity, height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            // Messages list
            Expanded(
              child: adapter.getView(),
            ),
            // Input box
            Container(
              color: Colors.white,
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  IconButton(icon: const Icon(Icons.sentiment_very_satisfied, ), onPressed: () {}),
                  Expanded(
                    child: TextField(
                      controller: inputController,
                      maxLines: 1000000,
                      minLines: 1,
                      keyboardType: TextInputType.multiline,
                      decoration: new InputDecoration.collapsed(
                          hintText: 'Message'
                      ),
                      onChanged: (term){
                        setState(() { showSend = (term.length > 0); });
                      },
                    ),
                  ),
                  IconButton(icon: Icon(Icons.attach_file, ), onPressed: () {}),
                  IconButton(icon: Icon(showSend ? Icons.send : Icons.mic, color: Colors.blue), onPressed: () {
                    if(showSend) sendMessage();
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onItemClick(int index, String obj) { }

  void sendMessage(){
    String message = inputController.text;
    inputController.clear();
    showSend = false;
    setState(() {
      adapter.insertSingleItem(
          Message.time(adapter.getItemCount(), message, true,
              adapter.getItemCount() % 5 == 0,
              Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)
          )
      );
    });
    generateReply(message);
  }

  void generateReply(String msg){
    Timer(Duration(seconds: 1), () {
      setState(() {
        adapter.insertSingleItem(
            Message.time(adapter.getItemCount(), msg, false, adapter.getItemCount() % 5 == 0,
                Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)
            )
        );
      });
    });
  }
}

//////////////////////////////


class ChatTelegramAdapter {

  List items = <Message>[];
  BuildContext context;
  Function onItemClick;
  ScrollController scrollController = new ScrollController();

  ChatTelegramAdapter(this.context, this.items, this.onItemClick);

  void insertSingleItem(Message msg) {
    int insertIndex = items.length;
    items.insert(insertIndex, msg);
    scrollController.animateTo(
        scrollController.position.maxScrollExtent + 100,
        duration: Duration(milliseconds: 100),
        curve: Curves.easeOut
    );
  }

  Widget getView() {
    return ListView.builder(itemCount: items.length,
      padding: EdgeInsets.symmetric(vertical: 10),
      controller: scrollController,
      itemBuilder: (context, index) {
        Message item = items[index];
        return buildListItemView(index, item);
      },
    );
  }

  Widget buildListItemView(int index, Message item){
    var p = _MsgParam();
    p.msg = item;
    p.withUserHeader = true;
    p.withFooter = true;
    p.withAvatar = true;

    var m =_MsgRowEntryHolder();
    m.param = p;

    return m;
  }

  Widget buildListItemView2(int index, Message item){
    bool isMe = item.fromMe;

    return Wrap(
      alignment: isMe ? WrapAlignment.end : WrapAlignment.start,
      children: <Widget>[
        Card(
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5),),
            margin: EdgeInsets.fromLTRB(isMe ? 20 : 10, 5, isMe ? 10 : 20, 5),
            color: isMe ? Color(0xffEFFFDE) : Colors.white, elevation: 1,
            child : Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints(minWidth: 150),
                    child: Text("$index "+item.content,
                        maxLines: 100,
                      softWrap: true,
                                           ),
                  ),
                  Container(height: 3, width: 0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(item.date, textAlign: TextAlign.end, style: TextStyle(fontSize: 12, color: isMe ? Color(0xff58B346) : Color(0xffffB346))),
                      Container(width: 3),
                      isMe ? Icon(Icons.done_all, size: 12, color: Color(0xff58B346)) : Container(width: 0, height: 0)
                    ],
                  )
                ],
              ),
            )
        )
      ],
    );
  }

  int getItemCount() => items.length;

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
    Message msg;
    _Align align = _Align.right;
    _MsgColors colors = _MsgColors();
    bool withAvatar;
    bool withFooter; // for channels msgs
    bool withUserHeader; // for channels

}

class _MsgRowEntryHolder extends StatelessWidget {

  _MsgParam param;

  @override
  Widget build(BuildContext context) {
    var allContent = _MsgRowAllContent();
    allContent.param = param;

    if(param.align == _Align.right){
      return Container(
        color: Colors.grey[500],
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: Row(

          children: <Widget> [
            Spacer(),
            allContent,
            SizedBox(width: 10,),
          ],
        ),
      );
    }else{
      return Container(

        child: Row(

          children: <Widget> [
            SizedBox(width: 10,),
            allContent,
            Spacer(),
          ],
        ),

      );
    }
  }
}

class _MsgRowAllContent extends StatelessWidget {
  _MsgParam param;

  @override
  Widget build(BuildContext context) {
    var contentFull = _MsgRowFullContents();
    contentFull.param = param;

    if(param.withAvatar){
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            contentFull,
            Align(
              child: CircleImage(
                imageProvider: AssetImage("assets/avatars/8.jpg"), size: 40,
              ),
            ),
            // MsgContent
            // Avatar
          ],
        ),
      );
    }else{
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

    var bubble  = _MsgRowBubble();
    bubble.param = param;

    var childs = <Widget> [
      bubble,
    ];

    if(param.withFooter) {
      var footer  = _MsgRowFooter();
      footer.param = param;
      childs.add(footer);
    }

    return Container(
      child: Column(

        children: childs,
      ),
    );
  }
}

class _MsgRowBubble extends StatelessWidget {
  _MsgParam param;

  @override
  Widget build(BuildContext context) {

    var childs = <Widget> [

    ];

    if(param.withAvatar){
      return Container(
        padding: EdgeInsets.all(4),
        color: Colors.white,
        margin: EdgeInsets.all(4),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: <Widget> [
            Text(" sdfldskjfklshfds slkfdsfljksd kljasfl"),
         Container(
           color: Colors.red,
           // width: 100,
           child: Align(
             alignment: Alignment.bottomRight,
             child: getDateWidget(param),
           ),
         ),
          ],
        ),
      );
    }else{
      return Container(
        // Just Msg Content
      );
    }
  }
}

class _MsgRowFooter extends StatelessWidget {
  _MsgParam param;

  @override
  Widget build(BuildContext context) {

    var childs = <Widget> [

    ];

    return Container(
      child: Column(

        children: <Widget> [
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

    var childs = <Widget> [

    ];

    return Container(
      child: Row(

        children: <Widget> [
          Text("Footer info")
        ],
      ),
    );
  }
}

class _MsgRowFooterButtons extends StatelessWidget {
  _MsgParam param;

  @override
  Widget build(BuildContext context) {

    var childs = <Widget> [

    ];

    return Container(
      child: Row(

        children: <Widget> [
          Text("Footer buttons")
        ],
      ),
    );
  }
}

Widget getDateWidget(_MsgParam param){
  var item = param.msg;
  var isMe = param.msg.id %2 ==0 ? true : false;

  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Text(item.date, textAlign: TextAlign.end, style: TextStyle(fontSize: 12, color: isMe ? Color(0xff58B346) : Color(0xffffB346))),
      Container(width: 3),
      isMe ? Icon(Icons.done_all, size: 12, color: Color(0xff58B346)) : Container(width: 0, height: 0)
    ],
  );
}
