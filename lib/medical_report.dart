import 'package:flutter/material.dart';

class MedicalReport extends StatefulWidget {
  const MedicalReport({super.key});

  @override
  State<MedicalReport> createState() => _MedicalReportState();
}

class _MedicalReportState extends State<MedicalReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        title: const Text(
          'Medical Reports',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
    );
  }
}
