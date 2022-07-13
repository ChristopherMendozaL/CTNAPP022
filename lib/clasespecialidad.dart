import 'package:hive/hive.dart';

part 'clasespecialidad.g.dart';

@HiveType(typeId: 1)
class ClaseEspecialidad {
  ClaseEspecialidad({
    required this.especialidad,
  });
  @HiveField(0)
  String especialidad;
}
