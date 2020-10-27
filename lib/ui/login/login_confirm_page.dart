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
              rightIcon: null,
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
                    Container(height: 25),
                    Container(height: 5),
                    Text(FStrings.loginConfirm_title,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: Shared.IRAN_FONT
                        )),
                    // Spacer(),
                    SizedBox(
                      height: 20,
                    ),
/*              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Text(
                        FStrings.loginConfirm_changeNumber,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontFamily: Shared.IRAN_FONT
                        ),
                      ),
                    ),
                    Text("09015132328",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16,
                            fontFamily: Shared.IRAN_FONT
                        )),
                  ],
                )
              ),*/
                    SizedBox(height: 50,),
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
                    SizedBox(height: 40,),
/*              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                height: 40,
                child: FlatButton(
                  child: Text(
                    FStrings.loginConfirm_confirmButton,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      fontFamily: Shared.IRAN_FONT
                    ),
                  ),
                  color: FColors.login_sendSmsButton,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20)),
                  onPressed: () {

                  },
                ),
              ),*/
                    Row(
                      children: [
                        Align(
                          child: Text(FStrings.loginConfirm_sendAgain),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(FStrings.loginConfirm_sendAgain),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(FStrings.loginConfirm_sendAgain,
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16,
                              fontFamily: Shared.IRAN_FONT
                          )),
                    ),

                    Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){},
                              child: Text(
                                FStrings.loginConfirm_sendAgain,
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    fontFamily: Shared.IRAN_FONT
                                ),
                              ),
                            ),
                            Text(FStrings.loginConfirm_notRecived,
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 16,
                                    fontFamily: Shared.IRAN_FONT
                                )),
                          ],
                        )
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}

