import 'package:fitnest_app/screen/commom_widget/custom_app_bar_widget.dart';
import 'package:fitnest_app/screen/dashbord_screen/home_pages.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class WorkOutTrackerPages extends StatelessWidget {
  const WorkOutTrackerPages({super.key});

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
