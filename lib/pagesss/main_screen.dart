import 'dart:ui';

import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/pagesss/buy_screen.dart';
import 'package:fitess_style_132/pagesss/setting_screen.dart';
import 'package:fitess_style_132/workouts_pages/eco_page.dart';
import 'package:fitess_style_132/workouts_pages/emotion_page.dart';
import 'package:fitess_style_132/workouts_pages/mindful_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String? savedImage;
  bool isPrem = false;

  @override
  void initState() {
    isPrem = prefs.getBool('ispremmmsd') ?? false;
    savedImage = prefs.getString('image');
    showGreat();
    super.initState();
  }

  showGreat() async {
    await Future.delayed(const Duration(seconds: 1));
    final greates = grHive.values.where(
      (e) => e.dateTime == DateFormat('dd.MM.yyyy').format(DateTime.now()),
    );
    if (greates.isNotEmpty) {
      final one = greates.first;
      if (one.eco != null && one.emotion != null && one.mindful != null) {
        if (!one.isShow) {
          showDialog(
            context: context,
            builder: (BuildContext context) => StatefulBuilder(
              builder: (context, setState2) {
                return CupertinoAlertDialog(
                  title: Text(
                    'You did great today!',
                    style: TextStyle(
                      fontFamily: family,
                      fontSize: 17.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  content: Column(
                    children: [
                      SizedBox(height: 14.h),
                      Text(
                        'Come back tomorrow for new positive emotions and a healthy body!',
                        style: TextStyle(
                          fontFamily: family,
                          fontSize: 13.h,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    CupertinoDialogAction(
                      isDefaultAction: true,
                      onPressed: () async {
                        one.isShow = true;
                        await one.save();
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'OK',
                        style: TextStyle(
                          fontFamily: family,
                          fontSize: 17.h,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff0A84FF),
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
    }
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
                            if (!isPrem) {
                              premiumDialo(
                                context,
                                'If you want to use photo background function, get premium',
                              );
                            } else {
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
                                  if (!isPrem) {
                                    premiumDialo(
                                      context,
                                      'If you want to use Mindful Breathing Integration function, get premium',
                                    );
                                  } else {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) =>
                                            const MindfulPage(),
                                      ),
                                    );
                                  }
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

Future<void> premiumDialo(BuildContext context, String title) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(
        'Get Premium',
        style: TextStyle(
          fontFamily: family,
          fontSize: 17.h,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Column(
        children: [
          SizedBox(height: 14.h),
          Text(
            title,
            style: TextStyle(
              fontFamily: family,
              fontSize: 13.h,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 24.h),
        ],
      ),
      actions: [
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Close',
            style: TextStyle(
              fontFamily: family,
              fontSize: 17.h,
              fontWeight: FontWeight.w400,
              color: const Color(0xff0A84FF),
            ),
          ),
        ),
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.of(context).pop();

            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const BuyScreen(isClose: true),
              ),
            );
          },
          child: Text(
            'Get Premium',
            style: TextStyle(
              fontFamily: family,
              fontSize: 17.h,
              fontWeight: FontWeight.w600,
              color: const Color(0xff0A84FF),
            ),
          ),
        ),
      ],
    ),
  );
}
