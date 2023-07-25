import 'package:fitnest_app/screen/commom_widget/custom_button.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class SuccessSignUpPages extends StatelessWidget {
  const SuccessSignUpPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,top: 102,bottom: 40),
        child: Column(
          children: [
            Image.asset(AppAssets.success,height: 304,width: 277.56,),
            const SizedBox(height: 44,),
            const Text("Welcome, Stefani",style: TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.w700,fontSize: 20),textAlign: TextAlign.center,),
            const SizedBox(height: 5),
            const Text("You are all set now, let’s reach your\ngoals together with us",style: TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.w400,fontSize: 12,color: AppColors.grey1Color),textAlign: TextAlign.center,),
            const Spacer(),
            CustomButton(onPress: (){},title: "Go To Home",),
          ],
        ),
      ),
    );
  }
}
