import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ContactsListPage extends StatefulWidget {
  ContactsListPage();

  @override
  ContactsListPageState createState() => new ContactsListPageState();
}

class ContactsListPageState extends State<ContactsListPage> {
  BuildContext context;
  void onItemClick(int index) {
    Toast.show("News " + index.toString() + "clicked", context,
        duration: Toast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    List<Contact> items = [];

    for (var i = 1; i < 15; i++) {
      var c = Contact();
      c.title = "Me contancts name  $i";
      c.date = "14:$i last visit from yesterday";
      c.subtitle = "Last visit yesterday $i";
      c.image = "assets/avatars/$i.jpg";

      items.add(c);
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              ContactsListAdapter(items, onItemClick).getView()
            ],
          ),
        ));
  }
}

class Contact {
  String title;
  String date;
  String subtitle;
  String image;
}

class ContactsListAdapter {
  List items = <Contact>[];
  List itemsTile = <ContactTile>[];

  ContactsListAdapter(this.items, onItemClick) {
    for (var i = 0; i < items.length; i++) {
      itemsTile
          .add(ContactTile(index: i, object: items[i], onClick: onItemClick));
    }
  }

  SliverList getView() {
    return SliverList(delegate: SliverChildListDelegate(itemsTile));
  }
}

// ignore: must_be_immutable
class ContactTile extends StatelessWidget {
  final Contact object;
  final int index;
  final Function onClick;

  const ContactTile({
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
    Shared.showToast(context, "user "+ this.object.image);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onItemClick(object,context);
      },
      child: Container(
        height: 60,
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
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
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
              )
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildOld(BuildContext context) {
    return InkWell(
      onTap: () {
        //onItemClick(object);
      },
      child: Container(
        height: 58,
        color: FColors.transparent,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Spacer(),
                            Text(object.title,
                                maxLines: 3,
                                style: TextStyle(
                                    color: FColors.contactsPage_rowUserTittle,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            /*Text(object.subtitle.toUpperCase(),
                                style: TextStyle(
                                    color: FColors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),*/
                            Spacer(),
                            Text(object.date,
                                style: TextStyle(
                                  color: FColors.contactsPage_lastActivity,
                                  fontSize: 14,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(width: 10),
                  Card(
                      margin: EdgeInsets.all(0),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(800),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset(
                        object.image,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            ),
            Container(height: 0),
            Divider(height: 0),
          ],
        ),
      ),
    );
  }
}
