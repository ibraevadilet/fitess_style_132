import 'package:fitess_style_132/hive_service/fitness_hive_model/fitness_hive_model.dart';
import 'package:fitess_style_132/hive_service/type_fitness.dart';
import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/workouts_pages/eco_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EcoPage extends StatefulWidget {
  const EcoPage({super.key});

  @override
  State<EcoPage> createState() => _EcoPageState();
}

class _EcoPageState extends State<EcoPage> {
  List<FitnessHiveModel> ecoSaved = [];
  @override
  void initState() {
    getData();
    super.initState();
  }

  bool isTodayFitnessed = false;
  int inHours = 0;

  getData() {
    final allEco = fitHive.values.toList();
    ecoSaved.addAll(
        allEco.where((e) => e.dateSaved != null && e.type == FitnessType.eco));
    final notSavedFirstEco = allEco
        .where((e) => e.dateSaved == null && e.type == FitnessType.eco)
        .first;
    if (ecoSaved.isEmpty) {
      ecoSaved.add(notSavedFirstEco);
    } else {
      final diffarance = ecoSaved.last.dateSaved!.difference(DateTime.now());
      final insecond = diffarance.inDays;
      inHours = 24 - diffarance.inHours.abs();
      final isTrue = insecond.abs() >= 1;
      if (isTrue) {
        ecoSaved.add(notSavedFirstEco);
      }
    }

    for (var model in ecoSaved) {
      if (model.dateSaved == null) {
        isTodayFitnessed = true;
        break;
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
        title: const FittedBox(child: Text('Eco-friendly Fitness Challenges')),
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
                itemCount: ecoSaved.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                itemBuilder: (context, index) => EcoWidget(
                  model: ecoSaved[index],
                ),
              ),
            ),
            if (!isTodayFitnessed)
              Text('Next training session in $inHours hours'),
          ],
        ),
      ),
    );
  }
}
