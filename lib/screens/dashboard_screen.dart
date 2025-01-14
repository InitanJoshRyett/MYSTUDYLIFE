import 'package:flutter/material.dart';
import 'study_timer_screen.dart';
import 'task_manager_screen.dart';
import 'class_schedule_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudyTimerScreen()),
                );
              },
              child: Text('Study Timer'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TaskManagerScreen()),
                );
              },
              child: Text('Task Manager'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClassScheduleScreen()),
                );
              },
              child: Text('Class Schedule Maker'),
            ),
          ],
        ),
      ),
    );
  }
}
