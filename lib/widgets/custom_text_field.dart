// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
       
        border: build_border(),
       enabledBorder: build_border(),
      focusedBorder: build_border(KPrimaryColor),

      ),
    );
  }

  OutlineInputBorder build_border([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:  BorderSide(color: color?? Colors.white)
      );
  }
}