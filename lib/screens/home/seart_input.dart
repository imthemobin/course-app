// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:course_app_1/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: KFontLight.withOpacity(0.1),
                border:
                    Border.all(color: KFontLight.withOpacity(0.5), width: 1),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for history, classes',
                fillColor: KFontLight.withOpacity(0.01),
                filled: true,
                border: InputBorder.none,
              ),
            ),
          ),
          Positioned(
              right: 40,
              top: 40,
              child: Container(
                padding: const EdgeInsets.all(5),
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: KAccent,
                    shape: BoxShape.rectangle),
                    child: Image.asset('assets/icons/search.png',width: 20,height: 20,color: Colors.white,),
              ),
              )
        ],
      ),
    );
  }
}
