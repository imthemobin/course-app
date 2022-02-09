// ignore_for_file: use_key_in_widget_constructors

import 'package:course_app_1/constants/colors.dart';
import 'package:course_app_1/model/model.dart';
import 'package:course_app_1/screens/detail/widgets/custom_app_bar.dart';
import 'package:course_app_1/screens/detail/widgets/description.dart';
import 'package:course_app_1/screens/detail/widgets/progress.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Course _course;
  const Detail(this._course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(_course),
            Description(_course),
            Progress()
          ],
        ),
      ),
    );
  }
}
