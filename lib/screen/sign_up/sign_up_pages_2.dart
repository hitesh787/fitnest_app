import 'package:fitnest_app/screen/commom_widget/custom_button.dart';
import 'package:fitnest_app/screen/sign_up/sign_up_pages_3.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../commom_widget/custom_text_fields.dart';


class SignUpPages2 extends StatelessWidget {
  const SignUpPages2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppAssets.signup1),
            const SizedBox(height: 30),
            const Text("Let’s complete your profile",style: TextStyle(letterSpacing: 0.5,fontSize: 20,fontWeight: FontWeight.w700,color: AppColors.textColor),),
            const SizedBox(height: 5,),
            const Text("It will help us to know more about you!",style: TextStyle(letterSpacing: 0.5,fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey1Color),),

           Padding(
             padding: const EdgeInsets.all(30),
             child: Column(
               children: [
                 const SizedBox(height: 15),
                 const CustomTextFieldsWidget(hintTitle: "Date of Birth",icons: AppAssets.calendar),
                 const SizedBox(height: 15),
                 Row(
                   children: [
                     const Flexible(child: CustomTextFieldsWidget(hintTitle: "Your Weight",icons: AppAssets.weightScale1)),
                     const SizedBox(width: 15),
                     kgButton("KG"),
                   ],
                 ),
                 const SizedBox(height: 15),
                 Row(
                   children: [
                     const Flexible(child: CustomTextFieldsWidget(hintTitle: "Your Height",icons: AppAssets.swap)),
                     const SizedBox(width: 15),
                     kgButton("CM"),
                   ],
                 ),
                 const SizedBox(height: 30),
                 CustomButton(onPress: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPages3()));
                 },title: "Next"),
               ],
             ),
           )


          ],
        ),
      ),
    );
  }

  Widget kgButton(String title){
    return Container(
      height: 48,width: 48,
      decoration: BoxDecoration(
        gradient: AppColors.buttonPurpleColor,
        borderRadius: BorderRadius.circular(14)
      ),
      child: Center(child: Text(title,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.whiteColor),),),
    );
  }

}


