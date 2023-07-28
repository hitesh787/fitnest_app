import 'package:fitnest_app/screen/commom_widget/custom_app_bar_widget.dart';
import 'package:fitnest_app/screen/dashbord_screen/home_pages.dart';
import 'package:fitnest_app/screen/dashbord_screen/profile_screen.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:fitnest_app/utils/dimensiond.dart';
import 'package:flutter/material.dart';

class WorkOutTrackerPages extends StatefulWidget {
  const WorkOutTrackerPages({super.key});

  @override
  State<WorkOutTrackerPages> createState() => _WorkOutTrackerPagesState();
}

class _WorkOutTrackerPagesState extends State<WorkOutTrackerPages> {
  bool _enable = false;
  bool _enable1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppColors.buttonBlueColor),
      child: Scaffold(
        appBar: const CustomAppBarWidget(
            title: "Workout Tracker", color: AppColors.whiteColor),
        backgroundColor: Colors.transparent,
        // body:  CustomScrollView(
        //   slivers: [
        //     SliverAppBar(
        //       backgroundColor: Colors.transparent,
        //       pinned: true,
        //       expandedHeight: 200,
        //       flexibleSpace: Container(
        //         margin: const EdgeInsets.all(30),
        //         height: 172,
        //         decoration: BoxDecoration(gradient: AppColors.buttonPurpleColor, borderRadius: BorderRadius.circular(20)),
        //       ),
        //     ),
        //     SliverToBoxAdapter(
        //       child: Container(
        //         padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 30),
        //         // height: 535,
        //         decoration: const BoxDecoration(
        //           color: AppColors.whiteColor,
        //           borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
        //         ),
        //         child: SingleChildScrollView(
        //           child: Column(
        //             children: [
        //               Container(
        //                 padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(16),
        //                   color: const Color(0xffeaf1fe),
        //                 ),
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     const Text("Daily Workout Schedule",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
        //                     smallButton(
        //                         title: "Check",
        //                         height: 28,width: 68,
        //                         bgColor: AppColors.buttonBlueColor
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //
        //
        //             ],
        //           ),
        //         ),
        //       ),
        //     )
        //   ],
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                height: 172,
               decoration: BoxDecoration(gradient: AppColors.buttonPurpleColor, borderRadius: BorderRadius.circular(20)),
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 30),
                  decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffeaf1fe),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Daily Workout Schedule",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                            smallButton(
                                title: "Check",
                                height: 28,width: 68,
                                bgColor: AppColors.buttonBlueColor
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Upcoming Workout",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor),),
                          Text("See more",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.grey2Color),),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff1D1617).withOpacity(.7),
                              spreadRadius: 0,blurRadius: 20,offset: const Offset(0, 4)
                            )
                          ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                             children: [
                               Container(
                                 height: 50,width: 50,
                                 decoration: const BoxDecoration(
                                     color: AppColors.textColor,shape: BoxShape.circle
                                 ),
                               ),
                               const SizedBox(width: 10,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [
                                   Text("Fullbody Workout",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.textColor),),
                                   const SizedBox(height: 5,),
                                   Text("Today, 03:00pm",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: AppColors.grey2Color),),
                                 ],
                               )
                             ],
                           ),
                            CustomSwitch(
                              value: _enable,
                              onChanged: (bool val){
                                setState(() {
                                  _enable = val;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                  color: const Color(0xff1D1617).withOpacity(.7),
                                  spreadRadius: 0,blurRadius: 20,offset: const Offset(0, 4)
                              )
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,width: 50,
                                  decoration: const BoxDecoration(
                                      color: AppColors.textColor,shape: BoxShape.circle
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Fullbody Workout",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.textColor),),
                                    const SizedBox(height: 5,),
                                    Text("Today, 03:00pm",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: AppColors.grey2Color),),
                                  ],
                                )
                              ],
                            ),
                            CustomSwitch(
                              value: _enable1,
                              onChanged: (bool val){
                                setState(() {
                                  _enable1 = val;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text("What Do You Want to Train",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor),),
                      const SizedBox(height: 15,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        height: 132,
                        decoration: BoxDecoration(
                          color: const Color(0xffeaf1fe),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Fullbody Workout",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.textColor),),
                                const SizedBox(height: 10),
                                const Text("11 Exercises | 32mins",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey1Color),),
                                const SizedBox(height: 15,),
                                smallButton(
                                    title: "View more",
                                    height: 35,width: 94,
                                    bgColor: AppColors.buttonWhiteColor
                                ),
                              ],
                            ),
                            Image.asset(AppAssets.vector3)
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        height: 132,
                        decoration: BoxDecoration(
                          color: const Color(0xffeaf1fe),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Fullbody Workout",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.textColor),),
                                const SizedBox(height: 10),
                                const Text("11 Exercises | 32mins",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey1Color),),
                                const SizedBox(height: 15,),
                                smallButton(
                                    title: "View more",
                                    height: 35,width: 94,
                                    bgColor: AppColors.buttonWhiteColor
                                ),
                              ],
                            ),
                            Image.asset(AppAssets.vector3)
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        height: 132,
                        decoration: BoxDecoration(
                          color: const Color(0xffeaf1fe),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Fullbody Workout",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.textColor),),
                                const SizedBox(height: 10),
                                const Text("11 Exercises | 32mins",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey1Color),),
                                const SizedBox(height: 15,),
                                smallButton(
                                    title: "View more",
                                    height: 35,width: 94,
                                    bgColor: AppColors.buttonWhiteColor
                                ),
                              ],
                            ),
                            Image.asset(AppAssets.vector3)
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
