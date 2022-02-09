// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

import 'package:course_app_1/constants/colors.dart';
import 'package:course_app_1/model/model.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Course _course;
  const CustomAppBar(this._course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    _course.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 25,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 30,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('start class'),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                  primary: KAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Positioned(
              left: 30,
              top: MediaQuery.of(context).padding.top,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),),
          Positioned(
              right: 30,
              top: MediaQuery.of(context).padding.top,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  icon: Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  ),
                  onPressed: () {
                  },
                ),
              ),),
        ],
      ),
    );
  }
}
