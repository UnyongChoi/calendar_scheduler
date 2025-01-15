import 'package:calendar_scheduler/component/main_calendar.dart';
import 'package:flutter/material.dart';
import 'package:calendar_scheduler/component/schedule_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selecteDate = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          MainCalendar(
            selectedDate: selecteDate,
            onDaySelected: onDaySelected,
          ),
          ScheduleCard(
            startTime: 12,
            endTime: 14,
            content: '프로그래밍 공부',
          ),
        ],
      )),
    );
  }

  void onDaySelected(DateTime selectedDate, DateTime focusedDate) {
    setState(() {
      this.selecteDate = selectedDate;
    });
  }
}
