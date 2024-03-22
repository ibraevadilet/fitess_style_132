import 'package:fitess_style_132/hive_service/type_fitness.dart';
import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/workouts_pages/emotion_det.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmotionPage extends StatelessWidget {
  const EmotionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xff555555),
        ),
        backgroundColor: Colors.grey.shade400.withOpacity(0.1),
        centerTitle: false,
        title: const Text('Emotion-based Workouts'),
        titleTextStyle: TextStyle(
          fontSize: 20.h,
          fontWeight: FontWeight.w500,
          fontFamily: family,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            InkWell(
              onTap: () {
                final onlyEmotions = fitHive.values
                    .where(
                        (e) => e.type != FitnessType.eco && e.dateSaved != null)
                    .toList();
                bool isResult = false;
                int inHours = 0;
                if (onlyEmotions.isNotEmpty) {
                  final diff =
                      onlyEmotions.last.dateSaved!.difference(DateTime.now());
                  isResult = diff.inHours.abs() <= 24;
                  inHours = 24 - diff.inHours.abs();
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmotionDet(
                      hour: isResult ? inHours : null,
                      listDet: fitHive.values
                          .where((e) => e.type == FitnessType.pos)
                          .toList(),
                      color: const Color(0xff69EA57),
                      title: 'Positive Mood',
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(20.h),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xff69EA57),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/positiv.png',
                      width: 90.w,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Positive Mood',
                      style: TextStyle(
                        fontSize: 20.h,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff387D06),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h),
            InkWell(
              onTap: () {
                final onlyEmotions = fitHive.values
                    .where(
                        (e) => e.type != FitnessType.eco && e.dateSaved != null)
                    .toList();
                bool isResult = false;
                int inHours = 0;
                if (onlyEmotions.isNotEmpty) {
                  final diff =
                      onlyEmotions.last.dateSaved!.difference(DateTime.now());
                  isResult = diff.inHours.abs() <= 24;
                  inHours = 24 - diff.inHours.abs();
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmotionDet(
                      hour: isResult ? inHours : null,
                      listDet: fitHive.values
                          .where((e) => e.type == FitnessType.neut)
                          .toList(),
                      color: const Color(0xffEACB57),
                      title: 'Neutral Mood',
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(20.h),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffEACB57),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/neutral.png',
                      width: 90.w,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Neutral Mood',
                      style: TextStyle(
                        fontSize: 20.h,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff7D6406),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h),
            InkWell(
              onTap: () {
                final onlyEmotions = fitHive.values
                    .where(
                        (e) => e.type != FitnessType.eco && e.dateSaved != null)
                    .toList();
                bool isResult = false;
                int inHours = 0;
                if (onlyEmotions.isNotEmpty) {
                  final diff =
                      onlyEmotions.last.dateSaved!.difference(DateTime.now());
                  isResult = diff.inHours.abs() <= 24;
                  inHours = 24 - diff.inHours.abs();
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmotionDet(
                      hour: isResult ? inHours : null,
                      listDet: fitHive.values
                          .where((e) => e.type == FitnessType.bad)
                          .toList(),
                      color: const Color(0xffEA5757),
                      title: 'Bad Mood',
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(20.h),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffEA5757),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/bad.png',
                      width: 90.w,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Bad Mood',
                      style: TextStyle(
                        fontSize: 20.h,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff7D6406),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
