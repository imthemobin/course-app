// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:course_app_1/constants/colors.dart';
import 'package:course_app_1/model/model.dart';
import 'package:course_app_1/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class CoursesItems extends StatelessWidget {
  final Course _course;
  const CoursesItems(this._course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 270,
            width: 270,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: KPrimaryLight,
            ),
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Image.asset(
                          _course.imgUrl,
                          fit: BoxFit.cover,
                        ))),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                // margin: EdgeInsets.only(left: 20,top: 10),
                                width: 25,
                                height: 25,
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: Image.asset(
                                  _course.avatar,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                _course.auther,
                                style: TextStyle(
                                    color: KFont.withOpacity(0.5),
                                    fontSize: 12),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _course.detail,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: KFont),
                              ),
                              const Text(
                                '. 2h 22m',
                                style:
                                    TextStyle(fontSize: 12, color: KFontLight),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Positioned(
            bottom: 70,
            right: 25,
            width: 70,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Detail(_course)));
              },
              child: const Text(
                'Start',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  primary: KAccent,
                  elevation: 0.5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
          ),
        ],
      ),
    );
  }
}
