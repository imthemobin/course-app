// ignore_for_file: unused_import, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:course_app_1/constants/colors.dart';
import 'package:course_app_1/model/model.dart';
import 'package:course_app_1/screens/home/courses_item.dart';
import 'package:course_app_1/screens/home/current_item.dart';
import 'package:course_app_1/screens/home/emoji_text.dart';
import 'package:course_app_1/screens/home/item_show.dart';
import 'package:course_app_1/screens/home/seart_input.dart';
import 'package:course_app_1/screens/home/title_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackground,
      appBar: AppBar(
        backgroundColor: KBackground,
        elevation: 0,
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Hello Mobin!',
            style: TextStyle(
              color: KFontLight,
              fontSize: 16,
            ),
          ),
        ),
        actions: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 25, top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: KFontLight.withOpacity(0.3), width: 1),
                    borderRadius: BorderRadius.circular(15)),
                padding: const EdgeInsets.all(5),
                width: 40,
                height: 40,
                child: Image.asset('assets/icons/bell.png'),
              ),
              Positioned(
                  right: 30,
                  top: 18,
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: KAccent,
                    ),
                  ))
            ],
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EmojiText(),
              SearchInput(),
              const TitleInput('Top of the week', 'View all'),
              ItemShow(),
              const TitleInput('Currently active', 'View all'),
              CurrentItem()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: KBackground,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: 'home',
            icon: Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: KAccent, width: 2))),
              child: const Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const BottomNavigationBarItem(label: 'calender',icon: Icon(Icons.calendar_today_outlined)),
          const BottomNavigationBarItem(label: 'bookmark',icon: Icon(Icons.bookmark)),
          const BottomNavigationBarItem(label: 'user',icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
