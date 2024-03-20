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
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}
