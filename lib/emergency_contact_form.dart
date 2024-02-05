import 'package:flutter/material.dart';

class EmergencyContactForm extends StatefulWidget {
  final String labelName;
  const EmergencyContactForm({super.key, required this.labelName});

  @override
  State<EmergencyContactForm> createState() => _EmergencyContactFormState();
}

class _EmergencyContactFormState extends State<EmergencyContactForm> {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        controller: textEditingController,
        keyboardType: const TextInputType.numberWithOptions(),
        decoration: InputDecoration(labelText: widget.labelName),
      ),
    );
  }
}
