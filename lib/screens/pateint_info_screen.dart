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
              title: Text('Patient Info'),
              floating: true,
              expandedHeight: 40.0,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  PageHeader(
                    headerText: 'Good Morning!',
                    subHeadingText: '3 entries',
                    headerHeight: MediaQuery.of(context).size.height * 0.15,
                  ),
                  PageHeader(
                    headerText: 'Good Morning!',
                    subHeadingText: '3 entries',
                    headerHeight: MediaQuery.of(context).size.height * 0.15,
                  ),
                  PageHeader(
                    headerText: 'Good Morning!',
                    subHeadingText: '3 entries',
                    headerHeight: MediaQuery.of(context).size.height * 0.15,
                  ),
                  PageHeader(
                    headerText: 'Good Morning!',
                    subHeadingText: '3 entries',
                    headerHeight: MediaQuery.of(context).size.height * 0.15,
                  ),
                  PageHeader(
                    headerText: 'Good Morning!',
                    subHeadingText: '3 entries',
                    headerHeight: MediaQuery.of(context).size.height * 0.15,
                  ),
                  PageHeader(
                    headerText: 'Good Morning!',
                    subHeadingText: '3 entries',
                    headerHeight: MediaQuery.of(context).size.height * 0.15,
                  ),
                  PageHeader(
                    headerText: 'Good Morning!',
                    subHeadingText: '3 entries',
                    headerHeight: MediaQuery.of(context).size.height * 0.15,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
