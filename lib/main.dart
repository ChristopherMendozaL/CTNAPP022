// ignore_for_file: avoid_print
//Contribuidor adán 
import 'package:ctnapp/screens/util/theme_provider.dart';
import 'package:ctnapp/ui/buttom_nav_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box box;
Future<void> main() async {
  await Settings.init(cacheProvider: SharePreferenceCache());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final fcmToken = await FirebaseMessaging.instance.getToken();
  print(fcmToken);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'CTN app';

  @override
  Widget build(BuildContext context) {
    return ValueChangeObserver<bool>(
      cacheKey: ConfigPage.KeyDarkMode,
      defaultValue: true,
      builder: (_, isDarkMode, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        showPerformanceOverlay: false,
        title: MyApp._title,
        theme: isDarkMode
        ? ThemeData.dark().copyWith(
            primaryColor: Colors.teal,
            scaffoldBackgroundColor: const Color(0xFF170635),
            canvasColor: const Color(0xFF170635),
            )
        : ThemeData.light().copyWith(
            primaryColor: Colors.teal,
          ),
          home: const ButtomNavBar(),
      )
      );
  }
}
