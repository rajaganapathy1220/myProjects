import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterapps/page_view_text.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => PageViewText())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                  child: LoadingAnimationWidget.staggeredDotsWave(
              size: 40, color: Colors.black87
                ),
            )
          ],

        ),

    );
  }
}
