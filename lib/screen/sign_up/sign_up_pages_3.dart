import 'package:fitnest_app/screen/commom_widget/custom_button.dart';
import 'package:fitnest_app/screen/login_pages/login_pages.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class SignUpPages3 extends StatefulWidget {
  const SignUpPages3({super.key});

  @override
  State<SignUpPages3> createState() => _SignUpPages3State();
}

class _SignUpPages3State extends State<SignUpPages3> {
  final PageController controller = PageController(viewportFraction: 0.75);
  var _currentPageValue =   0.0;
  final double _scaleFactor = 0.8;
  final double _height = 600;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        _currentPageValue = controller.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("What is your goal ?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: AppColors.textColor),),
              const SizedBox(height: 5,),
              const Text("It will help us to choose a best program for you",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.textColor),textAlign: TextAlign.center),
              const SizedBox(height: 50),
             SizedBox(
               height: 500,
               child: PageView.builder(
                   controller: controller,
                   itemCount: 3,
                   itemBuilder: (context,position){
                 return  _buildPageItems(position);
               }),
             ),
              const SizedBox(height: 73,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomButton(onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPages()));
                },title: "Confirm"),
              ),

            ],
          ),
        ),
      ),
    );
  }
  Widget _buildPageItems(int index) {

    Matrix4 matrix = Matrix4.identity();

    if(index == _currentPageValue.floor()){
      var currScale = 1-(_currentPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans, 0);

    }
    else if(index == _currentPageValue.floor()+1){
      var currScale = _scaleFactor+(_currentPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans, 0);

    }
    else if(index == _currentPageValue.floor()-1){
      var currScale = 1-(_currentPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans, 0);
    }
    else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,_height*(1-_scaleFactor)/2, 1);
    }


    return Transform(
      transform: matrix,
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(30),
        // height: 478,
        decoration: BoxDecoration(
            gradient: AppColors.buttonBlueColor,
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xffC58BF2).withOpacity(.30),
                  offset: const Offset(0, 10),
                  blurRadius: 22,
                  spreadRadius: 0
              )
            ]
        ),
        child: Column(
          children: [
            Image.asset(images[index],height: 290,width: 183,),
            const SizedBox(height: 24),
             Text(title[index],style: const TextStyle(letterSpacing: 0.5,fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.whiteColor),),
            const SizedBox(height: 3,),
            Container(
              width: 50,height: 2,decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(22),
            ),
            ),

            const SizedBox(height: 20),
             Text(subTitle[index],style: const TextStyle(letterSpacing: 0.5,fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.whiteColor),textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}


List<String> title = [
  "Improve Shape",
  "Lean & Tone",
  "Lose a Fat",
];
List<String> subTitle = [
  "I have a low amount of body fat and need / want to build more muscle",
  "I’m “skinny fat”. look thin but have no shape. I want to add learn muscle in the right way",
  "I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass",
];
List<String> images = [
  AppAssets.vector,AppAssets.vector1,AppAssets.vector2
];