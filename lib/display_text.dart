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
        // height: 200,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(25),
         color: Colors.red,

       ),
        child: Center(
          child: Text(
            appDataText.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
