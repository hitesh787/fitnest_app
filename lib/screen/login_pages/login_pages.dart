import 'package:fitnest_app/provider/validator_provider.dart';
import 'package:fitnest_app/screen/commom_widget/custom_button.dart';
import 'package:fitnest_app/screen/commom_widget/custom_text_fields.dart';
import 'package:fitnest_app/screen/dashbord_screen/home_pages.dart';
import 'package:fitnest_app/screen/login_pages/success_sign_up.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    final formProvider = Provider.of<FormNotifier>(context);
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Form(
        key: formProvider.formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30,right:30,top: 60,bottom: 40),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Hey there,",style: TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.w400,fontSize: 16),textAlign: TextAlign.center),
                  const SizedBox(height: 5,),
                  const Text("Welcome Back",style: TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.w700,fontSize: 20),textAlign: TextAlign.center,),
                  const SizedBox(height: 30),

                  CustomTextFieldsWidget(
                    onChange: (val){},
                    controller: email,
                      hintTitle: "Email",
                      icons: AppAssets.message,
                      validator: (value) => formProvider.email.errorMessage,
                  ),


                  const SizedBox(height: 15),

                 CustomTextFieldsWidget(
                   onChange: (val){},
                    controller: password,
                      hintTitle: "Password",
                      icons: AppAssets.lock,
                      suffixIcons: Image.asset(AppAssets.hide,height: 18,width: 18),
                   validator: (value) => formProvider.name.errorMessage,
                  ),




                  const SizedBox(height: 10),
                  const Text("Forgot your password?",style: TextStyle(decoration: TextDecoration.underline,fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.grey2Color),),
                  const Spacer(),
                  CustomButton(
                    onPress: (){
                      formProvider.validateForm();
                    },
                      title: "Login",),
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
                      Text("Don’t have an account yet? ",style: TextStyle(letterSpacing: 0.5,fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.textColor),),
                      Text("Register",style: TextStyle(letterSpacing: 0.5,fontSize: 14,fontWeight: FontWeight.w500,color:Color(0xffC58BF2)),),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
