import 'dart:collection';

import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/fstrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FNav {
  static FNavInstance fNavInstance;
  void push(FPage page) {
    assert(fNavInstance != null);
    fNavInstance.push(page);
  }

  void pop() {
    assert(fNavInstance != null);
    fNavInstance.pop();
  }

  void goToBranch(FBranch branch) {
    assert(fNavInstance != null);
    fNavInstance.goToBranch(branch);
  }
}

class FNavInstance {
  // var activeBranch = defaultBranch();
  var mapTree = HashMap<FBranch, List<FPage>>();
  var orderedBranches = <FBranch>[defaultBranch()];

  push(FPage page) {
    var activeStake = mapTree[getActiveBranch()];
    if (activeStake == null) {
      // extract??
      activeStake = <FPage>[];
      mapTree[getActiveBranch()] = activeStake;
    }
    activeStake.add(FPage());
    invalidate();
  }

  pop() {
    // in branch stack
    var activeStake = mapTree[getActiveBranch()];
    if (activeStake == null) {
      _goToPreviousBranch();
      return;
    }

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
      _goToPreviousBranch();
    }
  }

  goToBranch(FBranch branch) {
    orderedBranches.remove(branch);
    orderedBranches.add(branch);
  }

  void _goToPreviousBranch() {
    if (orderedBranches.length >= 2) {
      orderedBranches.removeLast();
    } else {
      // exit
    }
  }

  invalidate() {}

  FPage getActivePage() {
    var branch = getActiveBranch();
    var activeStake = mapTree[branch];
    if (activeStake == null || activeStake.length == 0) {
      return getDefaultTabPage(branch);
    }
    return activeStake.last;
  }

  FBranch getActiveBranch() {
    assert(orderedBranches.length > 0);
    return orderedBranches.last;
  }

  static FPage getDefaultTabPage(FBranch branch) {
    var page;
    switch (branch) {
      case FBranch.CHAT:
        page = FPage();
        break;
      case FBranch.HOME:
        page = FPage();
        break;
      case FBranch.DISCOVER:
        page = FPage();
        break;
      case FBranch.SHOP:
        page = FPage();
    }
    return page;
  }

  static FBranch defaultBranch() {
    return FBranch.CHAT;
  }
}

enum FBranch {
  CHAT,
  HOME,
  DISCOVER,
  SHOP,
}

class FScaffold extends StatefulWidget {
  FScaffold();

  @override
  _NavStates createState() => new _NavStates();
}

class _NavStates extends State<FScaffold> {
  FNavInstance fNavInstance = FNavInstance();

  FScaffold() {
    FNav.fNavInstance = fNavInstance;
  }

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
                        page = FPage();
                        pages.add(page);
                      })
                    },
                    child: Text("push"),
                  ),
                  FlatButton(
                    onPressed: () => {
                      that.setState(() {
                        if (pages.length > 1) {
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

class FPage extends StatelessWidget {
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

  FPage() {
    cnt += 1;
    id = cnt;
  }
}

//////////////////////

////////////////////////////////// Archvies ///////////////
/*
//??
class FNavTree {}

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
}*/

/*
class NavPage extends StatefulWidget {
  NavPage();

  @override
  _NavStates2 createState() => new _NavStates2();
}

class _NavStates2 extends State<NavPage> {
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
                        page = FPage();
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

*/
