import 'package:fitnest_app/screen/commom_widget/custom_app_bar_widget.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePagesScreen extends StatelessWidget {
  const HomePagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          title: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 40, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Welcome Back,",
                      style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey2Color),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Stefani Wong",
                      style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColor),
                    ),
                  ],
                ),
                const ArrowButtonWidget(
                    width: 40, height: 40, images: AppAssets.notificationIcon),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                height: 146,
                decoration: BoxDecoration(
                    gradient: AppColors.buttonBlueColor,
                    borderRadius: BorderRadius.circular(22),
                    image: const DecorationImage(
                      image: AssetImage(
                        AppAssets.bannerDots,
                      ),
                      fit: BoxFit.cover,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "BMI (Body Mass Index)",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteColor),
                        ),
                        const SizedBox(height: 5,),
                        const Text(
                          "You have a normal weight",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteColor),
                        ),
                        const SizedBox(height: 15),
                        smallButton(
                          title: "View More",
                          height: 35,width: 95,
                          bgColor: AppColors.buttonPurpleColor

                        ),
                      ],
                    ),
                   Image.asset(AppAssets.bannerPie)

                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                 color: const Color(0xffeaf1fe),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Today Target",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                    smallButton(
                        title: "Check",
                        height: 28,width: 68,
                        bgColor: AppColors.buttonBlueColor
                    ),
                    ],
                ),
              ),
              const SizedBox(height: 30,),
              const Text("Activity Status",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor),),
              const SizedBox(height: 15,),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xffeaf1fe),
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 315,
                    width: 150,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff1D242A).withOpacity(.5),
                          offset: const Offset(0, 10),
                          spreadRadius: 0,
                          blurRadius: 40
                        )
                      ]
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: const Color(0xff1D242A).withOpacity(.5),
                                  offset: const Offset(0, 10),
                                  spreadRadius: 0,
                                  blurRadius: 40
                              )
                            ]
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: const Color(0xff1D242A).withOpacity(.5),
                                  offset: const Offset(0, 10),
                                  spreadRadius: 0,
                                  blurRadius: 40
                              )
                            ]
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Workout Progress",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor,letterSpacing: 0.5),),
                  smallButton(
                    title: "Weekly",
                    height: 30,width: 76,bgColor: AppColors.buttonBlueColor
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                height: 172,
                decoration: const BoxDecoration(
                    color: Color(0xffeaf1fe),

                ),
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Latest Workout",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor,letterSpacing: 0.5),),
                  Text("See more",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.grey2Color,letterSpacing: 0.5),),

                ],
              ),
              const SizedBox(height: 15,),
              Wrap(
                runSpacing: 15,
                children: List.generate(5, (index) => Container(
                  padding: const EdgeInsets.all(15),
                  // height: 80,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xff1D242A).withOpacity(.5),
                            offset: const Offset(0, 10),
                            spreadRadius: 0,
                            blurRadius: 40
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,width: 50,decoration: const BoxDecoration(shape: BoxShape.circle,color: AppColors.textColor),
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Lowerbody Workout",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.textColor),),
                              const SizedBox(height: 3,),
                              const Text("200 Calories Burn | 30 minutes",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: AppColors.grey2Color),),
                              const SizedBox(height: 9),
                              Container(
                                width: 191,height: 10,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: AppColors.textColor),
                              )
                            ],
                          ),
                        ],
                      ),
                      Image.asset(AppAssets.workoutBtn,height: 24,width: 24,),
                    ],
                  ),
                ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

Widget smallButton({required String title,required double? height,required double? width,required LinearGradient? bgColor}){
  return Container(
    height: height ?? 35,
    width: width ?? 95,
    decoration: BoxDecoration(
      gradient: bgColor,
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(child: Text(title,style: const TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: AppColors.whiteColor),),),
  );
}