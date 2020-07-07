import 'package:covid_data_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  final double headerHeight;
  final String headerText;
  final String subHeadingText;

  PageHeader(
      {@required this.headerText, this.subHeadingText, this.headerHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(kHeaderBackgroundColour),
        borderRadius: BorderRadius.circular(25.0),
      ),
      width: double.infinity,
      height: this.headerHeight != null
          ? this.headerHeight
          : MediaQuery.of(context).size.height * 0.15,
      padding: EdgeInsets.symmetric(
        horizontal: 25.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            this.headerText,
            style: kHeaderTextStyle,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            this.subHeadingText,
            style: kSubHeadingTextStyle,
          ),
        ],
      ),
    );
  }
}
