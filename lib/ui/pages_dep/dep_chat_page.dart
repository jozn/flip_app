import 'package:flip_app/shared/fstrings.dart';
import 'package:flip_app/ui/cells/message_list.dart';
import 'package:flutter/material.dart';

import '../cells/top_navbar.dart';

class ChatPage_Dep extends StatefulWidget {
  ChatPage_Dep();

  @override
  _ChatPage_DepState createState() => new _ChatPage_DepState();
}

class _ChatPage_DepState extends State<ChatPage_Dep> {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: FSimpleTopNavBarCell(title: FStrings.chatPage_title),
          //bottomNavigationBar: FBottomNavBarCell(),
          body: SafeArea(
            // child: FMessageListCell(),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: FMessageListCell(),
                ),
                _InputMsgText(),
              ],
            ),
          )),
    );
  }
}

class _InputMsgText extends StatefulWidget {
  @override
  _InputMsgTextState createState() {
    return _InputMsgTextState();
  }
}

class _InputMsgTextState extends State<_InputMsgText> {
  final TextEditingController inputController = new TextEditingController();
  bool showSend = false;

  void sendMessage() {
    String message = inputController.text;
    inputController.clear();
    showSend = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,//Colors.white,
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.sentiment_very_satisfied,
              ),
              onPressed: () {}),
          Expanded(
            child: TextField(
              controller: inputController,
              maxLines: 1000000,
              minLines: 1,
              keyboardType: TextInputType.multiline,
              decoration: new InputDecoration.collapsed(hintText: 'Message'),
              onChanged: (term) {
                setState(() {
                  showSend = (term.length > 0);
                });
              },
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.attach_file,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(showSend ? Icons.send : Icons.mic, color: Colors.blue),
              onPressed: () {
                if (showSend) sendMessage();
              }),
        ],
      ),
    );
  }
}

////////////////////////// Archive //////////////////////
Widget _getInputBar() {
  final TextEditingController inputController = new TextEditingController();
  bool showSend = false;

  void sendMessage() {
    String message = inputController.text;
    inputController.clear();
    showSend = false;
  }

  return Container(
    //color: Colors.green,//Colors.white,
    alignment: Alignment.centerLeft,
    child: Row(
      children: <Widget>[
        IconButton(
            icon: const Icon(
              Icons.sentiment_very_satisfied,
            ),
            onPressed: () {}),
        Expanded(
          child: TextField(
            controller: inputController,
            maxLines: 1000000,
            minLines: 1,
            keyboardType: TextInputType.multiline,
            decoration: new InputDecoration.collapsed(hintText: 'Message'),
            onChanged: (term) {
              /*setState(() {
                showSend = (term.length > 0);
              });*/
            },
          ),
        ),
        IconButton(
            icon: Icon(
              Icons.attach_file,
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(showSend ? Icons.send : Icons.mic, color: Colors.blue),
            onPressed: () {
              if (showSend) sendMessage();
            }),
      ],
    ),
  );
}
