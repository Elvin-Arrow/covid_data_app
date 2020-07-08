import 'package:covid_data_app/components/bottom_curved_pallet.dart';
import 'package:covid_data_app/components/divider_with_text.dart';
import 'package:covid_data_app/components/page_header.dart';
import 'package:covid_data_app/components/patient_info_card.dart';
import 'package:covid_data_app/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

///
/// The widget housing all the records entered in the app; all while
/// showing the require controls to add new controls and edit the
/// existing ones
///
class MainScreen extends StatefulWidget {
  static const String id = "main_screen";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  AnimationController _hideFabAnimation;

  @override
  initState() {
    super.initState();
    _hideFabAnimation =
        AnimationController(vsync: this, duration: kThemeAnimationDuration);
    _hideFabAnimation.value = 100.0;
  }

  @override
  void dispose() {
    _hideFabAnimation.dispose();
    super.dispose();
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification.depth == 0) {
      if (notification is UserScrollNotification) {
        final UserScrollNotification userScroll = notification;
        switch (userScroll.direction) {
          case ScrollDirection.forward:
            if (userScroll.metrics.maxScrollExtent !=
                userScroll.metrics.minScrollExtent) {
              _hideFabAnimation.forward();
            }
            break;
          case ScrollDirection.reverse:
            if (userScroll.metrics.maxScrollExtent !=
                userScroll.metrics.minScrollExtent) {
              _hideFabAnimation.reverse();
            }
            break;
          case ScrollDirection.idle:
            break;
        }
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NotificationListener<ScrollNotification>(
        onNotification: _handleScrollNotification,
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
              Flexible(
                flex: 1,
                child: Stack(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          DividerWithTextOnTop(
                            dividerText: 'Today',
                          ),
                          PatientInfoCard(
                            patientName: 'Joseph Sardine',
                            gender: 'Male',
                            age: 55,
                            condition: 'Fever',
                          ),
                          PatientInfoCard(
                            patientName: 'Joseph Sardine',
                            gender: 'Male',
                            age: 55,
                            condition: 'Fever',
                          ),
                          DividerWithTextOnTop(
                            dividerText: 'Yesterday',
                          ),
                          PatientInfoCard(
                            patientName: 'Joseph Sardine',
                            gender: 'Male',
                            age: 55,
                            condition: 'Fever',
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
                    ScaleTransition(
                      scale: _hideFabAnimation,
                      alignment: Alignment.bottomCenter,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: BottomCurvedPallet(
                          buttonIcon: Icons.add,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
