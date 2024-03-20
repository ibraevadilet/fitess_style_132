import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/pagesss/app_info_page.dart';
import 'package:fitess_style_132/pagesss/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    initLogoScreen();
    super.initState();
  }

  initLogoScreen() async {
    await Future.delayed(const Duration(milliseconds: 1450));
    final isFirst = prefs.getBool('asfafas') ?? false;
    if (!isFirst) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AppInfoPage(),
        ),
      );
      await Future.delayed(const Duration(seconds: 8));
    } else {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(
          builder: (context) => const MainScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
