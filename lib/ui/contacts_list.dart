import 'package:flip_app/shared/fcolors.dart';
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
    Toast.show("News " + index.toString() + "clicked", context, duration: Toast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    List<Contact> items = [];

    for(var i=1;i<15;i++){
      var c = Contact();
      c.title = "Me title $i";
      c.date = "14:$i last visit";
      c.subtitle = "Last visit $i";
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
      )
    );
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
      itemsTile.add(ContactTile(index: i, object: items[i], onClick: onItemClick));
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

  void onItemClick(Contact obj) {
    onClick(index, obj);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){ onItemClick(object); },
      child: Container(
        height: 60, width: double.infinity,
        padding: EdgeInsets.fromLTRB(15, 2, 15, 2),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(object.title, maxLines:3,
                            style: TextStyle(
                              color:  FColors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                        Spacer(),
                        Row(
                          children: <Widget>[
                            Text(object.subtitle.toUpperCase(), style: TextStyle(
                                color:  FColors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                            Spacer(),
                            Text(object.date,
                                style: TextStyle(
                                    color:  FColors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(width: 10),
                  Card(
                      margin: EdgeInsets.all(0), elevation: 0,
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8),),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset(object.image, height: 50, width: 50, fit: BoxFit.cover)
                  ),
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
