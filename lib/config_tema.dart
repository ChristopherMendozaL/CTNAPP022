import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ctnapp/theme_manager';

void main() {
  //PARA LO DE CAMBIAR SPECIALIDAD, AUN NO FUNCA
  // runApp(ChangeNotifierProvider<ThemeNotifier>(
  //     create: (_) => new ThemeNotifier()));
  const SecondRoute();
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccionar Especialidad'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: Wrap(
        children: <Widget>[
          ElevatedButton.icon(
              label: const Text('Informatica'),
              icon: const Icon(Icons.terminal),
              onPressed: () => {}),
          ElevatedButton.icon(
              label: const Text('Quimica'),
              icon: const Icon(Icons.biotech),
              onPressed: () => {}),
          ElevatedButton.icon(
              label: const Text('Electricidad'),
              icon: const Icon(Icons.flash_on),
              onPressed: () => {}),
          ElevatedButton.icon(
              label: const Text('Mecanica'),
              icon: const Icon(Icons.question_mark),
              onPressed: () => {}),
        ],
      ),
    );
  }
}
