import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/pb/rpc_sample.pb.dart';
import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/ui/api.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'cells/FBottomNavBarCell.dart';

class ContactsListPage extends StatefulWidget {
  ContactsListPage();

  @override
  ContactsListPageState createState() => new ContactsListPageState();
}

class ContactsListPageState extends State<ContactsListPage> {
  BuildContext context;
  List<Profile> profiles = [];
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            color: Colors.redAccent,
          ),
        ),
        // bottomNavigationBar: FBottomNavBarCell(),
/*        body: ListView.builder(
          itemCount: profiles.length,
          itemBuilder: (context, index) {
            ContactRowCell(index: index,object: profiles[index], onClick: onItemClick);
          },
        )*/
/*        body: SafeArea(
          child: ListView.builder(
            itemCount: profiles.length,
            itemBuilder: (context, index) {
              ContactRowCell(index: index,object: profiles[index], onClick: onItemClick);
            },
          )
        )*/
/*        bottomNavigationBar: Container(
          height: 50,
          color: Colors.blueGrey,
        ),*/
        bottomNavigationBar: FBottomNavBarCell(),
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              ContactsListAdapter(this.profiles, onItemClick).getView_bk()
            ],
          ),
        )
    );
  }

/*  Widget build_old(BuildContext context) {
    this.context = context;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[

             CustomScrollView(
                slivers: <Widget>[
                  ContactsListAdapter(this.profiles, onItemClick).getView_bk()
                ],
              ),
            ],
          ),
        ));
  }*/
}

class ContactsListAdapter {
  List items = <Profile>[];
  List itemsTile = <ContactRowCell>[];
  Function onClick = null;

  ContactsListAdapter(this.items, onItemClick) {
    this.onClick = onItemClick;
    for (var i = 0; i < items.length; i++) {
      itemsTile.add(
          ContactRowCell(index: i, object: items[i], onClick: onItemClick));
    }
  }

  Widget getView2() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder:(context, index) {
        ContactRowCell(index: index, object: items[index], onClick: onClick);
      },
    );
  }
   Widget getView() {
    return Scrollbar(
      thickness: 10,
      child: SliverList(
          delegate: SliverChildListDelegate(itemsTile)),
    );
  }

  SliverList getView_bk() {
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
    var avatar = object.primaryChannel.avatar;
    var defCh = object.primaryChannel;
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
                  Row( // == Top row
                    children: [
                      Spacer(),
                      Text(defCh.channelName,
                          maxLines: 3,
                          style: TextStyle(
                              fontFamily: Shared.IRAN_FONT_MEDIUM,
                              color: FColors.contactsPage_rowUserTittle,
                              fontSize: 16,
                              // fontWeight: FontWeight.w600
                          )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row( // === Last activity
                    children: <Widget>[
                      Spacer(),
                      Text("last oninlie 3 hours ago",
                          style: TextStyle(
                            fontFamily: Shared.IRAN_FONT_LIGHT,
                            color: FColors.contactsPage_lastActivity,
                            fontSize: 15,
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
            SizedBox( // == Avatar holder
                width: 66,
                child: Center(
                  child: Card(
                      margin: EdgeInsets.all(0),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(800),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        "http://192.168.43.159:5000"+avatar.fullPath,
                        height: 50,
                        // height: avatar.height.toDouble(),
                        // width: avatar.width.toDouble(),
                        // width: avatar.width.toDouble(),
                        fit: BoxFit.fitHeight,
                      )
/*                      child: Image.asset(
                        object.primaryChannel.avatar.toString(),
                        height: 52,
                        // width: 52,
                        fit: BoxFit.fitHeight,
                      )*/
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
