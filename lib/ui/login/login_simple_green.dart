import 'package:flip_app/shared/img.dart';
import 'package:flip_app/shared/my_text.dart';
import 'package:flutter/material.dart';

class LoginSimpleGreenRoute extends StatefulWidget {

  LoginSimpleGreenRoute();

  @override
  LoginSimpleGreenRouteState createState() => new LoginSimpleGreenRouteState();

}


class LoginSimpleGreenRouteState extends State<LoginSimpleGreenRoute> {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(0)
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(height: 25),
            Container(
              child: Image.asset(
                'assets/avatars/5.jpg',
                // color: Colors.green[300],
              ),
              width: 80, height: 80,
            ),
            Container(height: 5),
            Text("Welcome to MaterialX", style: MyText.title(context).copyWith(
                color: Colors.green[300],
                fontWeight: FontWeight.bold
            )),
            Container(height: 5),
            Text("Sign in to continue", style: MyText.subhead(context).copyWith(
                color: Colors.blueGrey[300],
            )),
            Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("USERNAME", style: MyText.caption(context).copyWith(color: Colors.blueGrey[200])),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[400], width: 1),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[400], width: 2),
                ),
              ),
            ),
            Container(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("PASSWORD", style: MyText.caption(context).copyWith(color: Colors.blueGrey[200])),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[400], width: 1),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[400], width: 2),
                ),
              ),
            ),
            Container(height: 25),
            Container(
              width: double.infinity,
              height: 40,
              child: FlatButton(
                child: Text("S I G N  I N",
                  style: TextStyle(color: Colors.white),),
                color: Colors.green[300],
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20)
                ),
                onPressed: () {},
              ),
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                child: Text("SIGN UP FOR AN ACCOUNT?",
                  style: TextStyle(color: Colors.green[300]),),
                color: Colors.transparent,
                onPressed: () {},
              ),
            ),
            Container(height: 20),
          ],
        ),
      ),

    );
  }
}

