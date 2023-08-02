import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String? title;

  const CustomButton({
    super.key,
    required this.onPress,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            gradient: AppColors.buttonBlueColor,
            borderRadius: BorderRadius.circular(100)),
        child: Center(
            child: Text(
          title ?? "",
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.whiteColor),
        )),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  final String icons;

  const GoogleButton({super.key, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.grey3Color)),
      child: Image.asset(icons, height: 20, width: 20),
    );
  }
}
