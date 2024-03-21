import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/workouts_pages/eco_content.dart';
import 'package:fitess_style_132/workouts_pages/eco_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmotionDet extends StatelessWidget {
  const EmotionDet(
      {super.key,
      required this.listDet,
      required this.color,
      required this.title});
  final String title;
  final List<EcoCont> listDet;
  final Color color;
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
        title: FittedBox(child: Text(title)),
        titleTextStyle: TextStyle(
          fontSize: 20.h,
          fontWeight: FontWeight.w500,
          fontFamily: family,
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.all(16.r),
          shrinkWrap: true,
          itemCount: listDet.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) => EcoWidget(
            model: listDet[index],
            color: color,
            title: title,
          ),
        ),
      ),
    );
  }
}
