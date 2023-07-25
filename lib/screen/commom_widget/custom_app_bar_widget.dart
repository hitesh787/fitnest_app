import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';


class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Color? color;
  const CustomAppBarWidget({super.key, this.title, this.color});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            const ArrowButtonWidget(
              padding: 8,
              images: AppAssets.arrow,
              height: 32,width: 32,
            ),
            Text(title ?? "",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: color ?? AppColors.textColor),),
            const ArrowButtonWidget(
              padding: 12,
              images: AppAssets.dot,
              height: 32,width: 32,
            )
          ],
        ),
      ),
    );
  }

}




class ArrowButtonWidget extends StatelessWidget {
  final String? images;
  final double? height;
  final double? width;
  final double? padding;
  const ArrowButtonWidget({super.key, this.images, this.height, this.width, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 11),
      height: height ?? 32,
      width: width ?? 32,
      decoration: BoxDecoration(
        color: AppColors.borderColor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Image.asset(images ?? AppAssets.arrow,height: 18,width: 18,),
    );
  }
}
