import 'package:covid_data_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class PatientInfoCard extends StatelessWidget {
  final String patientName;
  final String gender;
  final int age;
  final String condition;

  PatientInfoCard(
      {@required this.patientName,
      @required this.gender,
      @required this.age,
      @required this.condition});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                this.patientName,
                style: kCardTitleTextStyle,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Gender: ${this.gender}',
                style: kCardContentTextStyle,
              ),
              Text(
                'Age: ${this.age}',
                style: kCardContentTextStyle,
              ),
              Text(
                'Condition: ${this.condition}',
                style: kCardContentTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
