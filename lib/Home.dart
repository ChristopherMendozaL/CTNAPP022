import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'calendario.dart';
import 'package:excel/excel.dart';
import 'dart:io';
import 'package:path/path.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: const Calendar(),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            readExcelFile('sheets/test.xlsx');
          },
          label: const Text('Sacar Materia'),
          icon: const Icon(Icons.access_alarms_sharp),
        ),
      );
}

Future<void> readExcelFile(String fileName) async {
  ByteData data = await rootBundle.load("sheets/test.xlsx");
  var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  var excel = Excel.decodeBytes(
    bytes,
  );

//Pone datos de columnas y filas en la consola, hacer que los guarde
  for (var table in excel.tables.keys) {
    print(table);
    print(excel.tables[table]!.maxCols);
    print(excel.tables[table]!.maxRows);
    for (var row in excel.tables[table]!.rows) {
      print("$row");
    }
  }
}
