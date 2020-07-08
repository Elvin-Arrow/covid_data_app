import 'package:covid_data_app/screens/first_entry_screen.dart';
import 'package:covid_data_app/screens/main_screen.dart';
import 'package:covid_data_app/screens/pateint_info_screen.dart';
import 'package:covid_data_app/screens/second_entry_screen.dart';
import 'package:covid_data_app/screens/third_entry_screen.dart';
import 'package:covid_data_app/utilities/constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(CovidApp());

class CovidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color(kPrimaryBackgroundColour),
        appBarTheme: AppBarTheme(
          color: Color(kHeaderBackgroundColour),
          elevation: 2.0,
          textTheme: TextTheme(title: kHeaderTextStyle),
        ),
      ),
      initialRoute: MainScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        FirstEntryScreen.id: (context) => FirstEntryScreen(),
        SecondEntryScreen.id: (context) => SecondEntryScreen(),
        ThirdEntryScreen.id: (context) => ThirdEntryScreen(),
        PatientInfo.id: (context) => PatientInfo()
      },
    );
  }
}
