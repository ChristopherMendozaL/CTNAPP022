// ignore_for_file: avoid_print

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:excel/excel.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class calendario extends StatelessWidget {
  const calendario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
        ),
        body: SfCalendar(
          firstDayOfWeek: 1,
          dataSource: MeetingDataSource(_getDataSource()),
        ));
  }
}

Future readExcelFile(String fileName) async {
  ByteData data = await rootBundle.load("assets/test.xlsx");
  var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  var excel = Excel.decodeBytes(
    bytes,
  );

  for (var table in excel.tables.keys) {
    print(table);

    print(excel.tables[table]!.maxRows);
    print(excel.tables[table]!.maxCols);
    for (var row in excel.tables[table]!.rows) {
      print("$row");
    }
    var sheet = excel[table];
    var cell = sheet.cell(CellIndex.indexByString("B3".toString()));
    print(cell.value);
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getMeetingData(index).from;
  }

  @override
  DateTime getEndTime(int index) {
    return _getMeetingData(index).to;
  }

  @override
  String getSubject(int index) {
    return _getMeetingData(index).eventName;
  }

  @override
  Color getColor(int index) {
    return _getMeetingData(index).background;
  }

  @override
  bool isAllDay(int index) {
    return _getMeetingData(index).isAllDay;
  }

  Meeting _getMeetingData(int index) {
    final dynamic meeting = appointments![index];
    late final Meeting meetingData;
    if (meeting is Meeting) {
      meetingData = meeting;
    }

    return meetingData;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);
  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, today.day, 8);
  final DateTime endTime = startTime.add(const Duration(hours: 2));
  meetings.add(
      Meeting('MATEE', startTime, endTime, const Color(0xFF0F8644), false));

  return meetings;
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: const calendario(),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            readExcelFile('assets/test.xlsx');
          },
          label: const Text('Sacar Materia'),
          icon: const Icon(Icons.access_alarms_sharp),
        ),
      );
}
