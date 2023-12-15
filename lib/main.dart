import 'package:flutter/material.dart';
import 'package:flutterapps/company_profile.dart';
import 'package:flutterapps/drawer_navigation.dart';
import 'package:flutterapps/my_profile.dart';
import 'package:flutterapps/page_view_image.dart';
import 'package:flutterapps/page_view_text.dart';
import 'package:flutterapps/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyProfile(),
    );
  }
}


