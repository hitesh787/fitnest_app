import 'package:fitnest_app/screen/commom_widget/custom_app_bar_widget.dart';
import 'package:fitnest_app/screen/dashbord_screen/home_pages.dart';
import 'package:fitnest_app/screen/dashbord_screen/profile_screen.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:fitnest_app/utils/dimensiond.dart';
import 'package:flutter/material.dart';

class WorkOutDetailsPages extends StatelessWidget {
  const WorkOutDetailsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppColors.buttonBlueColor),
      child: Scaffold(
        appBar: const CustomAppBarWidget(
            title: "", color: AppColors.whiteColor),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AppAssets.vector2,height: 415),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 30),
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Fullbody Workout",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor),),
                    const SizedBox(height: 8,),
                    const Text("11 Exercises | 32mins | 320 Calories Burn",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey1Color),),
                    const SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xfff0f4fc)
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xfff8ecfc)
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("You’ll Need",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor),),
                        Text("5 Items",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.grey2Color),),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    SizedBox(
                      height: 160,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 130,
                                width: 130,
                             decoration: BoxDecoration(
                               color: AppColors.textColor,
                               borderRadius: BorderRadius.circular(12)
                             ),
                              ),
                              const SizedBox(height: 10,),
                              const Text("Barbell",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.textColor),)
                            ],
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Exercises",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor),),
                        Text("3 Sets",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.grey2Color),),
                      ],
                    ),
                    const SizedBox(height: 15,),
                   Column(
                    children: List.generate(

                        5, (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: AppColors.textColor,borderRadius: BorderRadius.circular(12)
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Warm Up",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.textColor),),
                                  Text("05:00",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.grey1Color),),
                                ],
                              ),

                            ],
                          ),

                          Container(
                            height: 24,width: 24,decoration: BoxDecoration(
                              shape: BoxShape.circle,border: Border.all(color: AppColors.grey2Color,width: 1.2)
                          ),
                            child: const Center(child: Icon(Icons.arrow_forward_ios_outlined,color: AppColors.grey2Color,size: 15,)),
                          )

                        ],
                      ),
                    )),
                  )


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
