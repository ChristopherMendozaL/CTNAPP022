import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  //Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  // void initState() {
  //   selectedEvents = {};
  //   super.initState();
  // }

  // List<Event> _getEventsfromDay(DateTime date) {
  //   return selectedEvents[date] ?? [];
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TableCalendar(
        focusedDay: selectedDay,
        firstDay: DateTime(2020),
        lastDay: DateTime(2050),
        calendarFormat: format,
        onFormatChanged: (CalendarFormat _format) {
          setState(() {
            format = _format;
          });
        },
        //Cual es el dia de semana que empieza
        startingDayOfWeek: StartingDayOfWeek.monday,

        //Cambiador de dia y pone en la consola a que dia se cambia
        onDaySelected: (DateTime selectDay, DateTime focusDay) {
          setState(() {
            selectedDay = selectDay;
            focusedDay = focusDay;
          });
          // ignore: avoid_print
          print(focusedDay);
        },
        selectedDayPredicate: (DateTime date) {
          return isSameDay(selectedDay, date);
        },

        // eventLoader: _getEventsfromDay,

        //Estilo de dias
        calendarStyle: const CalendarStyle(
          isTodayHighlighted: true,
          selectedDecoration:
              BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
        ),
        //Para cambiar Headings del calendario
        headerStyle:
            const HeaderStyle(formatButtonVisible: false, titleCentered: true),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Añadir evento'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
