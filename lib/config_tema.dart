import 'package:ctnapp/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

void main() {
  const SecondRoute();
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);
  static const keyEspecialidad = 'key-especialidad';

  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
        title: 'Especialidad',
        subtitle: 'Química, Infomática, Electromecánica',
        leading:
            const IconWidget(icon: Icons.question_mark, color: Colors.green),
        child: SettingsScreen(
            title: 'Especialidad', children: <Widget>[buildEspecialidad()]),
      );
}

const keyEspecialidad = 'key-especialidad';

Widget buildEspecialidad() {
  return DropDownSettingsTile(
      settingKey: keyEspecialidad,
      title: "Selecciona tu especialidad",
      selected: 1,
      values: const <int, String>{
        1: 'No especialidad',
        2: 'Química Industrial',
        3: 'Informática',
        4: 'Construcciones',
      },
      onChange: (especialidad) async {
        debugPrint('key-especialidad: $especialidad');
        String espe2 = 'key-especialidad: $especialidad';
        debugPrint(espe2);
      });
}
