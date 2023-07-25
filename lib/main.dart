import 'package:fitnest_app/screen/dashbord_screen/aactivity_tracker.dart';
import 'package:fitnest_app/screen/dashbord_screen/congratulations_page.dart';
import 'package:fitnest_app/screen/dashbord_screen/home_pages.dart';
import 'package:fitnest_app/screen/dashbord_screen/notification_screen.dart';
import 'package:fitnest_app/screen/dashbord_screen/profile_screen.dart';
import 'package:fitnest_app/screen/workout_tracker/workout_tracker.dart';
import 'package:flutter/material.dart';

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
      home: const WorkOutTrackerPages(),
    );
  }
}

