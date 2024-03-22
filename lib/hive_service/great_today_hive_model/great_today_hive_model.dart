import 'package:hive_flutter/hive_flutter.dart';

part 'great_today_hive_model.g.dart';

@HiveType(typeId: 2)
class GreatTodayHiveModel extends HiveObject {
  @HiveField(0)
  String? eco;
  @HiveField(1)
  String? emotion;
  @HiveField(2)
  String? mindful;
  @HiveField(3)
  final String dateTime;
  @HiveField(4)
  bool isShow;

  GreatTodayHiveModel({
    this.eco,
    this.emotion,
    this.mindful,
    required this.dateTime,
    this.isShow = false,
  });
}
