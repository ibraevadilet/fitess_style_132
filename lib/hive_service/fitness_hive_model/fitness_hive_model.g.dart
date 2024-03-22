// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fitness_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FitnessHiveModelAdapter extends TypeAdapter<FitnessHiveModel> {
  @override
  final int typeId = 1;

  @override
  FitnessHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FitnessHiveModel(
      title: fields[0] as String,
      description: fields[1] as String,
      time: fields[2] as double,
      calories: fields[3] as int,
      dateSaved: fields[4] as DateTime?,
      type: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FitnessHiveModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.calories)
      ..writeByte(4)
      ..write(obj.dateSaved)
      ..writeByte(5)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FitnessHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
