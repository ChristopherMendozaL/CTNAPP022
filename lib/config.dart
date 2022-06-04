import 'package:flutter/material.dart';
import 'config_tema.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'icon_widget.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({Key? key}) : super(key: key);
  static const KeyDarkMode = 'key-dark-mode';
  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            SettingsGroup(
                title: 'General',
                children: <Widget>[buildDarkMode(), buildEspecialidad()]),
          ],
        ),
      ));
}

const keyDarkMode = 'key-dark-mode';
Widget buildDarkMode() => SwitchSettingsTile(
      settingKey: keyDarkMode,
      leading: const IconWidget(
        icon: Icons.dark_mode,
        color: Color(0xFF642ef3),
      ),
      title: 'Modo Oscuro',
      onChange: (_) {},
    );

Widget buildEspecialidad() => SimpleSettingsTile(
      leading: const IconWidget(icon: Icons.question_mark, color: Colors.grey),
      title: 'Especialidad',
      subtitle: 'Informática, Química, Mecánica...',
      child: Container(),
      onTap: () {/*Noop*/},
    );


// Center(
//         child: ElevatedButton(
//           child: const Text('Especialidad'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const SecondRoute()),
//             );
//           },
//         ),
//       )
