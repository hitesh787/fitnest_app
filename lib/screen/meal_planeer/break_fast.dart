import 'package:fitnest_app/screen/commom_widget/custom_app_bar_widget.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BreakFastPages extends StatelessWidget {
  const BreakFastPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(
          title: "Breakfast", color: AppColors.textColor),
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
             padding: const EdgeInsets.all(15),
             height: 50,
             decoration: BoxDecoration(
               color: AppColors.borderColor,
               borderRadius: BorderRadius.circular(16)
             ),
             child: Row(
               children: [
                 Flexible(
                   child: TextFormField(
                     decoration: const InputDecoration(
                       prefixIcon: Icon(CupertinoIcons.search),
                       hintText: "Search Pancake",
                       border: UnderlineInputBorder(borderSide: BorderSide.none,)
                     ),
                   ),
                 ),
                 Container(
                   width: 0.5,
                   height: 20,
                   color: AppColors.textColor,
                 ),
                 const SizedBox(width: 10,),
                 const Icon(CupertinoIcons.arrow_up_arrow_down_square_fill)
               ],
             ),
           ),
            const SizedBox(height: 30,),

            const Text("Category",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor),),
            const SizedBox(height: 15,),

            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) => Container(
                  margin: EdgeInsets.only(right: 15),
                  height: 100,width: 80,
                  decoration: BoxDecoration(
                      color: const Color(0xffEEA4CE),
                      borderRadius: BorderRadius.circular(16)
                  ),
                ),),
              ),
            ),

            const SizedBox(height: 30,),

            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) =>  Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.only(left: 20),
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      color: Color(0xffEEA4CE),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(22),bottomLeft: Radius.circular(22),bottomRight: Radius.circular(22),topRight: Radius.circular(100))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: Image.asset(AppAssets.food,height: 74,width: 118,)),
                      const Text("Breakfast",style: TextStyle(height: 2,fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.textColor),),
                      const Text("120+ Foods",style: TextStyle(height: 2,fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey1Color),),
                    ],
                  ),
                )),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
