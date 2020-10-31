import 'package:flutter/material.dart';
import 'package:flutter_pfm_app/ui/roundedButton.dart';

import 'inputWidget.dart';

class InputUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(32),
        ),
        Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                      child: InputWidget(30, "Nhập số tiền"),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(32, 32, 32, 0),
                      child: InputWidget(30, "Chọn danh mục"),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(32),
              child: roundedRectButton("Lưu", signInGradients, false),
            ),
          ],
        )
      ],
    );
  }
}
