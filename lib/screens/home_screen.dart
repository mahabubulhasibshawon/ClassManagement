import 'package:flutter/material.dart';
import 'package:layout/component/header_component.dart';
import 'package:layout/component/schedule_component.dart';
import '../component/course_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HeaderComponent(),
          CourseComponent(),
          ScheduleComponent()
        ],
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: ''),
          NavigationDestination(icon: Icon(Icons.group), label: ''),
          NavigationDestination(icon: Icon(Icons.person), label: ''),
          NavigationDestination(icon: Icon(Icons.search), label: ''),
        ],
      ),
    );
  }
}
