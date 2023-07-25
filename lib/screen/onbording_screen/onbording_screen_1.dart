import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class OnbordingScreen1 extends StatefulWidget {
  const OnbordingScreen1({super.key});

  @override
  State<OnbordingScreen1> createState() => _OnbordingScreen1State();
}

class _OnbordingScreen1State extends State<OnbordingScreen1> {

  final PageController controller = PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: controller,
        itemCount: images.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.fill
                  ),
                ),
            ),
           const SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.all(34),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(title[index],style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: AppColors.textColor),textAlign: TextAlign.start),
                 const SizedBox(height: 15,),
                 Text(subTitle[index],style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.textColor),),
               ],
             ),
           ),
              const Spacer(),
             GestureDetector(
               onTap: (){
                 setState(() {
                   controller.animateToPage(controller.page!.toInt() + 1,
                       duration: const Duration(milliseconds: 400),
                       curve: Curves.easeIn
                   );
                 });
               },
               child: Align(
                 alignment: Alignment.topRight,
                 child: Container(
                   margin: const EdgeInsets.only(bottom:40,right: 30),
                   padding: const EdgeInsets.all(5),
                   decoration: BoxDecoration(
                     border: Border.all(width: 0.5,color: AppColors.textColor),shape: BoxShape.circle
                   ),
                   child: Container(
                     height: 50,
                     width: 50,
                     decoration: BoxDecoration(
                       gradient: AppColors.buttonBlueColor,
                       shape: BoxShape.circle
                     ),
                     child: const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.whiteColor,),
                   ),
                 ),
               ),
             )


            ],
          );
        },
      ),
    );
  }
}


List<String> images = [
  AppAssets.onbording1,
  AppAssets.onbording2,
  AppAssets.onbording3,
  AppAssets.onbording4,
];

List<String> title = [
  "Track Your Goal",
  "Get Burn",
  "Eat Well",
  "Improve Sleep  Quality",
];

List<String> subTitle = [
"Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
"Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
"Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
"Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
];

