import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ContactsListPageOld extends StatefulWidget {
  ContactsListPageOld();

  @override
  ContactsListPageOldState createState() => new ContactsListPageOldState();
}

class ContactsListPageOldState extends State<ContactsListPageOld> {
  BuildContext context;
  void onItemClick(int index) {
    Toast.show("News " + index.toString() + "clicked", context,
        duration: Toast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    List<Contact_HERE> items = [];

    for (var i = 1; i < 15; i++) {
      var c = Contact_HERE();
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

class ContactsListAdapter {
  List items = <Contact_HERE>[];
  List itemsTile = <ContactRowCell>[];

  ContactsListAdapter(this.items, onItemClick) {
    for (var i = 0; i < items.length; i++) {
      itemsTile.add(
          ContactRowCell(index: i, object: items[i], onClick: onItemClick));
    }
  }

  SliverList getView() {
    return SliverList(delegate: SliverChildListDelegate(itemsTile));
  }
}

// ignore: must_be_immutable
class ContactRowCell extends StatelessWidget {
  final Contact_HERE object;
  final int index;
  final Function onClick;

  const ContactRowCell({
    Key key,
    @required this.index,
    @required this.object,
    @required this.onClick,
  })  : assert(index != null),
        assert(object != null),
        assert(onClick != null),
        super(key: key);

  void onItemClick(Contact_HERE obj, BuildContext context) {
    // onClick(index, obj);
    Shared.showToast(context, "user " + this.object.image);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onItemClick(object, context);
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
                )),
          ],
        ),
      ),
    );
  }
}
