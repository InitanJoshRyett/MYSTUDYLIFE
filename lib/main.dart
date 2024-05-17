import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_study_life/screens/welcome_screen.dart';
import 'package:my_study_life/screens/login_screen.dart';
import 'package:my_study_life/screens/dashboard_screen.dart';
import 'package:my_study_life/screens/class_schedule_screen.dart';
import 'package:my_study_life/screens/study_timer_screen.dart';
import 'package:my_study_life/screens/task_manager_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Study Life',
      theme: ThemeData(
        primaryColor: Colors.blue, // Set accent color
        scaffoldBackgroundColor: Colors.white, // Set scaffold background color
        visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent),
      ),
      initialRoute: '/welcome', // Specify the initial route
      routes: {
        '/welcome': (context) => WelcomeScreen(), // Welcome screen route
        '/login': (context) => LoginScreen(), // Login screen route
        '/dashboard': (context) => DashboardScreen(), // Dashboard screen route
        '/class_schedule': (context) => ClassScheduleScreen(), // Class Schedule screen route
        '/study_timer': (context) => StudyTimerScreen(), // Study Timer screen route
        '/task_manager': (context) => TaskManagerScreen(), // Task Manager screen route
        // Add more routes for other screens if needed
      },
    );
  }
}
