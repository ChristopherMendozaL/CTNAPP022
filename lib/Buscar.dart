import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body:
            const Center(child: Text('Buscar', style: TextStyle(fontSize: 60))),
      );
}
