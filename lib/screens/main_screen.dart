import 'package:covid_data_app/components/divider_with_text.dart';
import 'package:covid_data_app/components/page_header.dart';
import 'package:covid_data_app/components/patient_info_card.dart';
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
            PatientInfoCard(
              patientName: 'Joseph Sardine',
              gender: 'Male',
              age: 55,
              condition: 'Fever',
            ),
          ],
        ),
      ),
    );
  }
}
