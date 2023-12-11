import 'package:flutter/material.dart';
import 'package:flutterapps/app_data_image.dart';
import 'package:flutterapps/display_image.dart';
import 'package:flutterapps/drawer_navigation.dart';

class PageViewImage extends StatefulWidget {
  const PageViewImage({super.key});

  @override
  State<PageViewImage> createState() => _PageViewImageState();
}

class _PageViewImageState extends State<PageViewImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(
          color: Colors.white70,
        ),
        title: const Text(
          'Warren Buffet Qoutes',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            child: PageView.builder(
              itemCount: appDataImage.length,
              itemBuilder: (context, index) {
                return DisplayImage(appDataImage: appDataImage[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
