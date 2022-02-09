// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:course_app_1/constants/colors.dart';
import 'package:course_app_1/model/model_progress.dart';
import 'package:flutter/material.dart';
import '../widgets/progress_module.dart';
class Progress extends StatelessWidget {
  final ModuleList = ModuleProgress.generatModels();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'The Progress',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: KFont),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/menu.png',
                    width: 30,
                    height: 30,
                    color: KFontLight,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 25,
                    width: 1,
                    color: KFontLight,
                  ),
                  Image.asset(
                    'assets/icons/list.png',
                    width: 30,
                    height: 30,
                    color: KFont,
                  ),
                ],
              )
            ],
          ),
          // ModuleListView(ModuleList[0])
          ...ModuleList.map((e) => ModuleListView(e)).toList()
        ],
      ),
    );
  }
}
