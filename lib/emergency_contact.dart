import 'package:flutter/material.dart';
import 'package:main_project/emergency_contact_form.dart';

class EmergencyContact extends StatefulWidget {
  const EmergencyContact({super.key});

  @override
  State<EmergencyContact> createState() => _EmergencyContactState();
}

class _EmergencyContactState extends State<EmergencyContact> {
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
          'Emergency Contacts',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            EmergencyContactForm(labelName: 'Hospital'),
            EmergencyContactForm(labelName: 'Police Station'),
            EmergencyContactForm(labelName: 'Emergency Contact 1'),
            EmergencyContactForm(labelName: 'Emergency Contact 2'),
            EmergencyContactForm(labelName: 'Emergency Contact 3')
          ],
        ),
      ),
    );
  }
}
