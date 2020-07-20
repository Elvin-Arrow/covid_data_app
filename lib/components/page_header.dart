import 'package:covid_data_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  /// Widget for displaying information as a header.
  ///
  /// The property [headerText] should not be null.
  ///
  PageHeader({
    @required this.headerText,
    this.subHeading1,
    this.subHeading2,
    this.rightSubHeading,
    this.headerHeight,
    this.padding,
  });

  final double headerHeight;
  final String headerText;
  final Widget subHeading1;
  final Widget subHeading2;
  final Widget rightSubHeading;
  final Padding padding;

  List<Widget> getWidgets() {
    final List<Widget> widgets = [
      Text(
        this.headerText,
        style: kHeaderTextStyle,
      ),
      SizedBox(
        height: 5.0,
      ),
    ];
    if (this.subHeading1 != null) widgets.add(this.subHeading1);
    if (this.subHeading2 != null) widgets.add(this.subHeading2);
    if (this.rightSubHeading != null) {
      widgets.remove(this.subHeading2);
      widgets.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            this.subHeading2,
            this.rightSubHeading,
          ],
        ),
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(kHeaderBackgroundColour),
        borderRadius: BorderRadius.circular(25.0),
      ),
      width: double.infinity,
      height: this.headerHeight ?? MediaQuery.of(context).size.height * 0.15,
      padding: this.padding ??
          EdgeInsets.symmetric(
            horizontal: 25.0,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: getWidgets(),
      ),
    );
  }
}
