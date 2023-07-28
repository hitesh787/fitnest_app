import 'package:fitnest_app/screen/commom_widget/custom_button.dart';
import 'package:fitnest_app/screen/commom_widget/custom_text_fields.dart';
import 'package:fitnest_app/screen/sign_up/sign_up_pages_2.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 60),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Hey there,",style: TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.w400,fontSize: 16),textAlign: TextAlign.center),
                const SizedBox(height: 5,),
                const Text("Create an Account",style: TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.w700,fontSize: 20),textAlign: TextAlign.center,),
                const SizedBox(height: 30),
                const CustomTextFieldsWidget(hintTitle: "First Name",icons: AppAssets.profile),
                const SizedBox(height: 15),
                const CustomTextFieldsWidget(hintTitle: "Last Name",icons: AppAssets.profile, ),
                const SizedBox(height: 15),
                const CustomTextFieldsWidget(hintTitle: "Email",icons: AppAssets.message),
                const SizedBox(height: 15),
                CustomTextFieldsWidget(hintTitle: "Password",icons: AppAssets.lock,suffixIcons: Image.asset(AppAssets.hide,height: 18,width: 18)),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                      activeColor: AppColors.checkColor,
                        checkColor: AppColors.whiteColor,
                        value: isActive,
                        onChanged: (val){
                          isActive = val!;
                          setState(() {});
                        },
                    ),
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                            text: "By continuing you accept our",style: TextStyle(letterSpacing: 0.5,fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey2Color),
                            children: [
                              TextSpan(
                                text: " Privacy Policy",style: TextStyle(letterSpacing: 0.5,fontSize: 13,fontWeight: FontWeight.w400,color: AppColors.grey2Color,decoration: TextDecoration.underline),
                              ),
                              TextSpan(
                                text: " and ",
                              ),
                              TextSpan(
                                text: " Term of Use",style: TextStyle(letterSpacing: 0.5,fontSize: 13,fontWeight: FontWeight.w400,color: AppColors.grey2Color,decoration: TextDecoration.underline),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                CustomButton(onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPages2()));
                },title: "Register"),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Flexible(flex: 5,child: Divider(color: AppColors.grey3Color)),
                    SizedBox(width: 10,),
                    Text("OR",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.textColor),),
                    SizedBox(width: 10,),
                    Flexible(flex: 5,child: Divider(color: AppColors.grey3Color)),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  GoogleButton(icons: AppAssets.googleLogo,),
                  SizedBox(width: 30),
                  GoogleButton(icons: AppAssets.facebook,),
                ],
              ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Already have an account? ",style: TextStyle(letterSpacing: 0.5,fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.textColor),),
                    Text("Login",style: TextStyle(letterSpacing: 0.5,fontSize: 14,fontWeight: FontWeight.w500,color:Color(0xffC58BF2)),),
                  ],
                ),
               const Spacer(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
