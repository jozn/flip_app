import 'package:flip_app/pb/global.pb.dart';
import 'package:flip_app/shared/fcolors.dart';
import 'package:flip_app/shared/shared.dart';
import 'package:flutter/material.dart';

import '../product_cell.dart';

class FProductRowCell extends StatelessWidget {
  void onItemClick(Direct obj, BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    print("music row");
    double width = 130;
    return InkWell(
      onTap: () {},
      child: Container(
        height: width,
        color: Colors.transparent,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
        child: Row(
          children: <Widget>[
            SizedBox(
              // Audio Icon
              width: width,
              child: ProductCells.getSampleProductImage(),
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
          ],
        ),
      ),
    );
  }
}
