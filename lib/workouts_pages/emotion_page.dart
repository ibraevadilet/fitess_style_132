import 'package:fitess_style_132/main.dart';
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
