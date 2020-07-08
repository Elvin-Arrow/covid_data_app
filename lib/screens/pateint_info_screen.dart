import 'package:covid_data_app/components/page_header.dart';
import 'package:flutter/material.dart';

class PatientInfo extends StatelessWidget {
  static const String id = 'patient_info_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text(
                'Patient Info',
                textAlign: TextAlign.center,
              ),
              floating: true,
              expandedHeight: 100.0,
              centerTitle: true,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(
                  50.0,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
