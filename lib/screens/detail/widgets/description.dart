// ignore_for_file: use_key_in_widget_constructors

import 'package:course_app_1/constants/colors.dart';
import 'package:course_app_1/model/model.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final Course _course;
  const Description(this._course);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: Image.asset(
                    _course.avatar,
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                width: 5,
              ),
              Text(
                _course.auther,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: KFont),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 5,
                height: 5,
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: KprimarypDark),
              ),
              const Icon(
                Icons.access_time_filled_outlined,
                color: KAccent,
                size: 20,
              ),
              const SizedBox(width: 5,),
              const Text(
                '1h 22m',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: KFont),
              ),

            ],
          ),
          const SizedBox(height: 20,),
          Text(_course.detail,style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: KFont
          ),),
          const SizedBox(height: 10,),
          const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          style: TextStyle(
            color: KFontLight,
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),
          )
        ],
      ),
    );
  }
}
