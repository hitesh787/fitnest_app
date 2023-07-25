import 'package:fitnest_app/screen/commom_widget/custom_app_bar_widget.dart';
import 'package:fitnest_app/screen/dashbord_screen/chart_pages.dart';
import 'package:fitnest_app/screen/dashbord_screen/home_pages.dart';
import 'package:fitnest_app/screen/dashbord_screen/notification_screen.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class ActivityTracker extends StatelessWidget {
  const ActivityTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(title: "Activity Tracker"),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xffeaeefe),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Today Target",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.textColor,letterSpacing: 0.5),),
                        Container(
                          height: 24,width: 24,
                          decoration: BoxDecoration(
                            gradient: AppColors.buttonBlueColor,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: const Center(child: Icon(Icons.add,color: AppColors.whiteColor,size: 18)),
                        )
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 9,right: 11,top: 10,bottom: 9),
                          height: 60,
                          // width: 130,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Image.asset(AppAssets.glass1),
                              const SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("8L",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                  SizedBox(height: 5),
                                  Text("Water Intake",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                ],
                              )
                            ],
                          )
                        ),
                        const SizedBox(width: 15,),
                        Container(
                            padding: const EdgeInsets.only(left: 9,right: 11,top: 10,bottom: 9),
                          height: 60,
                          // width: 130,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,borderRadius: BorderRadius.circular(12),
                          ),
                            child: Row(
                              children: [
                                Image.asset(AppAssets.boots1),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("2400",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                    SizedBox(height: 5),
                                    Text("Foot Steps",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                  ],
                                )
                              ],
                            )
                        )
                      ],
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Activity Progress",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor),),
                  smallButton(
                      title: "Weekly",
                      height: 30,width: 76,bgColor: AppColors.buttonBlueColor
                  )
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 200,
                width: 315,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius:  BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff1D1617).withOpacity(.7),
                      blurRadius: 40,
                      spreadRadius: 0,
                      offset: const Offset(0, 10)
                    )
                  ]
                ),
                child: BarChartSample1(),
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Latest Activity",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor,letterSpacing: 0.5),),
                  Text("See more",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.grey2Color,letterSpacing: 0.5),),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xff1D1617).withOpacity(.70),
                          blurRadius: 40,
                          spreadRadius: 0,
                          offset: const Offset(0, 10)
                      )
                    ]

                ),
                child:  const CustomTitle(title: "Drinking 300ml Water"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
