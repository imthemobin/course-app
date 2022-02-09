import 'package:course_app_1/constants/colors.dart';
import 'package:flutter/material.dart';

class ModuleProgress {
  Color iconborder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desp;
  Color modelBorder;
  Color modelBg;
  Color modelColor;
  Color buttonBorder;
  Color buttonFont;
  String time;
  String lesson;

  ModuleProgress(
      this.iconborder,
      this.iconBg,
      this.iconColor,
      this.icon,
      this.title,
      this.desp,
      this.modelBorder,
      this.modelBg,
      this.modelColor,
      this.buttonBorder,
      this.buttonFont,
      this.time,
      this.lesson);

  static List<ModuleProgress> generatModels() {
    return [
      ModuleProgress(
          KAccent,
          KAccent,
          Colors.white,
          Icons.play_arrow_rounded,
          'MODULE 1',
          'How it all started.\nExplanation',
          KPrimaryLight,
          KPrimaryLight,
          Kprimary,
          KprimarypDark,
          KFont,
          '22 min',
          '2 lesson'),

      ModuleProgress(KFontLight.withOpacity(0.3),
       Colors.white,
        KFontLight.withOpacity(0.7),
         Icons.lock_outline_rounded,
          'MODULE 1', 'What we didn\'t know\ncatestrophy',
           KPrimaryLight,
            Colors.white,
             Colors.grey.withOpacity(0.2),
              Colors.grey,
               Colors.grey, '12 min', '3 lessons')

    ];
  }
}
