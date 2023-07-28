import 'package:fitnest_app/screen/commom_widget/custom_app_bar_widget.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class MealDetailsPages extends StatelessWidget {
  const MealDetailsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
               height: 1000,
                padding: const EdgeInsets.all(44),
                decoration: BoxDecoration(gradient: AppColors.buttonBlueColor),
                child: Image.asset(
                  AppAssets.food,
                  height: 288,
                  width: 288,
                ),
            ),

            const Positioned(
              left: 0,
              right: 0,
              child: CustomAppBarWidget(title: "", color: AppColors.whiteColor),
            ),

            Positioned(
              left: 0,right: 0,top: 250,bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 30),
                // height: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

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
            )

          ],
        ),
      ),

    );
  }
}
