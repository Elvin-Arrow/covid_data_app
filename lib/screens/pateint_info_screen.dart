import 'package:covid_data_app/components/page_header.dart';
import 'package:flutter/material.dart';

class PatientInfo extends StatelessWidget {
  static const String id = 'patient_info_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Header
              PageHeader(
                headerText: 'Joseph Sardine',
                subHeading1: Text(
                  'Male',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subHeading2: Text(
                  'Age: 55',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                rightSubHeading: Text(
                  'July 20, 2020',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.right,
                ),
              )
              // Patient info

              // Edit pallet
            ],
          ),
        ),
      ),
    );
  }
}
