
import 'package:fitnest_app/screen/dashbord_screen/aactivity_tracker.dart';
import 'package:fitnest_app/screen/dashbord_screen/congratulations_page.dart';
import 'package:fitnest_app/screen/dashbord_screen/home_pages.dart';
import 'package:fitnest_app/screen/dashbord_screen/notification_screen.dart';
import 'package:fitnest_app/screen/dashbord_screen/profile_screen.dart';
import 'package:fitnest_app/screen/home_screen.dart';
import 'package:fitnest_app/screen/meal_planeer/break_fast.dart';
import 'package:fitnest_app/screen/meal_planeer/meal_details.dart';
import 'package:fitnest_app/screen/meal_planeer/meal_schedule.dart';
import 'package:fitnest_app/screen/onbording_screen/splash_Screen.dart';
import 'package:fitnest_app/screen/workout_tracker/work_out_details.dart';
import 'package:fitnest_app/screen/workout_tracker/workout_tracker.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MealSchedule()
    );
  }
}
