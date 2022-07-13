// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clasespecialidad.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClaseEspecialidadAdapter extends TypeAdapter<ClaseEspecialidad> {
  @override
  final int typeId = 1;

  @override
  ClaseEspecialidad read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaseEspecialidad(
      especialidad: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ClaseEspecialidad obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.especialidad);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClaseEspecialidadAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
