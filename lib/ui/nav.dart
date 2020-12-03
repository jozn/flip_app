import 'dart:collection';

import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/fstrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FNav {
  void push() {}
  void pop() {}
  void replace() {}
  void s() {}
}

class FNavInstance {
  var activeBranch = dep_defaultBranch();
  var mapTree = HashMap<FBranch, List<FPage>>();
  var orderedBranches = <FBranch>[dep_defaultBranch()];

  push(FPage page) {
    var activeStake = mapTree[activeBranch];
    if (activeStake == null) {
      // extract??
      activeStake = <FPage>[];
      mapTree[activeBranch] = activeStake;
    }
    activeStake.add(FPage());
    invalidate();
  }

  pop() {
    // in branch stack
    var activeStake = mapTree[activeBranch];
    if (activeStake != null) {
      // still in branc
      if (activeStake.length >= 2) {
        // var page = activeStake[activeStake.length - 2]; //??
        activeStake.removeLast();
      }

      if (activeStake.length == 1) {
        // go to default branch tab
        activeStake.removeLast();
      }

      if (activeStake.length == 0) {
        // go to previous branch
        activeStake.removeLast();
      }
    }
  }

  void _setPreviousBranc() {}

  invalidate() {}

  static FBranch dep_defaultBranch() {
    return FBranch.CHAT;
  }
}

enum FBranch {
  CHAT,
  HOME,
  DISCOVER,
  SHOP,
}

//??
class FNavTree {}

class FScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class FPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FPageState();
  }
}

class FPageState extends State<FPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class FPageSample extends StatelessWidget {
  static num cnt = 0;
  var id = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
      child: Center(
        child: Text(
          "hi $id",
          style: TextStyle(
            color: FColors.red,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  FPageSample() {
    cnt += 1;
    id = cnt;
  }
}

//////////////////////

class NavPage extends StatefulWidget {
  NavPage();

  @override
  _NavStates createState() => new _NavStates();
}

class _NavStates extends State<NavPage> {
  var m = "sfd";
  var i = 0;
  var pages = <Widget>[];

  Widget page = Center(
    child: Text(
      FStrings.hello_world,
      style: TextStyle(
        color: FColors.red,
        fontSize: 18,
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    var that = this;
    return new Scaffold(
      // appBar: AppBar(
      //
      // ),
      extendBody: false,
      extendBodyBehindAppBar: false,
      body: SafeArea(
        child: Container(
          color: FColors.background,
          child: Column(
            children: [
              Expanded(
                child: page,
              ),
              Row(
                children: [
                  FlatButton(
                    onPressed: () => {
                      that.setState(() {
                        i += 1;
                        page = FPageSample();
                        pages.add(page);
                      })
                    },
                    child: Text("push"),
                  ),
                  FlatButton(
                    onPressed: () => {
                      that.setState(() {
                        if (pages.length > 0) {
                          page = pages[pages.length - 2];
                          pages.removeLast();
                        }
                      })
                    },
                    child: Text("pop"),
                  ),
                  FlatButton(
                    onPressed: () => {
                      that.setState(() {
                        i += 1;
                        m = "xx $i";
                      })
                    },
                    child: Text(m),
                  ),
                  FlatButton(
                    onPressed: () => {
                      that.setState(() {
                        i += 1;
                        m = "nn $i";
                      })
                    },
                    child: Text(m),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
