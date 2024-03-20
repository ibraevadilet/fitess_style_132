import 'package:fitess_style_132/pagesss/logo_screen.dart';
import 'package:fitess_style_132/services/notification_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final SharedPreferences prefs;
const String family = 'Pridi';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await initializeDateFormatting();
  await NotificationService().init();
  prefs = await SharedPreferences.getInstance();
  runApp(const FitnessStyleApp());
}

class FitnessStyleApp extends StatelessWidget {
  const FitnessStyleApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Daily Positive fitness style',
        theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            shadowColor: Colors.black,
          ),
          scaffoldBackgroundColor: Colors.black,
          splashColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
        ),
        home: const LogoScreen(),
      ),
    );
  }
}
