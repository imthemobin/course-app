// ignore_for_file: use_key_in_widget_constructors

import 'package:course_app_1/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class CurrentItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: KFontLight.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                  ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset('assets/images/1.jpg',width: 60,height: 60,fit: BoxFit.cover,)),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Syemetry theory',style: TextStyle(
                        color: KFont,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 2,),
                      Text('2 Lessens Left',style: TextStyle(
                        color: KFontLight
                      ),)
                    ],
                  )
              ],
            ),
            CircularPercentIndicator(
                    radius: 61.0,
                    lineWidth: 4.0,
                    percent: 0.61,
                    center: const Text("61%"),
                    progressColor: KAccent,
                  )
          ],
        ),
      ),
    );
  }
}