import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fitnest_app/utils/date_utils.dart' as date_util;

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double width = 0.0;
  double height = 0.0;

  late ScrollController scrollController;
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();
  List<String> todos = <String>[];
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
    currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    currentMonthList = currentMonthList.toSet().toList();
    scrollController =
        ScrollController(initialScrollOffset: 70.0 * currentDateTime.day);
    super.initState();
  }


  Widget titleView() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Text(
        date_util.DateUtils.months[currentDateTime.month - 1] +
            ' ' +
            currentDateTime.year.toString(),
        style: const TextStyle(
            color: AppColors.grey2Color, fontWeight: FontWeight.w400, fontSize: 14),
      ),
    );
  }

  Widget hrizontalCapsuleListView() {
    return SizedBox(
      width: width,
      height: 90,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: currentMonthList.length,
        itemBuilder: (BuildContext context, int index) {
          return capsuleView(index);
        },
      ),
    );
  }

  Widget capsuleView(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentDateTime = currentMonthList[index];
        });
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10,right: 5),
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 22),
        width: 70,
        decoration: BoxDecoration(
            gradient: (currentMonthList[index].day != currentDateTime.day)
                ? AppColors.buttonWhiteColor
                : AppColors.buttonBlueColor ,
            borderRadius: BorderRadius.circular(10),
           ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              currentMonthList[index].day.toString(),
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color:
                  (currentMonthList[index].day != currentDateTime.day)
                      ? HexColor("465876")
                      : Colors.white),
            ),
            const SizedBox(height: 15,),
            Text(
              date_util.DateUtils
                  .weekdays[currentMonthList[index].weekday - 1],
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color:
                  (currentMonthList[index].day != currentDateTime.day)
                      ? HexColor("465876")
                      : Colors.white),
            )
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
          children: <Widget>[
            titleView(),
            hrizontalCapsuleListView(),
          ],
        ),
       );
  }
}