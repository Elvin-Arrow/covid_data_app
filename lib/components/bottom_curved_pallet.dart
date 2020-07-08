import 'dart:math';

import 'package:covid_data_app/utilities/constants.dart';
import 'package:flutter/material.dart';

import 'custom_curve_clipper.dart';

class BottomCurvedPallet extends StatelessWidget {
  final IconData buttonIcon;
  final Color palletColour;
  final Color buttonColour;
  final Color buttonIconColour;
  final Function onTap;

  BottomCurvedPallet({
    @required this.buttonIcon,
    this.palletColour,
    this.buttonColour,
    this.buttonIconColour,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomCurveClipper(),
            child: Container(
              color: this.palletColour != null
                  ? this.palletColour
                  : Color(kHeaderBackgroundColour),
              padding: EdgeInsets.only(bottom: 35.0),
              height: MediaQuery.of(context).size.height * 0.15,
              child: GestureDetector(
                onTap: onTap,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: this.buttonColour != null
                          ? this.buttonColour
                          : Color(kPrimaryCardBackgroundColour),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    height: 45,
                    width: 45,
                    child: Icon(
                      Icons.add,
                      color: this.buttonIconColour != null
                          ? this.buttonIconColour
                          : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
