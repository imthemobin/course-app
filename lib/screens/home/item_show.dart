// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:course_app_1/model/model.dart';
import 'package:course_app_1/screens/home/courses_item.dart';
import 'package:flutter/material.dart';

class ItemShow extends StatelessWidget {
  final itemList = Course.generator();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView.separated(
        padding: const EdgeInsets.all(25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => CoursesItems(itemList[index]),
          separatorBuilder: (_,index) => const SizedBox(width: 20,),
          itemCount: itemList.length),
    );
  }
}
