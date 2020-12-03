import 'dart:collection';

import 'package:flip_app/shared/fcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cells/bottom_navbar.dart';

class FNav {
  static FNavInstance fNavInstance;
  static FScaffold s;

  static void push(FPage page) {
    assert(fNavInstance != null);
    fNavInstance.push(page);
  }

  static void pop() {
    assert(fNavInstance != null);
    fNavInstance.pop();
  }

  static void goToBranch(FBranch branch) {
    assert(fNavInstance != null);
    fNavInstance.goToBranch(branch);
  }

  static FPage getActivePage() {
    assert(fNavInstance != null);
    return fNavInstance.getActivePage();
  }

  static FBranch getActiveBranch() {
    assert(fNavInstance != null);
    return fNavInstance.getActiveBranch();
  }

  static _invalidate() {
    if (s != null) {}
  }
}

class FNavInstance {
  // var activeBranch = defaultBranch();
  var mapTree = HashMap<FBranch, List<FPage>>();
  var orderedBranches = <FBranch>[defaultBranch()];

  push(FPage page) {
    var branch = getActiveBranch();
    var activeStake = mapTree[branch];
    if (activeStake == null) {
      // extract??
      activeStake = <FPage>[];
      mapTree[branch] = activeStake;
    }
    activeStake.add(page);
    invalidate();
  }

  pop() {
    print(mapTree);
    // in branch stack
    var branch = getActiveBranch();
    var activeStake = mapTree[branch];
    if (activeStake == null) {
      _goToPreviousBranch();
      return;
    }

    // still in branch
    if (activeStake.length >= 2) {
      activeStake.removeLast();
    } else if (activeStake.length == 1) {
      // go to default branch tab
      activeStake.removeLast();
    } else if (activeStake.length == 0) {
      _goToPreviousBranch();
    }
  }

  goToBranch(FBranch branch) {
    orderedBranches.remove(branch);
    orderedBranches.add(branch);
    print(orderedBranches);
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

  static var _defTabPages = HashMap<FBranch, FPage>();

  static FPage getDefaultTabPage(FBranch branch) {
    var page;
    switch (branch) {
      case FBranch.CHAT:
        page = _defTabPages[FBranch.CHAT];
        if (page == null) {
          page = FPageImpl();
          _defTabPages[FBranch.CHAT] = page;
        }
        break;
      case FBranch.HOME:
        page = _defTabPages[FBranch.HOME];
        if (page == null) {
          page = FPageImpl();
          _defTabPages[FBranch.HOME] = page;
        }
        break;
      case FBranch.DISCOVER:
        page = _defTabPages[FBranch.DISCOVER];
        if (page == null) {
          page = FPageImpl();
          _defTabPages[FBranch.DISCOVER] = page;
        }
        break;
      case FBranch.SHOP:
        page = _defTabPages[FBranch.SHOP];
        if (page == null) {
          page = FPageImpl();
          _defTabPages[FBranch.SHOP] = page;
        }
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

  _NavStates() {
    FNav.fNavInstance = fNavInstance;
  }

  @override
  Widget build(BuildContext context) {
    var that = this;
    print(fNavInstance.getActiveBranch());
    var _page_ = fNavInstance.getActivePage();
    assert(_page_ != null);
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
                child: _page_.getWidget(),
              ),
              FBottomNavBarCell(),
              Row(
                children: [
                  FlatButton(
                    onPressed: () => {
                      that.setState(() {
                        FNav.push(FPageImpl());
                      })
                    },
                    child: Text("push"),
                  ),
                  FlatButton(
                    onPressed: () => {
                      that.setState(() {
                        FNav.pop();
                      })
                    },
                    child: Text("pop"),
                  ),
                  FlatButton(
                    onPressed: () => {
                      that.setState(() {
                        FNav.goToBranch(FBranch.SHOP);
                      })
                    },
                    child: Text("shop"),
                  ),
                  FlatButton(
                    onPressed: () => {
                      that.setState(() {
                        FNav.goToBranch(FBranch.CHAT);
                      })
                    },
                    child: Text("chat"),
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

abstract class FPage {
  // get the parent Widget > almost always "return this;" at the imple
  Widget getWidget();
}

class FPageImpl extends StatelessWidget implements FPage {
  static num cnt = 0;
  var id = 0;
  var br = FNav.fNavInstance.getActiveBranch();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
      child: Center(
        child: Text(
          "$br $id",
          style: TextStyle(
            color: FColors.red,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  FPageImpl() {
    cnt += 1;
    id = cnt;
  }

  @override
  Widget getWidget() {
    return this;
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
