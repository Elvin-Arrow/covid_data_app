import 'package:covid_data_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class DividerWithTextOnTop extends StatelessWidget {
  final String dividerText;

  DividerWithTextOnTop({this.dividerText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.0,
        right: 25.0,
        top: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.dividerText,
            style: kSubHeadingTextStyle,
          ),
          Divider(
            color: Color(kPrimaryCardBackgroundColour),
          ),
        ],
      ),
    );
  }
}
