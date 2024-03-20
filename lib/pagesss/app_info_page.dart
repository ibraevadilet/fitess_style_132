import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/pagesss/buy_screen.dart';
import 'package:fitess_style_132/services/notification_handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:in_app_review/in_app_review.dart';

class AppInfoPage extends StatefulWidget {
  const AppInfoPage({super.key});

  @override
  State<AppInfoPage> createState() => _AppInfoPageState();
}

class _AppInfoPageState extends State<AppInfoPage> {
  int caurrPgae = 0;
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    caurrPgae = value;
                  });
                },
                children: [
                  Image.asset(
                    'assets/images/pv1.png',
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      'assets/images/pv2.png',
                      alignment: Alignment.bottomCenter,
                      // fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Image.asset(
                      'assets/images/pv3.png',
                      fit: BoxFit.fill,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Image.asset(
                      'assets/images/pv4.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Image.asset(
                      'assets/images/pv5.png',
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            InkWell(
              onTap: () async {
                if (caurrPgae == 1) {
                  await NotificationService().requestIOSPermissions();
                  controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                } else if (caurrPgae == 3) {
                  final InAppReview inAppReview = InAppReview.instance;
                  final isav = await inAppReview.isAvailable();
                  if (isav) {
                    await inAppReview.requestReview();
                  }
                  await Future.delayed(const Duration(seconds: 1));
                  controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                } else if (caurrPgae == 4) {
                  await prefs.setBool('asfafas', true);
                  Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const BuyScreen(),
                    ),
                    (route) => false,
                  );
                } else {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                }
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 33),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xff202020),
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      caurrPgae == 1
                          ? 'Enable'
                          : caurrPgae == 3
                              ? 'Write a review'
                              : 'Continue',
                      style: TextStyle(
                        fontSize: 18.h,
                        fontWeight: FontWeight.w600,
                        fontFamily: family,
                        color: const Color(0xffE80000),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xffE80000),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}
