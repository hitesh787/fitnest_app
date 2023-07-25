// ignore_for_file: file_names

import 'package:fitnest_app/screen/commom_widget/custom_button.dart';
import 'package:fitnest_app/screen/onbording_screen/onbording_screen_1.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppAssets.logo,
          height: 70,
          width: 185,
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 40, left: 30, right: 30),
        child:  CustomButton(onPress: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const OnbordingScreen1()));
        }),
      ),
    );
  }
}
