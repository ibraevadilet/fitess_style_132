import 'package:fitess_style_132/hive_service/fitness_hive_model/fitness_hive_model.dart';
import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/workouts_pages/eco_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmotionDet extends StatefulWidget {
  const EmotionDet({
    super.key,
    required this.listDet,
    required this.color,
    required this.title,
    this.hour,
  });
  final String title;
  final List<FitnessHiveModel> listDet;
  final Color color;
  final int? hour;

  @override
  State<EmotionDet> createState() => _EmotionDetState();
}

class _EmotionDetState extends State<EmotionDet> {
  List<FitnessHiveModel> listDet = [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  bool isTodayFitnessed = false;
  int inHours = 0;

  getData() {
    listDet.addAll(widget.listDet.where((e) => e.dateSaved != null));
    if (widget.hour == null) {
      final notSavedFirstEco =
          widget.listDet.where((e) => e.dateSaved == null).first;
      if (listDet.isEmpty) {
        listDet.add(notSavedFirstEco);
      } else {
        final diffarance = listDet.last.dateSaved!.difference(DateTime.now());
        final insecond = diffarance.inDays;
        inHours = 24 - diffarance.inHours.abs();
        final isTrue = insecond.abs() >= 1;
        if (isTrue) {
          listDet.add(notSavedFirstEco);
        }
      }
    }

    if (widget.hour == null) {
      for (var model in listDet) {
        if (model.dateSaved == null) {
          isTodayFitnessed = true;
          break;
        }
      }
    }
  }

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
        title: FittedBox(child: Text(widget.title)),
        titleTextStyle: TextStyle(
          fontSize: 20.h,
          fontWeight: FontWeight.w500,
          fontFamily: family,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.all(16.r),
                shrinkWrap: true,
                itemCount: listDet.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                itemBuilder: (context, index) => EcoWidget(
                  model: listDet[index],
                  color: widget.color,
                  title: widget.title,
                ),
              ),
            ),
            if (widget.hour != null)
              Text('Next training session in ${widget.hour} hours'),
            if (widget.hour == null && !isTodayFitnessed)
              Text('Next training session in $inHours hours'),
          ],
        ),
      ),
    );
  }
}
