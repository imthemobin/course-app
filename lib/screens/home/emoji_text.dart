// ignore_for_file: use_key_in_widget_constructors

import 'package:course_app_1/constants/colors.dart';
import 'package:flutter/material.dart';

class EmojiText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: RichText(text: const TextSpan(
        children: [
          TextSpan(
            text: 'Lets\'s boost your \nbrain power',
            style: TextStyle(
              color: KFont,
              fontSize: 24,
              fontWeight: FontWeight.bold
            )
          ),
          TextSpan(text: '✨',style: TextStyle(
            fontSize: 25
          ))
        ]
      )),
    );
  }
}