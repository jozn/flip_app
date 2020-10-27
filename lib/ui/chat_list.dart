import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ChatListPage extends StatefulWidget {
  ChatListPage();

  @override
  ChatListPageState createState() => new ChatListPageState();
}

class ChatListPageState extends State<ChatListPage> {
  BuildContext context;
  void onItemClick(int index) {
    Toast.show("News " + index.toString() + "clicked", context,
        duration: Toast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    List<Contact> items = [];

    for (var i = 1; i < 60; i++) {
      var c = Contact();
      c.id = i;
      c.title = "Me contancts name  $i";
      c.date = "14:$i last visit from yesterday";
      c.date2 = "14:$i pm";
      c.subtitle = "Last visit yesterday $i";
      c.image = "assets/avatars/$i.jpg";

      items.add(c);
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[ChatListAdapter(items, onItemClick).getView()],
          ),
        ));
  }
}

class ChatListAdapter {
  List items = <Contact>[];
  List itemsTile = <ChatRowCell>[];

  ChatListAdapter(this.items, onItemClick) {
    for (var i = 0; i < items.length; i++) {
      itemsTile
          .add(ChatRowCell(index: i, object: items[i], onClick: onItemClick));
    }
  }

  SliverList getView() {
    return SliverList(delegate: SliverChildListDelegate(itemsTile));
  }
}

// ignore: must_be_immutable
class ChatRowCell extends StatelessWidget {
  final Contact object;
  final int index;
  final Function onClick;

  const ChatRowCell({
    Key key,
    @required this.index,
    @required this.object,
    @required this.onClick,
  })  : assert(index != null),
        assert(object != null),
        assert(onClick != null),
        super(key: key);

  void onItemClick(Contact obj, BuildContext context) {
    // onClick(index, obj);
    Shared.showToast(context, "user " + this.object.image);
  }

  @override
  Widget build(BuildContext context) {
    var id = object.id;
    return InkWell(
      onTap: () {
        onItemClick(object, context);
      },
      child: Container(
        height: 64,
        color: FColors.transparent,
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
                      Text(object.date2,
                          maxLines: 3,
                          style: TextStyle(
                              color: FColors.contactsPage_rowUserTittle,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      Spacer(),
                      Text(object.title,
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
                        child: Text("$id",
                            maxLines: 3,
                            style: TextStyle(
                                color: FColors.inboxRow_unseenBadgeCounter,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ),
                      Spacer(),
                      Text(object.date,
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
                      child: Image.asset(
                        object.image,
                        height: 52,
                        // width: 52,
                        fit: BoxFit.fitHeight,
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
