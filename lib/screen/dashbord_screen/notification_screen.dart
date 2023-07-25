import 'package:fitnest_app/screen/commom_widget/custom_app_bar_widget.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      "Hey, it’s time for lunch",
      "Don’t miss your lowerbody workout",
      "Hey, let’s add some meals for your b..",
      "Congratulations, You have finished A..",
      "Hey, it’s time for lunch",
      "Ups, You have missed your Lowerbo...",
    ];
    return Scaffold(
        appBar: const CustomAppBarWidget(title: "Notification"),
        backgroundColor: AppColors.whiteColor,
        body: ListView.builder(
          itemCount: title.length,
          itemBuilder: (c, i) {
            return Padding(
              padding: const EdgeInsets.only(top: 15, right: 30, left: 30),
              child: Column(
                children: [
                  CustomTitle(title: title[i]),
                  const SizedBox(
                    height: 15,
                  ),
                  if (title.length - 1 != i)
                    const Divider(
                      color: AppColors.grey3Color,
                      thickness: 1,
                    )
                ],
              ),
            );
          },
        ));
  }
}

class CustomTitle extends StatelessWidget {
  final String? title;

  const CustomTitle({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  color: AppColors.textColor, shape: BoxShape.circle),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? "Hey, it’s time for lunch",
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColor,
                      letterSpacing: 0.5),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "About 1 minutes ago",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey1Color,
                      letterSpacing: 0.5),
                ),
              ],
            )
          ],
        ),
        const Icon(
          Icons.more_vert_rounded,
          color: AppColors.grey2Color,
        )
      ],
    );
  }
}
