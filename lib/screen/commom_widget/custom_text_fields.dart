import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFieldsWidget extends StatelessWidget {
  final String hintTitle;
  final String? icons;
  final Widget? suffixIcons;
  const CustomTextFieldsWidget({super.key, required this.hintTitle, this.icons, this.suffixIcons});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: const BorderSide(color: AppColors.borderColor));
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.borderColor,
        border: const UnderlineInputBorder(borderSide: BorderSide.none),
        enabledBorder: border,
        disabledBorder: border,
        focusedBorder: border,
        hintText: hintTitle,
        hintStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.grey2Color),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 10,top: 15,bottom: 15),
          child: Image.asset(icons ?? AppAssets.profile,height: 18,width: 18,),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
          child: suffixIcons,
        )


      ),

    );
  }
}
