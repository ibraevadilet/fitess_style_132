import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/pagesss/buy_screen.dart';
import 'package:fitess_style_132/services/web_view_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isPrem = false;

  @override
  void initState() {
    isPrem = prefs.getBool('ispremmmsd') ?? false;
    super.initState();
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
        title: const Text('Settings'),
        titleTextStyle: TextStyle(
          fontSize: 20.h,
          fontWeight: FontWeight.w500,
          fontFamily: family,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            if (!isPrem) SizedBox(height: 12.h),
            if (!isPrem)
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const BuyScreen(isClose: true),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/prem_button.png',
                ),
              ),
            SetWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebStyle(
                      url:
                          'https://docs.google.com/document/d/13xjm0lO7dnYWHo2lyFSJA6MP6tKQLKVQO75-F9putk8/edit?usp=sharing',
                      title: 'Privacy Policy',
                    ),
                  ),
                );
              },
              icon: 'assets/images/set1.png',
              title: 'Privacy Policy',
            ),
            SetWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebStyle(
                      url:
                          'https://docs.google.com/document/d/1IrSwgj1U_g5xH0hgZiTh5LyXmTTbf701SjdkoM3Vu8M/edit?usp=sharing',
                      title: 'Terms of use',
                    ),
                  ),
                );
              },
              icon: 'assets/images/set2.png',
              title: 'Terms of Use',
            ),
            SetWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebStyle(
                      url: 'https://forms.gle/9L6kSU6cEqbfK4CT7',
                      title: 'Support',
                    ),
                  ),
                );
              },
              icon: 'assets/images/set3.png',
              title: 'Support',
            ),
            SetWidget(
              onTap: () {
                Share.share(
                  'https://apps.apple.com/us/app/dailyfit-positive-styles/id6482979821',
                );
              },
              icon: 'assets/images/set4.png',
              title: 'Share App',
            ),
          ],
        ),
      ),
    );
  }
}

class SetWidget extends StatelessWidget {
  const SetWidget({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
  });

  final Function() onTap;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xff202020),
              width: 2,
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                icon,
                height: 23.h,
                color: const Color(0xff2E70F0),
              ),
              SizedBox(width: 11.w),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.h,
                  fontWeight: FontWeight.w600,
                  fontFamily: family,
                  color: const Color(0xff2E70F0),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color(0xff2E70F0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
