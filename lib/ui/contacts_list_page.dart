import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/pb/rpc_sample.pb.dart';
import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/api.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ContactsListPage extends StatefulWidget {
  ContactsListPage();

  @override
  ContactsListPageState createState() => new ContactsListPageState();
}

class ContactsListPageState extends State<ContactsListPage> {
  BuildContext context;
  List<Profile> profiles;
  void onItemClick(int index) {
    Toast.show("News " + index.toString() + "clicked", context,
        duration: Toast.LENGTH_SHORT);
  }

  @override
  void initState() {
    super.initState();
    fetchContacts();
  }

  void fetchContacts() async {
    // var later = RPC_Sample.getProfiles(GetProfilesParam());
    // later.then((value) => {setNewProfiles(value.profiles)});
    var res = await RPC_Sample.getProfiles(GetProfilesParam());
    setNewProfiles(res.profiles);
  }

  void setNewProfiles(List<Profile> profiles) {
    print(profiles);
    this.setState(() {
      this.profiles = profiles;
    });
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              ContactsListAdapter(this.profiles, onItemClick).getView()
            ],
          ),
        ));
  }
}

class ContactsListAdapter {
  List items = <Profile>[];
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
  final Profile object;
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

  void onItemClick(Profile obj, BuildContext context) {
    // onClick(index, obj);
    Shared.showToast(context, "user " + this.object.primaryChannel.userName);
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
                      Text(object.primaryChannel.channelName,
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
                      Text(object.primaryChannel.createdTime.toString(),
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
                        object.primaryChannel.avatar.toString(),
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
