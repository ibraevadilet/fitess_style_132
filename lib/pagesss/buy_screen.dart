import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/pagesss/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyScreen extends StatelessWidget {
  const BuyScreen({super.key, this.isClose = false});
  final bool isClose;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            if (isClose) {
              Navigator.pop(context);
            } else {
              Navigator.pushAndRemoveUntil(
                context,
                CupertinoPageRoute(
                  builder: (context) => const MainScreen(),
                ),
                (route) => false,
              );
            }
          },
          child: const Icon(
            Icons.close_rounded,
            size: 33,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Text(
              'Restore purchases',
              style: TextStyle(
                fontSize: 14.h,
                fontWeight: FontWeight.w400,
                fontFamily: family,
              ),
            ),
          ),
          SizedBox(width: 22.w),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(width: double.infinity),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 56),
                child: Image.asset(
                  'assets/images/prem_image.png',
                ),
              ),
            ),
            Text(
              'Get Premium',
              style: TextStyle(
                fontSize: 30.h,
                fontWeight: FontWeight.w700,
                fontFamily: family,
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: const Color(0xff202020),
                  width: 2,
                ),
              ),
              child: FittedBox(
                child: Text(
                  'Unlock “Mindful Breathing Integration”',
                  style: TextStyle(
                    fontSize: 16.h,
                    fontWeight: FontWeight.w700,
                    fontFamily: family,
                    color: const Color(0xff505050),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: const Color(0xff202020),
                  width: 2,
                ),
              ),
              child: Text(
                'Unlock Gallery Photo',
                style: TextStyle(
                  fontSize: 16.h,
                  fontWeight: FontWeight.w700,
                  fontFamily: family,
                  color: const Color(0xff505050),
                ),
              ),
            ),
            SizedBox(height: 33.h),
            InkWell(
              onTap: () async {
                await prefs.setBool('ispremmmsd', true);
                Navigator.pushAndRemoveUntil(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const MainScreen(),
                  ),
                  (route) => false,
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 33, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xff202020),
                    width: 2,
                  ),
                ),
                child: Text(
                  'Buy Premium \$0.99',
                  style: TextStyle(
                    fontSize: 16.h,
                    fontWeight: FontWeight.w600,
                    fontFamily: family,
                    color: const Color(0xffE80000),
                  ),
                ),
              ),
            ),
            SizedBox(height: 23.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 16.h,
                    fontWeight: FontWeight.w600,
                    fontFamily: family,
                  ),
                ),
                SizedBox(width: 22.w),
                Text(
                  'Terms of Use',
                  style: TextStyle(
                    fontSize: 16.h,
                    fontWeight: FontWeight.w600,
                    fontFamily: family,
                  ),
                ),
              ],
            ),
            SizedBox(height: 23.h),
          ],
        ),
      ),
    );
  }
}
