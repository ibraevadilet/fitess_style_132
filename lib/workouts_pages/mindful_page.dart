import 'dart:async';

import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/pagesss/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MindfulPage extends StatefulWidget {
  const MindfulPage({super.key});

  @override
  State<MindfulPage> createState() => _MindfulPageState();
}

class _MindfulPageState extends State<MindfulPage> {
  int time = 1;
  late int timeInseconds = time * 60;
  String minutesConvertMain(int seconds) {
    Duration clockTimer = Duration(seconds: seconds);
    return '${clockTimer.inMinutes.remainder(60).toString().padLeft(2, '0')}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';
  }

  int secondsStart = 0;
  Timer? timerStart;
  late final oneSecStart = const Duration(seconds: 1);

  @override
  void dispose() {
    timerStart?.cancel();
    super.dispose();
  }

  void startTimerStart() {
    timerStart = Timer.periodic(oneSecStart, (Timer timer) {
      if (mounted) {
        setState(() {
          secondsStart++;
          if (timeInseconds == secondsStart) {
            secondsStart = 0;
            timerStart!.cancel();
            showWellDoneDialog();
          }
        });
      }
    });
  }

  showWellDoneDialog() async {
    showDialog(
      barrierDismissible: false,
      useSafeArea: false,
      barrierColor: Colors.black.withOpacity(0.5),
      context: context,
      builder: (context) => AlertDialog(
        surfaceTintColor: Colors.black.withOpacity(0.5),
        iconColor: Colors.black.withOpacity(0.5),
        shadowColor: Colors.black.withOpacity(0.5),
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.black.withOpacity(0.5),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Image.asset('assets/images/well_done.png'),
          ),
        ),
      ),
    );

    await Future.delayed(const Duration(seconds: 3));
    Navigator.pop(context);
    Navigator.pushAndRemoveUntil(
      context,
      CupertinoPageRoute(
        builder: (context) => const MainScreen(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xff555555),
        ),
        backgroundColor: Colors.grey.shade400.withOpacity(0.1),
        centerTitle: false,
        title: const FittedBox(child: Text('Mindful Breathing Integration')),
        titleTextStyle: TextStyle(
          fontSize: 20.h,
          fontWeight: FontWeight.w500,
          fontFamily: family,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: timerStart != null && timerStart!.isActive
                  ? RippleAnimation(time: minutesConvertMain(secondsStart))
                  : CenterWidget(time: minutesConvertMain(secondsStart)),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(
                  children: [
                    MinWidget(
                      isSeleted: time == 1,
                      time: 1,
                      onTap: () {
                        setState(() {
                          time = 1;
                        });
                      },
                    ),
                    SizedBox(width: 10.w),
                    MinWidget(
                      isSeleted: time == 2,
                      time: 2,
                      onTap: () {
                        setState(() {
                          time = 2;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    MinWidget(
                      isSeleted: time == 3,
                      time: 3,
                      onTap: () {
                        setState(() {
                          time = 3;
                        });
                      },
                    ),
                    SizedBox(width: 10.w),
                    MinWidget(
                      isSeleted: time == 4,
                      time: 4,
                      onTap: () {
                        setState(() {
                          time = 4;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                MinWidget(
                  isExpanded: false,
                  isSeleted: time == 5,
                  time: 5,
                  onTap: () {
                    setState(() {
                      time = 5;
                    });
                  },
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: () {
                    if (timerStart != null && timerStart!.isActive) {
                      timerStart!.cancel();
                      setState(() {});
                    } else {
                      startTimerStart();
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                      border: Border.all(
                        color: const Color(0xff202020),
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          timerStart != null && timerStart!.isActive
                              ? 'Stop'
                              : 'Start',
                          style: TextStyle(
                            fontSize: 16.h,
                            fontWeight: FontWeight.w600,
                            fontFamily: family,
                            color: const Color(0xffE80000),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Image.asset(
                          timerStart != null && timerStart!.isActive
                              ? 'assets/images/stop_icon.png'
                              : 'assets/images/play_icon.png',
                          height: 24.h,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MinWidget extends StatelessWidget {
  const MinWidget({
    super.key,
    required this.isSeleted,
    required this.time,
    required this.onTap,
    this.isExpanded = true,
  });

  final bool isSeleted;
  final int time;
  final Function() onTap;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return isExpanded
        ? Expanded(
            child: InkWell(
              onTap: onTap,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: isSeleted ? const Color(0xffE80000) : Colors.black,
                  border: isSeleted
                      ? null
                      : Border.all(
                          color: const Color(0xff202020),
                          width: 2,
                        ),
                ),
                child: Text(
                  '$time min.',
                  style: TextStyle(
                    fontSize: 16.h,
                    fontWeight: FontWeight.w600,
                    fontFamily: family,
                    color: isSeleted ? Colors.black : const Color(0xffE80000),
                  ),
                ),
              ),
            ),
          )
        : InkWell(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isSeleted ? const Color(0xffE80000) : Colors.black,
                border: isSeleted
                    ? null
                    : Border.all(
                        color: const Color(0xff202020),
                        width: 2,
                      ),
              ),
              child: Text(
                '$time min.',
                style: TextStyle(
                  fontSize: 16.h,
                  fontWeight: FontWeight.w600,
                  fontFamily: family,
                  color: isSeleted ? Colors.black : const Color(0xffE80000),
                ),
              ),
            ),
          );
  }
}

class RippleAnimation extends StatefulWidget {
  const RippleAnimation({super.key, required this.time});
  final String time;

  @override
  _RippleAnimationState createState() => _RippleAnimationState();
}

class _RippleAnimationState extends State<RippleAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool isinhale = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    _animation = Tween<double>(begin: 1, end: 2).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          isinhale = false;
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          isinhale = true;
          _controller.forward();
        }
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          for (int i = 0; i < 3; i++)
            Transform.scale(
              scale: _animation.value - (0.2 * i),
              child: Container(
                width: 170.h,
                height: 170.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF222222).withOpacity(0.5 - (0.1 * i)),
                ),
              ),
            ),
          CenterWidget(isinhale: isinhale, time: widget.time),
        ],
      ),
    );
  }
}

class CenterWidget extends StatelessWidget {
  const CenterWidget({
    super.key,
    this.isinhale = true,
    this.time,
  });

  final bool isinhale;
  final String? time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF111111),
      ),
      child: CircularPercentIndicator(
        radius: 70,
        lineWidth: 2,
        percent: 1.0,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isinhale ? 'inhale' : 'exhale',
              style: TextStyle(
                fontSize: 30.h,
                fontWeight: FontWeight.w500,
                fontFamily: family,
                color: Colors.white,
              ),
            ),
            Text(
              time ?? '00:00:00',
              style: TextStyle(
                fontSize: 16.h,
                fontWeight: FontWeight.w600,
                fontFamily: family,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ],
        ),
        progressColor: const Color(0xffE80000),
      ),
    );
  }
}
