import 'dart:math' as math;
import 'package:fitnest_app/main.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';

class OnbordingScreen1 extends StatefulWidget {
  const OnbordingScreen1({super.key});

  @override
  State<OnbordingScreen1> createState() => _OnbordingScreen1State();
}

class _OnbordingScreen1State extends State<OnbordingScreen1> {
  final PageController controller = PageController(initialPage: 0);
  double _progress = 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: controller,
        itemCount: images.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images[index]), fit: BoxFit.fill),
                ),
              ),
              const SizedBox(height: 19),
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 34, top: 34),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title[index],
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor),
                        textAlign: TextAlign.start),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      subTitle[index],
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    controller.animateToPage(controller.page!.toInt() + 1,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn);
                    _progress += 0.3;
                  });
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40, right: 30),
                    width: 65.0,
                    height: 65.0,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5,color: const Color(0xffF7F8F8)),shape: BoxShape.circle
                    ),
                    child: CustomPaint(
                      painter: GradientArcPainter(
                        progress: _progress,
                        startColor: const Color(0xff92A3FD),
                        endColor:  const Color(0xff9DCEFF),
                        width: 2.0,
                      ),
                      child: Center(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              gradient: AppColors.buttonBlueColor,
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class GradientArcPainter extends CustomPainter {
  const GradientArcPainter({
    required this.progress,
    required this.startColor,
    required this.endColor,
    required this.width,
  }) : super();

  final double progress;
  final Color startColor;
  final Color endColor;
  final double width;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);
    final gradient = SweepGradient(
      startAngle: 3 * math.pi / 2,
      endAngle: 7 * math.pi / 2,
      tileMode: TileMode.repeated,
      colors: [startColor, endColor],
    );

    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..strokeCap = StrokeCap.butt // StrokeCap.round is not recommended.
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width / 2, size.height / 2) - (width / 2);
    const startAngle = -math.pi / 2;
    final sweepAngle = 2 * math.pi * progress;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle,
        sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

List<String> images = [
  AppAssets.onbording1,
  AppAssets.onbording2,
  AppAssets.onbording3,
  AppAssets.onbording4,
];

List<String> title = [
  "Track Your Goal",
  "Get Burn",
  "Eat Well",
  "Improve Sleep  Quality",
];

List<String> subTitle = [
  "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
  "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
  "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
  "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
];
