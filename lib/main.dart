import 'package:flutter/material.dart';
import 'package:main_project/home_page.dart';
import 'package:main_project/emergency_contact.dart';
import 'package:main_project/medical_report.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexVal = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Bike App',
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            index: indexVal,
            color: Colors.deepPurple.shade300,
            backgroundColor: Colors.deepPurple,
            animationDuration: const Duration(milliseconds: 500),
            onTap: (selIndex) {
              setState(() {
                indexVal = selIndex;
              });
            },
            items: const [
              Icon(Icons.pedal_bike_outlined),
              Icon(Icons.call),
              Icon(Icons.local_hospital_rounded)
            ]),
        body: Container(
          decoration: const BoxDecoration(border: null),
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          child: getCurrentWidget(index: indexVal),
        ),
      ),
    );
  }
}

Widget getCurrentWidget({required int index}) {
  Widget widget;
  if (index == 0) {
    widget = const HomePage();
  } else if (index == 1) {
    widget = const EmergencyContact();
  } else {
    widget = const MedicalReport();
  }
  return widget;
}
