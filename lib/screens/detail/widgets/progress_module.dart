// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:course_app_1/constants/colors.dart';
import 'package:course_app_1/model/model_progress.dart';
import 'package:flutter/material.dart';

class ModuleListView extends StatelessWidget {
  final ModuleProgress _moduleListView;
  const ModuleListView(this._moduleListView);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      height: 200,
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: _moduleListView.iconBg,
                          border: Border.all(
                              color: _moduleListView.iconborder, width: 2),
                          shape: BoxShape.circle),
                      child: Icon(
                        _moduleListView.icon,
                        color: _moduleListView.iconColor,
                        size: 30,
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: List.generate(
                          20,
                          (index) => Expanded(
                                child: Container(
                                  width: 2,
                                  color: index % 2 == 0
                                      ? Colors.transparent
                                      : _moduleListView.iconborder,
                                ),
                              )),
                    ))
                  ],
                ),
              )),
          Flexible(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: _moduleListView.modelBg,
                  border:
                      Border.all(color: _moduleListView.modelBorder, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _moduleListView.title,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: KFontLight),
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: KFontLight,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    _moduleListView.desp,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: KFont.withOpacity(0.7)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      _bulidButton(Icons.access_time_filled_rounded,_moduleListView.time),
                      const SizedBox(width: 20,),
                      _bulidButton(Icons.bookmarks_outlined, _moduleListView.lesson)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _bulidButton(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: KprimarypDark.withOpacity(0.3),
        border: Border.all(color: _moduleListView.buttonBorder.withOpacity(0.3),width: 1)
      ),
      child: Row(
        children: [

          Icon(icon,color: KFont.withOpacity(0.5)),
          const SizedBox(width: 5,),
          Text(text,style: TextStyle(
            color: KFont.withOpacity(0.5),
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
