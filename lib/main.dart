import 'package:covid_data_app/screens/first_entry_screen.dart';
import 'package:covid_data_app/screens/main_screen.dart';
import 'package:covid_data_app/screens/second_entry_screen.dart';
import 'package:covid_data_app/screens/third_entry_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(CovidApp());

class CovidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MainScreen.id,
      debugShowCheckedModeBanner: false,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        FirstEntryScreen.id: (context) => FirstEntryScreen(),
        SecondEntryScreen.id: (context) => SecondEntryScreen(),
        ThirdEntryScreen.id: (context) => ThirdEntryScreen()
      },
    );
  }
}

