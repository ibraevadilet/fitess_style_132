import 'package:hive_flutter/hive_flutter.dart';

part 'fitness_hive_model.g.dart';

@HiveType(typeId: 1)
class FitnessHiveModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final double time;
  @HiveField(3)
  final int calories;
  @HiveField(4)
  DateTime? dateSaved;
  @HiveField(5)
  final String type;

  FitnessHiveModel({
    required this.title,
    required this.description,
    required this.time,
    required this.calories,
    this.dateSaved,
    required this.type,
  });
}
