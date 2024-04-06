import 'package:fitess_style_132/hive_service/fitness_hive_model/fitness_hive_model.dart';
import 'package:fitess_style_132/hive_service/great_today_hive_model/great_today_hive_model.dart';
import 'package:fitess_style_132/hive_service/type_fitness.dart';
import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/pagesss/main_screen.dart';
import 'package:fitess_style_132/workouts_pages/change_task_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class EcoDetaile extends StatefulWidget {
  const EcoDetaile({super.key, required this.model, this.title});
  final FitnessHiveModel model;
  final String? title;

  @override
  State<EcoDetaile> createState() => _EcoDetaileState();
}

class _EcoDetaileState extends State<EcoDetaile> {
  late FitnessHiveModel model = widget.model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(
          color: Color(0xff555555),
        ),
        backgroundColor: Colors.grey.shade400.withOpacity(0.1),
        centerTitle: false,
        title: FittedBox(
            child: Text(widget.title ?? 'Eco-friendly Fitness Challenges')),
        titleTextStyle: TextStyle(
          fontSize: 20.h,
          fontWeight: FontWeight.w500,
          fontFamily: family,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              Text(
                model.title,
                style: TextStyle(
                  fontSize: 30.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Divider(
                height: 32.h,
                color: const Color(0xff202020),
              ),
              Text(
                'Description:',
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff555555),
                ),
              ),
              Text(
                model.description,
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Time:',
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff555555),
                ),
              ),
              Text(
                '${model.time} minutes',
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Calories:',
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff555555),
                ),
              ),
              Text(
                '${model.calories}',
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () async {
                        final result = await Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) =>
                                ChangeTaskScreen(model: model),
                          ),
                        ) as FitnessHiveModel?;
                        if (result != null) {
                          model = result;
                          setState(() {});
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16.r),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff202020),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.edit,
                              color: Color(0xff2E70F0),
                            ),
                            Text(
                              'Change Task',
                              style: TextStyle(
                                fontSize: 16.h,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff2E70F0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: InkWell(
                      onTap: () async {
                        model.dateSaved = DateTime.now();
                        await model.save();
                        final greates = grHive.values
                            .where(
                              (e) =>
                                  e.dateTime ==
                                  DateFormat('dd.MM.yyyy')
                                      .format(DateTime.now()),
                            )
                            .toList();
                        if (greates.isEmpty) {
                          if (model.type == FitnessType.eco) {
                            grHive.add(
                              GreatTodayHiveModel(
                                eco: 'Done',
                                dateTime: DateFormat('dd.MM.yyyy').format(
                                  DateTime.now(),
                                ),
                              ),
                            );
                          } else {
                            grHive.add(
                              GreatTodayHiveModel(
                                emotion: 'Done',
                                dateTime: DateFormat('dd.MM.yyyy').format(
                                  DateTime.now(),
                                ),
                              ),
                            );
                          }
                        } else {
                          if (model.type == FitnessType.eco) {
                            greates.first.eco = 'Done';
                            await greates.first.save();
                          } else {
                            greates.first.emotion = 'Done';
                            await greates.first.save();
                          }
                        }
                        Navigator.pushAndRemoveUntil(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const MainScreen(),
                          ),
                          (route) => false,
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16.r),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff202020),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.check_circle_outline,
                              color: Color(0xff2E70F0),
                            ),
                            Text(
                              'Mark as Done',
                              style: TextStyle(
                                fontSize: 16.h,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff2E70F0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
