import 'package:fitnest_app/screen/commom_widget/custom_app_bar_widget.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:fitnest_app/utils/date_utils.dart' as date_util;


class MealSchedule extends StatefulWidget {
  const MealSchedule({super.key});

  @override
  State<MealSchedule> createState() => _MealScheduleState();
}

class _MealScheduleState extends State<MealSchedule> {

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
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 15),
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
              ? AppColors.buttonCalendarColor
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
      appBar: const CustomAppBarWidget(title: "Meal Schedule", color: AppColors.textColor),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            titleView(),
            hrizontalCapsuleListView(),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(bottom: 15,left: 30,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Breakfast",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textColor),),
                  Text("2 meals | 230 calories",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.grey2Color),),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Column(
              children: List.generate(10, (index) => Padding(
                padding: const EdgeInsets.only(bottom: 15,left: 30,right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: AppColors.textColor,borderRadius: BorderRadius.circular(12)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Warm Up",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.textColor),),
                            Text("05:00",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.grey1Color),),
                          ],
                        ),

                      ],
                    ),

                    Container(
                      height: 24,width: 24,decoration: BoxDecoration(
                        shape: BoxShape.circle,border: Border.all(color: AppColors.grey2Color,width: 1.2)
                    ),
                      child: const Center(child: Icon(Icons.arrow_forward_ios_outlined,color: AppColors.grey2Color,size: 15,)),
                    )

                  ],
                ),
              )),
            )

          ],
        ),
      ),
    );
  }
}
