import 'dart:ui';

import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/pagesss/setting_screen.dart';
import 'package:fitess_style_132/workouts_pages/eco_page.dart';
import 'package:fitess_style_132/workouts_pages/emotion_page.dart';
import 'package:fitess_style_132/workouts_pages/mindful_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:table_calendar/table_calendar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String? savedImage;

  @override
  void initState() {
    savedImage = prefs.getString('image');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        blendMode: BlendMode.srcOver,
        child: Container(
          decoration: BoxDecoration(
            image: savedImage != null
                ? DecorationImage(
                    image: MemoryImage(
                      Uint8List.fromList(savedImage!.codeUnits),
                    ),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
          child: Container(
            color: Colors.black.withOpacity(0.8),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Column(
                  children: [
                    TableCalendar(
                      daysOfWeekHeight: 30.h,
                      daysOfWeekStyle: const DaysOfWeekStyle(
                        weekdayStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: family,
                          color: Color(0xff555555),
                        ),
                        weekendStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: family,
                          color: Color(0xff555555),
                        ),
                      ),
                      locale: 'en_EN',
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      headerStyle: const HeaderStyle(
                        leftChevronIcon: Icon(
                          Icons.chevron_left,
                          color: Color(0xff555555),
                          size: 33,
                        ),
                        rightChevronIcon: Icon(
                          Icons.chevron_right,
                          color: Color(0xff555555),
                          size: 33,
                        ),
                        titleTextStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: family,
                        ),
                        titleCentered: true,
                        formatButtonVisible: false,
                        headerPadding: EdgeInsets.only(top: 20, bottom: 30),
                      ),
                      calendarStyle: const CalendarStyle(
                        cellAlignment: Alignment.center,
                        todayDecoration: BoxDecoration(
                          color: Color(0xffFF0000),
                          shape: BoxShape.circle,
                        ),
                        defaultDecoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        weekendDecoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        defaultTextStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: family,
                        ),
                        weekendTextStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: family,
                        ),
                        todayTextStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: family,
                        ),
                        outsideTextStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: family,
                          color: Color(0xff555555),
                        ),
                      ),
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                      calendarFormat: CalendarFormat.month,
                      rangeSelectionMode: RangeSelectionMode.toggledOff,
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () async {
                            final pickedFile = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (pickedFile != null) {
                              final bytes1 = await pickedFile.readAsBytes();
                              // final image = File(pickedFile.path);
                              // final bytes = image.readAsBytesSync();
                              final photo = String.fromCharCodes(bytes1);
                              await prefs.setString('image', photo);

                              savedImage = prefs.getString('image');
                              setState(() {});
                            }
                          },
                          child: Image.asset(
                            'assets/images/body_goal_button.png',
                            height: 60.h,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const SettingScreen(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/images/settings_button.png',
                            height: 60.h,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => const EcoPage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/Eco_friendly_icon.png',
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => const EmotionPage(),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/Emotion_based_icon.png',
                                ),
                              ),
                              SizedBox(height: 10.w),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => const MindfulPage(),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/Mindful_icon.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
