import 'package:fitnest_app/screen/commom_widget/custom_app_bar_widget.dart';
import 'package:fitnest_app/screen/dashbord_screen/home_pages.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreenWidget extends StatefulWidget {
  const ProfileScreenWidget({super.key});

  @override
  State<ProfileScreenWidget> createState() => _ProfileScreenWidgetState();
}

class _ProfileScreenWidgetState extends State<ProfileScreenWidget> {
  bool _enable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(title: "Profile"),
      backgroundColor: const Color(0xfffafbfa),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 35),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Container(
                      height: 55,width: 55,
                      decoration: const BoxDecoration(
                        color: AppColors.textColor,
                        shape: BoxShape.circle,

                      ),
                    ),
                    const SizedBox(width: 15,),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       const Text("Stefani Wong",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.textColor,letterSpacing: 0.5),),
                       const SizedBox(height: 5,),
                       const Text("Lose a Fat Program",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey1Color,letterSpacing: 0.5),),
                     ],
                   )
                  ],
                ),
                  smallButton(title: "Edit", height: 30, width: 83, bgColor: AppColors.buttonBlueColor)

                ],
              ),
              const SizedBox(height: 15,),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 smallContainerRowWidget(),
                 smallContainerRowWidget(),
                 smallContainerRowWidget(),
               ],
             ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 15,bottom: 20),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor),),
                    const SizedBox(height: 15,),
                    Wrap(
                      runSpacing: 10,
                      children: List.generate(title.length, (index) =>   Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(AppAssets.iconProfile,height: 20,width: 20,),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(title[index],style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey1Color),),
                            ],
                          )  ,
                          const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.grey1Color,size: 18),
                        ],
                      ),),
                    )

                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 15,bottom: 20),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Notification",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor),),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(AppAssets.iconNotif,height: 20,width: 20,),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Pop-up Notification",style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey1Color),),
                          ],
                        )  ,
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

                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 15,bottom: 20),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Other",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor),),
                    const SizedBox(height: 15,),
                    Wrap(
                      runSpacing: 10,
                      children: List.generate(title2.length, (index) =>   Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(AppAssets.iconProfile,height: 20,width: 20,),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(title2[index],style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey1Color),),
                            ],
                          )  ,
                          const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.grey1Color,size: 18),
                        ],
                      ),),
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

  Widget smallContainerRowWidget(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
      height: 65,width: 95,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1D1617).withOpacity(.43),
            offset: const Offset(0, 10),
            blurRadius: 40,
            spreadRadius: 0
          )
        ]
      ),
      child: Column(
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [
                  Color(0xff9DCEFF),
                  Color(0xff92A3FD),
                ],
                tileMode: TileMode.mirror,
              ).createShader(bounds);
            },
            child: const Text('180cm', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 8),
          const Text("Height",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey1Color),)
        ],
      ),
    );
  }

  List<String> title = [
    "Personal Data",
    "Achievement",
    "Activity History",
    "Workout Progress",
  ];

  List<String> title2 = [
    "Contact Us",
    "Privacy Policy",
    "Settings",
  ];
}


//Custom Switch Button
class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({Key? key, required this.value, required this.onChanged}) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> with SingleTickerProviderStateMixin {
  Animation? _circleAnimation;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
        begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
        end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
        parent: _animationController!, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController!.isCompleted) {
              _animationController!.reverse();
            } else {
              _animationController!.forward();
            }
            widget.value == false ? widget.onChanged(true) : widget.onChanged(false);
          },
          child: Container(
            width: 36.0,
            height: 18.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(99.0),
              gradient: _circleAnimation!.value == Alignment.centerLeft
                  ? AppColors.buttonPurpleColor
                  :  AppColors.buttonBlueColor,

            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 3.0, bottom: 3.0, right: 3.0, left: 3.0),
              child: Container(
                alignment:
                widget.value
                    ? ((Directionality.of(context) == TextDirection.rtl)
                    ? Alignment.centerRight
                    : Alignment.centerLeft )
                    : ((Directionality.of(context) == TextDirection.rtl)
                    ? Alignment.centerLeft
                    : Alignment.centerRight),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}