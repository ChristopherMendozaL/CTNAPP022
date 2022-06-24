// @dart=2.9
import 'package:ctnapp/config.dart';
import 'package:ctnapp/Buscar.dart';
import 'package:ctnapp/Home.dart';
import 'package:ctnapp/config_tema.dart';

import 'package:ctnapp/maps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  await Settings.init(cacheProvider: SharePreferenceCache());
  runApp(const MyApp());
}

final controller = PageController(
  initialPage: 1,
);

final pageView = PageView(
  controller: controller,
  children: const [
    Home(),
    MapsPage(),
    Search(),
    ConfigPage(),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return ValueChangeObserver<bool>(
        cacheKey: ConfigPage.KeyDarkMode,
        defaultValue: true,
        builder: (_, isDarkMode, __) => MaterialApp(
              showPerformanceOverlay: false,
              title: _title,
              theme: isDarkMode
                  ? ThemeData.dark().copyWith(
                      primaryColor: Colors.teal,
                      scaffoldBackgroundColor: const Color(0xFF170635),
                      canvasColor: const Color(0xFF170635),
                    )
                  : ThemeData.light().copyWith(
                      primaryColor: Colors.teal,
                    ),
              home: const PagPrin(),
            ));
  }
}

Widget build(BuildContext context) {
  return ValueChangeObserver<Map<int, String>>(
      cacheKey: SecondRoute.keyEspecialidad);
}

const String espe = keyEspecialidad;

class PagPrin extends StatefulWidget {
  const PagPrin({Key key}) : super(key: key);

  @override
  State<PagPrin> createState() => _PagPrinState();
}

class _PagPrinState extends State<PagPrin> {
  int currentIndex = 0;
  final screens = [
    const Home(),
    const MapsPage(),
    const Search(),
    const ConfigPage(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Mapas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configuración',
            ),
          ],
        ),
      );
}
