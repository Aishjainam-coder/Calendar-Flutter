import 'package:flutter/material.dart';
import 'package:table_calendar_null_safe/table_calendar_null_safe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calendar(),
    );
  }
}

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _controller = CalendarController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calendar"),
      ),
      body: Column(
        children: [
          TableCalendar(
            initialCalendarFormat: CalendarFormat.month,
            calendarController: _controller,
            calendarStyle: const CalendarStyle(
              todayStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              todayColor: Colors.blueAccent,
              selectedColor: Colors.green,
            ),
            headerStyle: HeaderStyle(
              centerHeaderTitle: true,
              formatButtonDecoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(8.0),
              ),
              formatButtonTextStyle: const TextStyle(color: Colors.white),
              formatButtonShowsNext: false,
            ),
          ),
        ],
      ),
    );
  }
}
