import 'package:covid_data_app/components/bottom_curved_pallet.dart';
import 'package:covid_data_app/components/custom_text_field.dart';
import 'package:covid_data_app/components/page_header.dart';
import 'package:covid_data_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class FirstEntryScreen extends StatelessWidget {
  static const String id = "first_entry_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(kPrimaryBackgroundColour),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PageHeader(
              headerText: 'Add a record',
              subHeading1: Text('Page 1 of 3'),
              headerHeight: MediaQuery.of(context).size.height * 0.15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(kPrimaryCardBackgroundColour),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: SizedBox(
                  height: 480,
                  child: ListView(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Patient Information',
                            style: kCardTitleTextStyle.copyWith(fontSize: 30),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Divider(
                        height: 2,
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 0, 10),
                        child: Text(
                          'Patient Name',
                          style: kCardTitleTextStyle,
                        ),
                      ),
                      CustomTextField(
                        placeholder: 'Name',
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 0, 10),
                        child: Text(
                          'Gender',
                          style: kCardTitleTextStyle,
                        ),
                      ),
                      CustomTextField(
                        placeholder: 'Gender',
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 0, 10),
                        child: Text(
                          'Age',
                          style: kCardTitleTextStyle,
                        ),
                      ),
                      CustomTextField(
                        placeholder: 'Age',
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 0, 10),
                        child: Text(
                          'Weight',
                          style: kCardTitleTextStyle,
                        ),
                      ),
                      CustomTextField(
                        placeholder: 'Weight',
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 0, 10),
                        child: Text(
                          'Height',
                          style: kCardTitleTextStyle,
                        ),
                      ),
                      CustomTextField(
                        placeholder: 'Height',
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 0, 10),
                        child: Text(
                          'Profession',
                          style: kCardTitleTextStyle,
                        ),
                      ),
                      CustomTextField(
                        placeholder: 'Profession',
                      ),
                      SizedBox(
                        height: 15.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomCurvedPallet(
                buttonIcon: Icons.arrow_forward_ios,
              ),
            )
          ],
        ),
      ),
    );
  }
}
