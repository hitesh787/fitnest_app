import 'package:fitnest_app/screen/commom_widget/custom_button.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CongratulationsPage extends StatelessWidget {
  const CongratulationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,top: 65,bottom: 40),
        child: Column(
          children: [
            Image.asset(AppAssets.congratulationsIcons,height: 327,width: 255),
            const SizedBox(height: 44,),
            const Text("Congratulations, You Have Finished Your Workout",style: TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.w700,fontSize: 20),textAlign: TextAlign.center,),
            const SizedBox(height: 15),
            const Text("Exercises is king and nutrition is queen. Combine the two and you will have a kingdom",style: TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.w400,fontSize: 12,color: AppColors.grey1Color),textAlign: TextAlign.center,),
            const SizedBox(height: 5),
            const Text("-Jack Lalanne",style: TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.w400,fontSize: 12,color: AppColors.grey1Color),textAlign: TextAlign.center,),
            const Spacer(),
            CustomButton(onPress: (){},title: "Go To Home",),
          ],
        ),
      ),
    );
  }
}
