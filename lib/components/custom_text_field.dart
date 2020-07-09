import 'package:covid_data_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:covid_data_app/utilities/constants.dart';

/*
* A widget housing bordered input box with text holder that moves on tap. The
* widget allows the customization of its text colour, placeholder colour and
* active border colour.
*
* */
class CustomTextField extends StatelessWidget {
  final String placeholder;
  final Color cursorColor;
  final Color placeholderColor;
  final Color focusedOutlineBorder;
  final bool isPassword;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;

  CustomTextField(
      {@required this.placeholder,
        this.cursorColor = Colors.black,
        this.placeholderColor = Colors.black38,
        this.focusedOutlineBorder = Colors.black87,
        this.onChanged,
        this.isPassword = false,
        this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: TextFormField(
        obscureText: this.isPassword,
        cursorColor: this.cursorColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          labelText: this.placeholder,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelStyle: TextStyle(
            color: this.placeholderColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: this.placeholderColor
            ),
          ),
        ),
        onChanged: this.onChanged,
      ),
    );
  }
}
