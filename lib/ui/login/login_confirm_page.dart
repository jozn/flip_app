import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/fstrings.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flip_app/shared/shared_widget.dart';
import 'package:flip_app/ui/login/VerificationCodeInput.dart';
import 'package:flutter/material.dart';

class LoginConfirmRoute extends StatefulWidget {
  LoginConfirmRoute();

  @override
  LoginConfirmRouteState createState() => new LoginConfirmRouteState();
}

class LoginConfirmRouteState extends State<LoginConfirmRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar:
          PreferredSize(child: Container(), preferredSize: Size.fromHeight(0)),
      body: Container(
        child: Column(
          children: [
            SimpleTopNavBar(
              title: "09015132328",
              showGoButton: true,
              // rightIcon: SimpleTopNavBar.topRightDefault,
            ),
            ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 400,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      Text(FStrings.loginConfirm_title,
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 18,
                              fontFamily: Shared.IRAN_FONT)),
                      // Spacer(),
                      SizedBox(
                        height: 20,
                      ),
                      VerificationCodeInput(
                        keyboardType: TextInputType.number,
                        length: 4,
                        autofocus: true,
                        onCompleted: (String value) {
                          //...
                          Shared.showToast(context, value);
                          print(value);
                        },
                      ),
                      SizedBox(
                        height: 140,
                      ),

                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.white,
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  FStrings.loginConfirm_sendAgain,
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontFamily: Shared.IRAN_FONT),
                                ),
                              ),
                              Text(FStrings.loginConfirm_notRecived,
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 14,
                                      fontFamily: Shared.IRAN_FONT)),
                            ],
                          )),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
