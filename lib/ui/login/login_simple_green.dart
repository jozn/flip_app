import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/fstrings.dart';
import 'package:flip_app/shared/my_text.dart';
import 'package:flip_app/shared/shared.dart';
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
      appBar:
          PreferredSize(child: Container(), preferredSize: Size.fromHeight(0)),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(height: 25),
              /*Container(
                child: Image.asset(
                  'assets/avatars/5.jpg',
                  // color: Colors.green[300],
                ),
                width: 80,
                height: 80,
              ),
              Container(height: 5),
              Text(FStrings.login_welcome,
                  textDirection: TextDirection.rtl,
                  style: MyText.title(context).copyWith(
                      color: Colors.green[300], fontWeight: FontWeight.bold)),*/
              Container(height: 5),
              Text(FStrings.login_welocmeTitle,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: Shared.IRAN_FONT
                  )),
              // Spacer(),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(FStrings.login_inputMobileTitle,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16,
                        fontFamily: Shared.IRAN_FONT
                    )),
              ),
              TextField(
                keyboardType: TextInputType.phone,
                autofocus: true ,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "09123456789",
                  hintStyle: TextStyle(
                    color: Colors.grey[400]
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey[400], width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey[400], width: 2),
                  ),
                ),
              ),
              Container(height: 80),
/*              Align(
                alignment: Alignment.centerLeft,
                child: Text("PASSWORD",
                    style: MyText.caption(context)
                        .copyWith(color: Colors.blueGrey[200])),
              ),*/
/*              TextField(
                keyboardType: TextInputType.multiline,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey[400], width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey[400], width: 2),
                  ),
                ),
              ),
              Container(height: 25),*/
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                height: 40,
                child: FlatButton(
                  child: Text(
                    FStrings.login_send_sms,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      fontFamily: Shared.IRAN_FONT
                    ),
                  ),
                  color: FColors.login_sendSmsButton,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20)),
                  onPressed: () {},
                ),
              ),
/*              Container(
                width: double.infinity,
                child: FlatButton(
                  child: Text(
                    "SIGN UP FOR AN ACCOUNT?",
                    style: TextStyle(color: Colors.green[300]),
                  ),
                  color: Colors.transparent,
                  onPressed: () {},
                ),
              ),
              Container(height: 20),*/
            ],
          ),
        ),
      ),
    );
  }
}
