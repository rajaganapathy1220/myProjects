import 'package:flutter/material.dart';
import 'package:flutterapps/app_data_text.dart';
import 'package:flutterapps/display_text.dart';

class PageViewText extends StatefulWidget {
  const PageViewText({super.key});

  @override
  State<PageViewText> createState() => _State();
}

class _State extends State<PageViewText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Sudeep Nagarkar',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            child: PageView.builder(
              itemCount: appDataText.length,
              itemBuilder: (context, index) {
                return DisplayText(appDataText: appDataText[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
