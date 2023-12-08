import 'package:flutter/material.dart';
import 'package:flutterapps/app_data_text.dart';

class DisplayText extends StatelessWidget {
  final AppDataText appDataText;
  const DisplayText({super.key, required this.appDataText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        color: Colors.redAccent,
        child: Center(
          child: Text(
            appDataText.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}