import 'package:ck_linecode/heatmap_calendar/konst.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildCellDate(DateTime day, {DateTime? focusedDay}) {
    return Container(
      margin: const EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: (day == focusedDay) ? BoxShape.circle : BoxShape.rectangle,
        // color: bgclr, // you custom color here
        borderRadius: (day == focusedDay) ? null : BorderRadius.circular(4),
      ),
      child: Text(
        day.day.toString(),
        // style: TextStyle(color: _getTxtColor(bgclr)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heatmap Calendar'),
      ),
      body: Center(
        child: TableCalendar<Event>(
          firstDay: kFirstDay,
          lastDay: kLastDay,
          focusedDay: kToday,

          calendarBuilders: CalendarBuilders(
            selectedBuilder: (context, day, focusedDay) =>
                _buildCellDate(day, focusedDay: focusedDay),
            defaultBuilder: (context, day, focusedDay) => _buildCellDate(day),
            todayBuilder: (context, day, focusedDay) => _buildCellDate(day),
          ),
          // eventLoader: (day) => kEvents[day],
        ),
      ),
    );
  }
}
