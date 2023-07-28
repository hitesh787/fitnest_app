// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// class SizeConfig {
//
//   static double screenHeight = Get.context!.height;
//   static double screenWidth = Get.context!.width;
//
//   static double font20 = screenHeight/42.2;
//   static double containetHeight = screenHeight/3.87;
//   static double containetWidth = screenWidth/1.19;
//   static double padding30 = screenHeight/22.23;
//
//
//
//
//
//
//   static late MediaQueryData _mediaQueryData;
//   static late double screenWidth1;
//   static late double screenHeight1;
//   static late double blockSizeHorizontal;
//   static late double blockSizeVertical;
//
//   static late double _safeAreaHorizontal;
//   static late double _safeAreaVertical;
//   static late double safeBlockHorizontal;
//   static late double safeBlockVertical;
//
//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//
//     screenHeight1 = _mediaQueryData.size.width;
//     screenHeight1 = _mediaQueryData.size.height;
//
//     blockSizeHorizontal = screenWidth / 100;
//     blockSizeVertical = screenHeight / 100;
//
//     _safeAreaHorizontal = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
//     _safeAreaVertical = _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
//
//     safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
//     safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
//
//     print("screenHeight : $screenHeight");
//     print("screenWidth : $screenWidth");
//
//   }
// }
