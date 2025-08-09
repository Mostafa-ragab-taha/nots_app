import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.hintText , this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        
        hintStyle: TextStyle(color: kPrimaryColor,),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color:  color == null ?Colors.white : color,
      ),
    );
  }
}
