import 'dart:ui';

import 'package:fitess_style_132/hive_service/fitness_hive_model/fitness_hive_model.dart';
import 'package:fitess_style_132/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeTaskScreen extends StatefulWidget {
  const ChangeTaskScreen({super.key, required this.model});
  final FitnessHiveModel model;

  @override
  State<ChangeTaskScreen> createState() => _ChangeTaskScreenState();
}

class _ChangeTaskScreenState extends State<ChangeTaskScreen> {
  List<FitnessHiveModel> fitnessList = [];
  @override
  void initState() {
    fitnessList = List.from(fitHive.values
        .where((e) => e.dateSaved == null && e.type == widget.model.type)
        .toList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop(fitnessList.first);
            },
            child: const Icon(Icons.arrow_back_ios_new),
          ),
          scrolledUnderElevation: 0,
          iconTheme: const IconThemeData(
            color: Color(0xff555555),
          ),
          backgroundColor: Colors.grey.shade400.withOpacity(0.1),
          centerTitle: false,
          title: const FittedBox(child: Text('Change Task')),
          titleTextStyle: TextStyle(
            fontSize: 20.h,
            fontWeight: FontWeight.w500,
            fontFamily: family,
          ),
        ),
        body: SafeArea(
          child: ReorderableListView.builder(
            header: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daily Exercise',
                  style: TextStyle(
                    fontSize: 18.h,
                    fontWeight: FontWeight.w600,
                    fontFamily: family,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16.h),
              ],
            ),
            padding: const EdgeInsets.all(16),
            key: UniqueKey(),
            itemCount: fitnessList.length,
            proxyDecorator: proxyDecorator,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              key: ValueKey(index),
              children: [
                if (index == 1)
                  Text(
                    'Other Exercises',
                    style: TextStyle(
                      fontSize: 18.h,
                      fontWeight: FontWeight.w600,
                      fontFamily: family,
                      color: Colors.white,
                    ),
                  ),
                if (index == 1) SizedBox(height: 16.h),
                ReordWidget(
                  model: fitnessList[index],
                ),
                const SizedBox(height: 10),
              ],
            ),
            onReorder: (oldIndex, newIndex) {
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex--;
                }

                final model = fitnessList.removeAt(oldIndex);
                fitnessList.insert(newIndex, model);
              });
            },
          ),
        ),
      ),
    );
  }

  Widget proxyDecorator(Widget child, int index, Animation<double> animation) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: index == 1 ? 25 : 0),
      child: AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          final double animValue = Curves.easeInOut.transform(animation.value);
          final double elevation = lerpDouble(0, 6, animValue)!;
          return Material(
            borderRadius: BorderRadius.circular(20),
            elevation: elevation,
            color: Colors.grey.withOpacity(0.1),
            shadowColor: Colors.grey.withOpacity(0.1),
            child: child,
          );
        },
        child: ReordWidget(model: fitnessList[index]),
      ),
    );
  }
}

class ReordWidget extends StatelessWidget {
  const ReordWidget({
    super.key,
    required this.model,
  });
  final FitnessHiveModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xff202020),
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              model.title,
              style: TextStyle(
                fontSize: 14.h,
                fontWeight: FontWeight.w600,
                fontFamily: family,
                color: const Color(0xffE80000),
              ),
            ),
          ),
          Image.asset(
            'assets/images/reorsIcon.png',
            height: 8,
          )
        ],
      ),
    );
  }
}
