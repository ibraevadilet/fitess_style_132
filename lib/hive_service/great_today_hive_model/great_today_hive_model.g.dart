// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'great_today_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GreatTodayHiveModelAdapter extends TypeAdapter<GreatTodayHiveModel> {
  @override
  final int typeId = 2;

  @override
  GreatTodayHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GreatTodayHiveModel(
      eco: fields[0] as String?,
      emotion: fields[1] as String?,
      mindful: fields[2] as String?,
      dateTime: fields[3] as String,
      isShow: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, GreatTodayHiveModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.eco)
      ..writeByte(1)
      ..write(obj.emotion)
      ..writeByte(2)
      ..write(obj.mindful)
      ..writeByte(3)
      ..write(obj.dateTime)
      ..writeByte(4)
      ..write(obj.isShow);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GreatTodayHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
