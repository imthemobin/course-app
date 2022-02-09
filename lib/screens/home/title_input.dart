// ignore_for_file: use_key_in_widget_constructors

import 'package:course_app_1/constants/colors.dart';
import 'package:flutter/material.dart';

class TitleInput extends StatelessWidget {
  final String boldtext;
  final String lighttext;

  const TitleInput(this.boldtext, this.lighttext);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(boldtext,
              style: const TextStyle(
                color: KFont,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )),
          Text(lighttext,
            style: const TextStyle(color: KFontLight,fontSize: 14,fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
