import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flutter/material.dart';

class FMusicRowCell extends StatelessWidget {
  void onItemClick(Direct obj, BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    print("music row");

    return InkWell(
      onTap: () {},
      child: Container(
        height: 60,
        color: Colors.transparent,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
        child: Row(
          children: <Widget>[
            SizedBox(
              // Audio Icon
              width: 52,
              child: Icon(
                Icons.audiotrack_outlined,
                color: Colors.grey[300],
                size: 52,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 4, 0),
                child: Column(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text("MyMusic.mp3",
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: FColors.contactsPage_rowUserTittle,
                          fontSize: 14,
                          fontFamily: FShared.IRAN_FONT_MEDIUM,
                          // fontWeight: FontWeight.w400
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("lastMsgtxt",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textDirection: TextDirection.rtl,
                              softWrap: false,
                              style: TextStyle(
                                color: FColors.contactsPage_lastActivity,
                                fontFamily: FShared.IRAN_FONT_LIGHT,
                                fontSize: 13,
                              )),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Text("3:56"),
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
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  print("taped play button");
                },
                child: Container(
                  // color: FColors.pages_background,
                  child: Icon(
                    Icons.play_circle_fill_outlined,
                    color: Colors.red[500],
                    size: 52,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
