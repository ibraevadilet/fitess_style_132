import 'package:fitess_style_132/hive_service/fitness_hive_model/fitness_hive_model.dart';
import 'package:fitess_style_132/hive_service/great_today_hive_model/great_today_hive_model.dart';
import 'package:fitess_style_132/hive_service/type_fitness.dart';
import 'package:fitess_style_132/pagesss/logo_screen.dart';
import 'package:fitess_style_132/services/notification_handler.dart';
import 'package:fitess_style_132/workouts_pages/eco_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final SharedPreferences prefs;
const String family = 'Pridi';
late final Box<FitnessHiveModel> fitHive;
late final Box<GreatTodayHiveModel> grHive;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Hive.initFlutter();
  Hive.registerAdapter(FitnessHiveModelAdapter());
  Hive.registerAdapter(GreatTodayHiveModelAdapter());
  fitHive = await Hive.openBox<FitnessHiveModel>('fitHive');
  grHive = await Hive.openBox<GreatTodayHiveModel>('grHive');
  await initializeDateFormatting();
  await NotificationService().init();
  prefs = await SharedPreferences.getInstance();

  if (fitHive.isEmpty) {
    for (var e in listPositive) {
      fitHive.add(
        FitnessHiveModel(
          type: FitnessType.pos,
          title: e.title,
          description: e.description,
          time: e.time,
          calories: e.calories,
        ),
      );
    }
    for (var e in listNeutral) {
      fitHive.add(
        FitnessHiveModel(
          type: FitnessType.neut,
          title: e.title,
          description: e.description,
          time: e.time,
          calories: e.calories,
        ),
      );
    }

    for (var e in listBad) {
      fitHive.add(
        FitnessHiveModel(
          type: FitnessType.bad,
          title: e.title,
          description: e.description,
          time: e.time,
          calories: e.calories,
        ),
      );
    }

    for (var e in listEco) {
      fitHive.add(
        FitnessHiveModel(
          type: FitnessType.eco,
          title: e.title,
          description: e.description,
          time: e.time,
          calories: e.calories,
        ),
      );
    }
  }

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
