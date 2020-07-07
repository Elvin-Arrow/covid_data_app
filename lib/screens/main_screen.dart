import 'package:covid_data_app/components/divider_with_text.dart';
import 'package:covid_data_app/components/page_header.dart';
import 'package:covid_data_app/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
/// The widget housing all the records entered in the app; all while
/// showing the require controls to add new controls and edit the
/// existing ones
///
class MainScreen extends StatelessWidget {
  static const String id = "main_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(kPrimaryBackgroundColour),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PageHeader(
              headerText: 'Good Morning!',
              subHeadingText: '3 entries',
              headerHeight: MediaQuery.of(context).size.height * 0.15,
            ),
            DividerWithTextOnTop(
              dividerText: 'Today',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Material(
                elevation: 2.0,
                color: Color(kPrimaryCardBackgroundColour),
                borderRadius: BorderRadius.circular(25.0),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Joseph Sardine',
                        style: kCardTitleTextStyle,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Gender: Male',
                        style: kCardContentTextStyle,
                      ),
                      Text(
                        'Age: 55',
                        style: kCardContentTextStyle,
                      ),
                      Text(
                        'Condition: Fever',
                        style: kCardContentTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
