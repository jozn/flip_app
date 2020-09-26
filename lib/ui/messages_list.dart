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
  final TextEditingController inputController = new TextEditingController();
  List<Message> items = [];
  ChatTelegramAdapter adapter;

  @override
  void initState() {
    super.initState();
    items.add(Message.time(items.length, "Hai..", false, items.length % 5 == 0, Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)));
    items.add(Message.time(items.length, "Hello!", true, items.length % 5 == 0, Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)));
  }

  @override
  Widget build(BuildContext context) {
    adapter = ChatTelegramAdapter(context, items, onItemClick);

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
            Expanded(
              child: adapter.getView(),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  IconButton(icon: const Icon(Icons.sentiment_satisfied, ), onPressed: () {}),
                  Expanded(
                    child: TextField(
                      controller: inputController,
                      maxLines: 1, minLines: 1,
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
class Message{
  int id;
  String date;
  String content;
  bool fromMe;
  bool showTime = true;

  Message(int id, String content, bool fromMe, String date) {
    this.id = id;
    this.date = date;
    this.content = content;
    this.fromMe = fromMe;
  }

  Message.time(int id, String content, bool fromMe, bool showTime, String date) {
    this.id = id;
    this.date = date;
    this.content = content;
    this.fromMe = fromMe;
    this.showTime = showTime;
  }
}


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
                    child: Text(item.content,
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

class CircleImage extends StatelessWidget {

  final double size;
  final Color backgroundColor;
  final ImageProvider imageProvider;

  const CircleImage({
    Key key,
    @required this.imageProvider,
    this.size,
    this.backgroundColor,
  }) : assert(imageProvider != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));
    return Container(
        width: size != null ? size : 20,
        height: size != null ? size : 20,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor != null ? backgroundColor : Colors.transparent,
            image: new DecorationImage(
                fit: BoxFit.fill,
                image: imageProvider
            )
        )
    );
  }
}




class Tools {
  static void setStatusBarColor(Color color) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  static String allCaps(String str) {
    if(str != null && str.isNotEmpty){
      return str.toUpperCase();
    }
    return str;
  }

  static String getFormattedDateShort(int time) {
    DateFormat newFormat = new DateFormat("MMM dd, yyyy");
    return newFormat.format(new DateTime.fromMillisecondsSinceEpoch(time));
  }

  static String getFormattedDateSimple(int time) {
    DateFormat newFormat = new DateFormat("MMMM dd, yyyy");
    return newFormat.format(new DateTime.fromMillisecondsSinceEpoch(time));
  }

  static String getFormattedDateEvent(int time) {
    DateFormat newFormat = new DateFormat("EEE, MMM dd yyyy");
    return newFormat.format(new DateTime.fromMillisecondsSinceEpoch(time));
  }

  static String getFormattedTimeEvent(int time) {
    DateFormat newFormat = new DateFormat("h:mm a");
    return newFormat.format(new DateTime.fromMillisecondsSinceEpoch(time));
  }
  static String getFormattedCardNo(String cardNo){
    if(cardNo.length < 5) return cardNo;
    return cardNo.replaceAllMapped(RegExp(r".{4}"), (match) => "${match.group(0)} ");
  }

  static void directUrl(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    }
  }

}
